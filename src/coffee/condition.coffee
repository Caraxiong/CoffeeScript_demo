mood = greatlyImproved if singing

if happy and knowsIt
  clapsHands()
  chaChaCha()
else
  showIt()

date = if friday then sue else jill

# if/else 表达式可以不用圆括号和花括号就写出来. 就像函数和其他块级表达式那样, 多行的条件可以通过缩进来表明. 另外还有一个顺手的后缀形式, 在行尾使用 if or unless.

# CoffeeScript 会尝试编译 if 语句到 JavaScript 表达式, 或者一个封装的闭包. CoffeeScript 里不存在直白的三元表达式. — 你只要在一行内使用普通的 if 语句.