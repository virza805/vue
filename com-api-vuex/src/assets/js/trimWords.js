export function trimWords(value, numWords) {
    if (!value) return ''
    // if (typeof value !== 'string') return ''
    const words = value.split(' ')
    return words.slice(0, numWords).join(' ') + (words.length > numWords ? '...' : '')
}
  