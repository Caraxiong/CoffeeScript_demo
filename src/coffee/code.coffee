# 嵌入 JavaScript
# 这个写法应该不会被用到, 但如果什么时候需要在 CoffeeScript 中穿插 JavaScript 片段的话, 你可以用反引号直接传进去.
hi = `function() {
  return [document.title, "Hello JavaScript"].join(": ");
}`
