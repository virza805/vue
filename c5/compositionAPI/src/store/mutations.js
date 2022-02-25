export const ADD_BOOK = (state, payload) => {
    state.bookList.push(payload)
    console.log(state.bookList)
}