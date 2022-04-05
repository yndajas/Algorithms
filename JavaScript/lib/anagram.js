const anagram = (stringOne, stringTwo) => {
  // return false if strings are identical
  if (stringOne === stringTwo) {
    return false
  }

  // return false if lengths differ
  if (stringOne.length !== stringTwo.length) {
    return false
  }

  // get counts of characters in each string
  const strings = [stringOne, stringTwo]
  const counts = [{}, {}]

  strings.forEach((string, stringIndex) => {
    for (let character of string) {
      counts[stringIndex][character] = ++counts[stringIndex][character] || 1
    }
  })

  // check each character in first count object has same value in second
  return Object.keys(counts[0]).every(character => {
    return counts[0][character] === counts[1][character]
  })
}

export default anagram