type Person = ref object
    name*: string
    age: int16 

var p = Person(name: "Jota", age: 18)
echo p.name
