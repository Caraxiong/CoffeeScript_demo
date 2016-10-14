# CoffeeScript 编译器会考虑所有变量, 保证每个变量都在词法域里适当地被定义 — 你永远不需要自己去写 var.
outer = -1

changeNums = ->
	inner = 1
	outer = 10

inner = changeNums()


# 1.也就是第一次出现的位置. outer 在内层的函数里没有被重新定义, 因为它已经存在于作用域当中了. 同时, 内层函数里的 inner 不应该改变外部的同名的变量, 所以在这里有自己的声明.
# 2.其行为和 Ruby 的局部变量的作用域实际上是一致的. 由于你没有对 var 关键字的直接访问, 根据需要隐藏一个外部变量就很容易, 你只能引用它. 所以在写深层的嵌套的函数时, 注意不要意外用到和外部变量相同的名字.
# 3.尽管要说清楚会受到文档长度限制, 函数的所有 CoffeeScript 结果都被一个匿名函数包裹: (function(){ ... })(); 这层安全的封装, 加上自动生成的 var 关键字, 使得不小心污染全局命名空间很难发生.
# 4.如果你希望创建一个其他脚本也能使用的顶层变量, 那么将其作为赋值在 window 上, 或者在 CommonJS 里的 exports 上. 存在操作符(existential operator)可以帮你写出一个可靠的方式找到添加位置; 比如你的目标是同时满足 CommonJS 和浏览器: exports ? this