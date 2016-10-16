# 一切都是表达式 (至少尽可能成为)
# 读者大概有注意到上面的代码 CoffeeScript 函数是不需要写 return 语句的, 但是也会返回最终的结果. CoffeeScript 编译器会尽可能保证语言中所有的表达式都可以被当作表达式使用. 观察一下下面的函数, return 是怎样尽可能地插入到执行的分支当中的.
grade = (student) ->
  if student.excellentWork
    "A+"
  else if student.okayStuff
    if student.triedHard then "B" else "B-"
  else
    "C"

eldest = if 24 > 21 then "Liz" else "Ike"


# 尽管函数总是会自动 return 其最终的值, 你可以在函数体前面显式地写上 (return value), 这个做法也是值得借鉴的, 前提是你明确你在做的事情是什么.
six = (one = 1) + (two = 2) + (three = 3)
console.log(six)

# 有些代码在 JavaScript 当中要写不少的语句, 而在 CoffeeScript 中只是表达式的一部分, 这些代码的编译结果会自动生成一个闭包. 这个写法很有用, 比如把列表解析的结果赋值给变量:

globals = (name for name of window)[0...10]
console.log (globals);

# 结果是一些原来明确是语句的东西也可以像, 比如把 try/catch 语句直接传给函数调用:
alert(
  try
    nonexistent / undefined
  catch error
    "And the error is ... #{error}"
)


# 有一些 JavaScript 语句是不能编译到表达式的对应的语义的, 比如 break, continue 和 return. 如果你的代码当中用到了它们, CoffeeScript 是不会尝试去进行转换的.
