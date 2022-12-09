type Person* = ref object
    name*: string # public
    agee: int16  # protected/private

var p = Person(name: "Jota", agee: 18)
echo p.name

proc speak*(p: var Person, text: string) =
    echo p.name & " says: " & text

p.speak "aaaa"
proc age*(p: var Person): int16 =
    p.agee
proc `age=`*(p: var Person, value: int) =
    p.agee = int16(value)

p.age = 10
echo p.age
