# CoffeeScript_demo

##运行本项目

npm install


###安装CoffeeScript
> npm install -g coffee-script

###用法

- -c, --compile	编译一个 .coffee 脚本到一个同名的 .js 文件.
- -m, --map	随 JavaScript 文件一起生成 source maps. 并且在 JavaScript 里加上 sourceMappingURL 指令.
- -i, --interactive	启动一个交互式的 CoffeeScript 会话用来尝试一些代码片段. 等同于执行 coffee 而不加参数.
- -o, --output [DIR]	将所有编译后的 JavaScript 文件写到指定文件夹. 与 --compile 或 --watch 搭配使用.
- -j, --join [FILE]	编译之前, 按参数传入顺序连接所有脚本到一起, 编译后写到指定的文件. 对于编译大型项目有用.
- -w, --watch	监视文件改变, 任何文件更新时重新执行命令.
- -p, --print	JavaScript 直接打印到 stdout 而不是写到一个文件.
- -s, --stdio	将 CoffeeScript 传递到 STDIN 后从 STDOUT 获取 JavaScript. 对其他语言写的进程有好处. 比如:
cat src/cake.coffee | coffee -sc
- -l, --literate	将代码作为 Literate CoffeeScript 解析. 只会在从 stdio 直接传入代码或者处理某些没有后缀的文件名需要写明这点.
- -e, --eval	直接从命令行编译和打印一小段 CoffeeScript. 比如:
coffee -e "console.log num for num in [10..1]"
- -b, --bare	编译到 JavaScript 时去掉顶层函数的包裹.
- -t, --tokens	不对 CoffeeScript 进行解析, 仅仅进行 lex, 打印出 token stream: [IDENTIFIER square] [ASSIGN =] [PARAM_START (] ...
- -n, --nodes	不对 CoffeeScript 进行编译, 仅仅 lex 和解析, 打印 parse tree:

  Expressions
     Assign
      Value "square"
      Code "x"
        Op *
          Value "x"
          Value "x"
          
- --nodejs	node 命令有一些实用的参数, 比如
- --debug, --debug-brk, --max-stack-size, 和 --expose-gc. 用这个参数直接把参数转发到 Node.js. 重复使用 --nodejs 来传递多个参数.


###命令示例(以本实例结构为例)
* 编译一个 .coffee 文件的树形目录 src 到一个同级  .js 文件树形目录 lib:

coffee --compile --output src/js/(注释：此文件夹是想要生成的js所在的位置文件夹) src/coffee/(注释：此文件夹为coffee文件位置)

* 监视一个文件的改变, 每次文件被保证时重新编译:

	coffee --watch --compile src/coffee/arr.coffee

	注：每次会在当前同个目录下生成js文件

* 合并一组文件到单个脚本:

	coffee --join common.js --compile src/coffee/*.coffee

* 现在全部一起, 在你工作时监视和重复编译整个项目:

	coffee -o src/js/ -cw src/coffee/

	注：一直监听文件变化并生成相应js到指定文件夹

*运行 CoffeeScript REPL (Ctrl-D 来终止, Ctrl-V 激活多行):

	coffee


###[官网地址](http://coffee-script.org/#top)


###关于sublime配置coffeScript插件

####node.js 全局模块所在目录
> npm -g ls

1. 安装

	> npm install -g coffee-script

2. sublime安装CoffeeScript

	* sublime语法高亮插件　　

　　　　* 打开sublime -> Ctrl+Shift+P-> 输入install package 后回车->输入coffeescript 选择第一个回车。

	* sublime中运行coffee

　　　　* 第一步创建目录： 打开 C:\Users\username\AppData\Roaming\Sublime Text 3\Packages里新建一个目录CoffeeScript

　　　　* 第二步：打开Sublime，菜单操作：Tools -> Build System -> New Build System…，输入如下：

　　　　　　` {
				"cmd": ["C:\\Users\\cara\\AppData\\Roaming\\npm\\coffee.cmd", "$file"],
　　　　　　	"file_regex": "^(...*?):([0-9]*):?([0-9]*)",
　　　　　　	"selector": "source.coffee"
　　　　　　} `

　　　　* 第三步，将这个文件命名为Coffee.sublime-build保存到第一步中创建的coffeescript目录下

 		* 第四部测试一下： Ctrl+B 就会看到结果
 