proc `**`(a: int|float, b: int|float): int|float =
    result = 1
    for i in 1..b:
        result *= a 

echo 2 ** 5
