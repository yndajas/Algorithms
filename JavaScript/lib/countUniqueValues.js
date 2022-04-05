const countUniqueValues = (values) => {
  // sort the value and declare a variable to store last unique value
  const sortedValues = values.sort()
  let lastUniqueValue

  // iterate through values, counting each that differs from the last
  return sortedValues.reduce((uniqueValueCount, currentValue) => {
    if (currentValue !== lastUniqueValue) {
      lastUniqueValue = currentValue
      return uniqueValueCount + 1
    }

    return uniqueValueCount
  }, 0)
}

export default countUniqueValues