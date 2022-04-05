// set default size
const defaultSize = 8

// set default cell strings
const defaultCells = {
  0: '_',
  1: '#'
}

// time complexity: O(3n), or simply O(n)
export const chessboard = (size = defaultSize, cells = defaultCells) => {
  // create strings to contain representations of even and odd row types
  const rows = {
    0: '',
    1: ''
  }

  // for row type in rows
  Object.keys(rows).forEach(rowType => {
    // for each cell in the row type
    for (let column = 0; column < size; column++) {
      // if the sum of the row type key and column index is even,
      // add cells[0] to the row type string, else cells[1] - this
      // alternates the starting character of each row type
      rows[rowType] += cells[(parseInt(rowType) + column) % 2]
    }
  })

  // create a string representing the full board
  let board = ''

  // for each row
  for (let row = 0; row < size; row++) {
    // add the row type corresponding to the row index's parity (odd/even)
    // to the board string
    board += (rows[row % 2])

    // unless this is the last row, add a new line character
    if (row < size - 1) {
      board += '\n'
    }
  }

  // return the board
  return board
}

export const printChessboard = (size = defaultSize, cells = defaultCells) => {
  const board = chessboard(size, cells)
  console.log(board)
}

// time complexity: O(n²)
export const chessboardNSquared = (size = defaultSize, cells = defaultCells) => {
  // create a string representing the full board
  let board = ''

  // for each row
  for (let row = 0; row < size; row++) {
    // create a string representing the row
    let rowText = ''

    // for each cell in the row
    for (let column = 0; column < size; column++) {
      // if the sum of the row and column indices is even,
      // add cells[0] to the string, else cells[1] - this
      // alternates the starting character of each row
      rowText += cells[(row + column) % 2]
    }

    // add the row string to the board string
    board += rowText

    // unless this is the last row, add a new line character
    if (row < size - 1) {
      board += '\n'
    }
  }

  // return the board
  return board
}

export default chessboard