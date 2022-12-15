import matrix


proc main() =
    var m1 = newMatrix[int](3, 3, 
        [[1, 0, 0], [0, 1, 0], [0, 0, 1]])
    m1.print()

    var m2 = newMatrix[int](3, 3, 
        [[1, 0, 0], [0, 1, 0], [0, 0, 1]])
    m2.print()

    var result = m1+m2
    result.print()

if isMainModule:
    main()
