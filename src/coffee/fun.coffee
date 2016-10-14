# 函数通过一组可选的圆括号包裹的参数, 一个箭头, 一个函数体来定义. 一个空的函数像是这样:  ->
square = (x) -> x*x
cube = (x) -> square(x)*x

# 一些函数函数参数会有默认值, 当传入的参数的不存在 (null 或者 undefined) 时会被使用.

fill = (container,liquid = "coffee") -> "filling the #{container} with #{liquid}"