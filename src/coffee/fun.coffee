# 函数通过一组可选的圆括号包裹的参数, 一个箭头, 一个函数体来定义. 一个空的函数像是这样:  ->
square = (x) -> x*x
cube = (x) -> square(x)*x

# 一些函数函数参数会有默认值, 当传入的参数的不存在 (null 或者 undefined) 时会被使用.

fill = (container,liquid = "coffee") -> "filling the #{container} with #{liquid}"


# Fat arrow => 可以同时定义函数, 绑定函数的 this 到当前的值, 正是我们需要的. 这有助于在 Prototype 或者 jQuery 这种基于回调的类库当中使用, 用于创建迭代器函数传递给 each, 或者借助 bind 的事件处理器函数. Fat arrow 定义的函数可以访问到他们创建位置的 this 对象的属性.
@customer = customer
@cart = cart

$('.shopping_cart').bind 'click', (event) =>
   @customer.purchase @cart


# 如果上边用的是 this,  @customer 会指向一个 DOM 元素的 undefined "customer" 属性, 然后强行调用上面的 purchase() 时会抛出一个异常.

