# 操作符和 aliase
# 由于操作符 == 常常带来不准确的约束, 不容易达到效果, 而且跟其他语言当中意思不一致, CoffeeScript 会把 == 编译为 ===, 把 != 变异为 !==. 此外, is 编译为 ===, 而 isnt 编译为 !==

# not 可以作为 ! 的 alias 使用.

# 逻辑操作方面, and 编译为 &&, 而 or 编译为 ||.

# 在 while, if/else, switch/when 的语句当中,  then 可以被用来分隔判断条件跟表达式, 这样就不用强制写换行或者分号了.

# on 和 yes 跟 true 是一样的, 而 off 和 no 是布尔值 false.
# unless 可以认为是 if 相反的版本.

# this.property 简短的写法可以用 @property.

# 可以用 in 判断数据在数组中是否出现, 而 of 可以探测 JavaScript 对象的属性是否存在.


# 为了简化数学表达式, ** 可以用来表示乘方, // 表示整除, %% 提供数学的模运算(译注: true mathematical modulo?).

launch() if ignition is on

volume = 10 if band isnt SpinalTap

letTheWildRumpusBegin() unless answer is no

if car.speed < limit then accelerate()

winner = yes if pick in [47, 92, 13]

print inspect "My name is #{@name}"


# 存在性操作符

# 在 JavaScript 里检测一个变量的存在性有点麻烦.  if (variable) ... 比较接近答案, 但是对 `0` 不成立. CoffeeScript 的存在性操作符 ? 除非是 null 或者 undefined, 否则都返回 true, 这大致是模仿 Ruby 当中的 nil?.
# 这也可以用在比 ||= 更安全的条件赋值当中, 有些情况你会需要处理数字跟字符串的.


solipsism = true if mind? and not world?

speed = 0
speed ?= 15

footprints = yeti ? "bear"

# 存在性操作符 ?. 的访问器的变体可以用来吸收链式属性调用中的 null. 数据可能是 null 或者 undefined 的情况下可以用这种写法替代访问器 .. 如果所有属性都存在, 那么你会得到想要的结果, 如果链式调用有问题, 会返回 undefined 而不是抛出 TypeError.

zip = lottery.drawWinner?().address?.zipcode