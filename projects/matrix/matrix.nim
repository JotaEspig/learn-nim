type
    Matrix*[R, C: static[int], T] = ref object
        rows: array[R, array[C, T]]


proc newMatrix*[T](r, c: static[int], arr: array[r, array[c, T]]): Matrix[r, c, T] =
    result = Matrix[r, c, T]()
    for idxR, row in arr:
        for idxC, value in row:
            result[idxR+1, idxC+1] = value

proc `[]`*(m: Matrix, r, c: int): m.T =
    result = m.rows[r-1][c-1]

proc `[]=`*(m: var Matrix, r, c: int, value: m.T) =
    if (r < 1 or r > m.R) or (c < 1 or c > m.C):
        raise newException(IndexDefect, "Invalid value for 'r' or 'c'")

    m.rows[r-1][c-1] = value

proc print*(m: Matrix) =
    for idx, r in m.rows:
        for c in m.rows[idx]:
            stdout.write($c & " ")
            stdout.flushFile()

        stdout.write("\n")
        stdout.flushFile()
