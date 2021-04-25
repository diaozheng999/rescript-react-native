const ppxMap = require("./style_ppx_map.json");

function isBsStyle(node) {
  return (
    node.type === "MemberExpression" &&
    node.object.type === "Identifier" &&
    node.object.name === "Style2" &&
    node.property.type === "Identifier"
  );
}

function isBsStyleCompile(node) {
  return isBsStyle(node) && node.property.name === "compile";
}

function isStaticList(arguments) {
  return arguments.length === 1 && arguments[0].type === "ObjectExpression";
}

function isIdent(node, name) {
  if (name) {
    return node.type === "Identifier" && name === node.name;
  }
  return node.type === "Identifier";
}

function isFexp(node, paramLength, { async = false, generator = false } = {}) {
  return (
    node.type === "FunctionExpression" &&
    (paramLength === undefined || node.params.length === paramLength) &&
    node.async === async &&
    node.generator === generator
  );
}

function unescapePPXIdent(node, t) {
  if (node.name in ppxMap) {
    return t.identifier(ppxMap[node.name]);
  }
  return node;
}

function unescapePPXLiteral(node, t) {
  if (node.value in ppxMap) {
    return t.stringLiteral(ppxMap[node.value]);
  }
  return node;
}

function transformLambdaToAssignment(node, types) {
  if (
    !isFexp(node, 1) ||
    !isIdent(node.params[0]) ||
    node.body.body.length !== 1
  ) {
    return;
  }

  const param = node.params[0].name;
  const body = node.body.body[0];

  if (
    body.type !== "ReturnStatement" ||
    body.argument.type !== "CallExpression" ||
    !isBsStyle(body.argument.callee) ||
    body.argument.arguments.length !== 2 ||
    !isIdent(body.argument.arguments[1], param)
  ) {
    return;
  }

  return types.objectProperty(
    unescapePPXIdent(body.argument.callee.property, types),
    unescapePPXLiteral(body.argument.arguments[0], types)
  );
}

function getBsList(node, types) {
  let n = node;

  const props = [];

  while (n.type === "ObjectExpression") {
    for (const prop of n.properties) {
      if (!isIdent(prop.key)) {
        return;
      }

      switch (prop.key.name) {
        case "hd":
          const outcome = transformLambdaToAssignment(prop.value, types);
          if (outcome) {
            props.push(outcome);
          } else {
            return;
          }
          break;
        case "tl":
          n = prop.value;
          break;
        default:
          return;
      }
    }
  }

  return types.objectExpression(props);
}

module.exports = function transform({ types }) {
  return {
    visitor: {
      VariableDeclaration() {},
      CallExpression(path) {
        const callee = path.node.callee;
        if (isBsStyleCompile(callee) && isStaticList(path.node.arguments)) {
          const result = getBsList(path.node.arguments[0], types);
          if (result) {
            path.replaceWith(result);
          }
        }
        return;
      },
    },
  };
};
