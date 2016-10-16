# CoffeeScript 中对象和数组的字面量看起来很像在 JavaScript 中的写法. 如果单个属性被写在自己的一行里, 那么逗号是可以省略的.
song = ["1","2","3","4","5","6","7"]

singers = {Jagger:"Rock",Elvis:"Roll"}

bitlist = [
	1,2,1
	2,2,2
	3,2,1
]

# 对象可以用缩进替代花括号来声明.
kids =
	brother:
		name:"Max"
		age:11
	sister:
		name:"Ida"
		age:9


# JavaScript 里, 你不能使用不添加引号的保留字段作为属性名称, 比如 class. CoffeeScript 里作为键出现的保留字会被识别并补上引号, 所以你不用有额外的操心(比如说, 使用 jQuery 的时候).
# $('.account').attr class: 'active'

# log object.class

# 吃午饭.
# eat food for food in ['toast', 'cheese', 'wine']

# 精致的五道菜.
courses = ['greens', 'caviar', 'truffles', 'roast', 'cake']
# menu i + 1, dish for dish, i in courses

# 注重健康的一餐.
foods = ['broccoli', 'spinach', 'chocolate']
# eat food for food in foods when food isnt 'chocolate'



countdown = (num for num in [10..1])
console.log (countdown)
# 注意：上面的例子中我们展示了如何将推导式赋值给变量，CoffeeScript总是将 每个循环项收集到一个数组中。但是有时候以循环结尾的函数运行的目的就是 它们的副作用(side-effects)。这种情况下要注意不要意外的返回推导式的结果， 而是在函数的结尾增加一些有意义的返回值—例如true — 或 null


# 在推导式中使用by子句，可以实现以固定跨度迭代范围值：  
evens = (x for x in [0..10] by 2)

# 推导式也可以用于迭代对象中的key和value。在推导式中使用of 来取出对象中的属性，而不是数组中的值。
yearsOld = max: 10, ida: 9, tim: 11

ages = for child, age of yearsOld
  "#{child} is #{age}"

# 如果你希望仅迭代在当前对象中定义的属性，通过hasOwnProperty检查并 避免属性是继承来的，可以这样来写：
# for own key, value of object


# CoffeeScript仅提供了一种底层循环，即while循环。与JavaScript中的while 循环的主要区别是，在CoffeeScript中while可以作为表达式来使用， 而且可以返回一个数组，该数组包含每个迭代项的迭代结果。
# 经济 101
if this.studyingEconomics
  buy()  while supply > demand
  sell() until supply > demand

# 摇篮曲
num = 6
lyrics = while num -= 1
  "#{num} little monkeys, jumping on the bed.
    One fell out and bumped his head."

# 为了更好的可读性，until关键字等同于while not, loop关键字 等同于while true。


# 使用 JavaScript 循环生成函数的时候, 经常会添加一个闭包来包裹代码, 这样做目的是为了循环的变量被保存起来, 而不是所有生成的函数搜去访问最后一个循环的变量. CoffeeScript 提供了一个 do 关键字, 用来直接调用跟在后边的函数, 并且传递需要的参数.
# for filename in list
# 	do(filename) ->
# 		fs.readFile filename,(err,contents)->
# 			compile filename,contents.toString()


# 数组的切片和用 range 进行拼接
# // Range 也可以被用来展开数组的切片. 通过两个点号的写法 (3..6), range 会包含最后一个数据 (3, 4, 5, 6); 通过三个点号的写法 (3...6), range 不会包含最后一个数据 (3, 4, 5). 切片的索引位置存在不错的默认值. 前面的索引位置省略的话, 默认会是 0, 后面的索引位置被省略的话, 默认值是数组的大小.

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

start   = numbers[0..2]
console.log(start);
middle  = numbers[3...-3]
console.log(middle);
end     = numbers[-2..]
console.log(end);
copy    = numbers[..]
console.log(copy);

# 同样的语法还可以用在数组的片段上赋值一些新的值, 进行拼接.
numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

numbers[3..6] = [-3, -4, -5, -6]
console.log(numbers);

# 注意 JavaScript 的 string 是不可变的, 所以不能用被拼接.