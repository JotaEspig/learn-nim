for i in 1..10:
    echo i

for j in 1..<10:
    echo j

for k in countup(1, 10, 2):
    echo k

for l in countdown(10, 1, 2):
    echo l

let word: string = "masqueico"
for idx, character in word:
    echo $idx & " " & character

var i = 0
while i < 10:
    echo i
    if i == 3:
        i += 2
        continue
    
    if i == 9:
        break
    inc i
