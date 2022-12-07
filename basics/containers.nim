# arrays
var 
    a: array[2, int] = [1, 2]
    b = [1, 2]
    # c = [] # CAUSES AN ERROR
    d: array[2, int]

echo a, b, d

# sequences are like array, but it doesn't need to know the length at compile time
var
    s: seq[int] = @[]
    r = @[1]

echo s, r

s.add(10)
echo s, " length: ", s.len

s.add(9)
s.add(8)
echo s[0..<2]
echo s[0..2]
echo s[0..<s.len]
echo "first: ", s[0], " last: ", s[^1]

# tuples
let t: tuple = ("wow", 1, 10)
let tNamed = (name: "wow", age: 10)
echo t, " ", tNamed
echo tNamed[0], " ", tNamed.age
