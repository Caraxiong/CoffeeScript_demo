# 解构赋值
# CoffeeScript 实现 ECMAScript Harmony 的提议 解构赋值 语法, 这样从复杂的数组和对象展开数据会更方便一些. 当你把数组或者对象的字面量赋值到一个变量时, CoffeeScript 把等式两边都解开配对, 把右边的值赋值给左边的变量. 最简单的例子, 可以用来并行赋值:


theBait   = 1000
theSwitch = 0

[theBait, theSwitch] = [theSwitch, theBait]

# 用来处理函数多返回值也很方便.
weatherReport = (location) ->
  # 发起一个 Ajax 请求获取天气...
  [location, 72, "Mostly Sunny"]

[city, temp, forecast] = weatherReport "Berkeley, CA"
console.log (city)
console.log (temp)
console.log (forecast)

# 解构赋值可以用在深度嵌套的数组跟对象上, 取出深度嵌套的属性.

futurists =
  sculptor: "Umberto Boccioni"
  painter:  "Vladimir Burliuk"
  poet:
    name:   "F.T. Marinetti"
    address: [
      "Via Roma 42R"
      "Bellagio, Italy 22021"
    ]

{poet: {name, address: [street, city]}} = futurists