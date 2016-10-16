# JavaScript 里的 Switch 语句有点难看. 你需要在每个 case 写 break 防止自动进入默认的 case. CoffeeScript 会阻止掉意外的 fall-through. 而且 switch 编译的结果会是可以带 return, 可以被用于赋值的表达式. 格式这样写: switch 判断条件,  when 然后子句, else 然后默认的 case.
switch day
  when "Mon" then go work
  when "Tue" then go relax
  when "Thu" then go iceFishing
  when "Fri", "Sat"
    if day is bingoDay
      go bingo
      go dancing
  when "Sun" then go church
  else go work

# Switch 语句也可以不写控制条件, 当作 if/else 调用链的一个更整洁的可选写法
score = 76
grade = switch
  when score < 60 then 'F'
  when score < 70 then 'D'
  when score < 80 then 'C'
  when score < 90 then 'B'
  else 'A'
# grade == 'C'

# Try/Catch/Finally
try
  allHellBreaksLoose()
  catsAndDogsLivingTogether()
catch error
  print error
finally
  cleanUp()


# Chained Comparisons
# CoffeeScript 从 Python 学习了 链式对比 — 这样判断数值是否在某个范围内在写法上更容易.
cholesterol = 127

healthy = 200 > cholesterol > 60

# // Ruby 风格的字符串替换也在 CoffeeScript 实现了. 双引号包裹的字符串允许数据替换, 用 #{ ... } 语法, 而单引号包裹的字符串仅仅是字面量.
author = "Wittgenstein"
quote  = "A picture is a fact. -- #{ author }"

sentence = "#{ 22 / 7 } is a decent approximation of π"

# CoffeeScript 支持多行字符串. 行与行会用一个空格拼接, 除非结尾用了反斜杠. 其中缩进会被忽略.
mobyDick = "Call me Ishmael. Some years ago -- 
  never mind how long precisely -- having little
  or no money in my purse, and nothing particular
  to interest me on shore, I thought I would sail
  about a little and see the watery part of the
  world..."

  # 块级的字符串可以用于书写格式化的或者对缩进敏感的文本(或者你只是不想转义单引号双引号). 代码块开始的位置的缩进层级会被保留, 用在后面的代码中, 所以这部分代码依然可以跟整体的代码一起对齐.
  # html = """
  # <strong>
  #        cup of coffeescript
  #      </strong>
  #      """



# 块级的字符串用双引号, 跟普通的双引号字符串一样, 支持替换.

# 有时候你想把整块的注释传给生成的 JavaScript. 比如在文件顶部嵌入协议. 块级的注释, 仿照了块级字符串的语法, 将会在生成的代码当中保留.
###
SkinnyMochaHalfCaffScript Compiler v1.0
Released under the MIT License
###


# 块级的正则表达式
# 类似块级的字符串跟注释, CoffeeScript 支持块级的正则 — 扩展了正则表达式, 可以忽略内部的空格, 可以包含注释和替换. 模仿了 Perl 的 /x 修饰符, CoffeeScript 的块级正则以 /// 为界, 让正则表达式获得了很大程度的可读性. 引用一下 CoffeeScript 源码:

OPERATOR = /// ^ (
  ?: [-=]>             # 函数
   | [-+*/%<>&|^!?=]=  # 复合赋值 / 比较
   | >>>=?             # 补 0 右移
   | ([-+:])\1         # 双写
   | ([&|<>])\2=?      # 逻辑 / 移位
   | \?\.              # soak 访问
   | \.{2,3}           # 范围或者 splat
) ///

