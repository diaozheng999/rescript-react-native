// we will use the `.bsbuild` file in `rescript-react-native` to help us with
// generating all the `compat` modules

const fs = require("fs");
const path = require("path");

const { components } = require("./gen_component.js");

function generated(module) {
  return `// generated by scripts/gen_compat_all.js

include ReactNative.${module}
`;
}

const bsbuild = path.resolve(
  __dirname,
  "..",
  "node_modules",
  "rescript-react-native",
  "lib",
  "bs",
  ".bsbuild"
);

if (!fs.existsSync(bsbuild)) {
  console.error(
    ".bsbuild doesn't exist in package `rescript-react-native`. Please run `bsb -make-world` first."
  );
  process.exit(1);
}

console.log("building exclusion list...");

const exclusions = new Set(components);

fs.readdirSync("src/overrides").forEach((key) => {
  if (
    key.endsWith(".ml") ||
    key.endsWith(".mli") ||
    key.endsWith(".re") ||
    key.endsWith(".rei") ||
    key.endsWith(".res") ||
    key.endsWith(".resi")
  ) {
    exclusions.add(key.replace(/\.\w+$/, ""));
  }
});

const [rawLength, ...raw] = fs.readFileSync(bsbuild).toString().split("\n");

const length = parseInt(rawLength);

const buffer = raw.slice(0, length);

for (const mod of buffer) {
  if (exclusions.has(mod)) {
    console.log(`${mod} manually re-written.`);
  } else {
    console.log(`Adding compat to \`${mod}\`...`);
    fs.writeFileSync(
      path.resolve(__dirname, "..", "src", "compat", `${mod}.res`),
      generated(mod)
    );
  }
}
