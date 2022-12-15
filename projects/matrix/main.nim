import matrix


proc main() =
    var m = newMatrix[int](3, 3, 
        [[1, 0, 0], [0, 1, 0], [0, 0, 1]])
    m.print()

if isMainModule:
    main()
