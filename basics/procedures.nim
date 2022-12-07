# the same as functions
proc sayHello(text: string) =
    echo "Hello, " & text

proc changeSayHello(text: var string) =
    text = "Other text"
    sayHello(text)

proc addCustom(a: int64, b: int16): int64 =
    return a + b

# every proc has an implicited variable declared "result" and it returns automatically
proc power(a, b: int): int64 =
    result = 1
    for _ in 1..b:
        result *= a

sayHello("jota")
var value = "samu"
changeSayHello(value)
echo 10.addCustom(5) # Other way to call functions!
echo power(2, 5)

# we can declare a procedure first and later assign it
proc foo(a: int)

10.foo # we don't need to use "()" :)

proc foo(a: int) = 
    echo a

# use func when the procedure is like mathematical functions (always returns the same value)
func addCustom2(a, b: int): int =
    result = a + b

echo addCustom2(10, 10)