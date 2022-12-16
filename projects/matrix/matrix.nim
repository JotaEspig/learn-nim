type
    Matrix*[R, C: static[int], T] = ref object
        rows: array[R, array[C, T]]


proc newMatrix*[T](r, c: static[int], arr: array[r, array[c, T]]): Matrix[r, c, T] =
    result = Matrix[r, c, T]()
    for idxR, row in arr:
        for idxC, value in row:
            result[idxR+1, idxC+1] = value

proc `[]`*(self: Matrix, r, c: int): self.T =
    result = self.rows[r-1][c-1]

proc `[]=`*(self: var Matrix, r, c: int, value: self.T) =
    if (r < 1 or r > self.R) or (c < 1 or c > self.C):
        raise newException(IndexDefect, "Invalid value for 'r' or 'c'")

    self.rows[r-1][c-1] = value

proc `+`*(a: Matrix, b: Matrix[a.R, a.C, a.T]): Matrix =
    new(result)
    for idxR, row in a.rows:
        for idxC, value in row:
            result.rows[idxR][idxC] = value + b.rows[idxR][idxC]

proc `+=`*(self: var Matrix, b: Matrix[self.R, self.C, self.T]) =
    for idxR, row in b.rows:
        for idxC, value in row:
            self.rows[idxR][idxC] += value

proc `-`*(a: Matrix, b: Matrix[a.R, a.C, a.T]): Matrix =
    new(result)
    for idxR, row in a.rows:
        for idxC, value in row:
            result.rows[idxR][idxC] = value - b.rows[idxR][idxC]

proc `-=`*(self: var Matrix, b: Matrix[self.R, self.C, self.T]) =
    for idxR, row in b.rows:
        for idxC, value in row:
            self.rows[idxR][idxC] -= value

proc `==`*(self: Matrix, b: Matrix[self.R, self.C, self.T]): bool =
    result = true
    for idxR, row in b.rows:
        for idxC, value in row:
            if self.rows[idxR][idxC] != value:
                result = false

proc print*(self: Matrix) =
    for idx, r in self.rows:
        for c in self.rows[idx]:
            stdout.write($c & " ")
            stdout.flushFile()

        stdout.write("\n")
        stdout.flushFile()
