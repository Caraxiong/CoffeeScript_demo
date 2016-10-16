# class, 继承, super

class Animal
  constructor: (@name) ->

  move: (meters) ->
    alert @name + " moved #{meters}m."

class Snake extends Animal
  move: ->
    alert "Slithering..."
    super 5

class Horse extends Animal
  move: ->
    alert "Galloping..."
    super 45

sam = new Snake "Sammy the Python"
tom = new Horse "Tommy the Palomino"

sam.move()
tom.move()

# 如果你不喜欢用 class 的裁判法定义原型, CoffeeScript 提供了一些低级的方便写法.  extends 操作符可以用来恰当地定义任何一对构造函数的原型链; 用 :: 可以快速访问对象的原型;  super() 可以编译为一个父类上同名方法的调用.
String::dasherize = ->
  this.replace /_/g, "-"


# 最后, class 定义是可执行的代码, 这样就可能进行元编程. 因为在 class 定义的上下文当中, this 是类对象本身(构造函数), 可以用 @property: value 赋值静态的属性, 也可以调用父类的方法: @attr 'title', type: 'text'.
