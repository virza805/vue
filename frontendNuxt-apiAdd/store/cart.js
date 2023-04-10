
export const state = () => ({
  cart: []
});



export const mutations = {
  ADD_TO_CART(state, data) {

    // save in localStorage

    let getProductsLocalStorage = JSON.parse(localStorage.getItem('cart'));

    let newProduct = true;
    getProductsLocalStorage.forEach(item => {
      if(data.product.id === item.id) {
        newProduct = false
      }
    })

    if(newProduct) {
      getProductsLocalStorage.push({
        id: data.product.id,
        name: data.product.name,
        image: data.product.image,
        quantity: 1,
        price: data.product.price,
      });
    }else {
      getProductsLocalStorage.forEach((exitingProduct, index) => {
        if(exitingProduct.id === data.product.id) {
          if(data.type === 'minus' && getProductsLocalStorage[index].quantity > 0) {
            getProductsLocalStorage[index].quantity = getProductsLocalStorage[index].quantity - 1;

          } else {
            getProductsLocalStorage[index].quantity = getProductsLocalStorage[index].quantity + 1;
          }
        }
      })
    }
    localStorage.setItem('cart', JSON.stringify(getProductsLocalStorage))


    // save in store
    state.cart = getProductsLocalStorage;

    // save in user database

    this.$toast.success('Added to Cart!');

  },
  REMOVE_CART(state, product_id) {
    let getProductsLocalStorage = JSON.parse(localStorage.getItem('cart'));
    if(getProductsLocalStorage.length) {
      getProductsLocalStorage.forEach((item, index) => {
        if(item.id === product_id) {
          // remove this item
          getProductsLocalStorage.splice(index, 1);
        }
      })
    }

    localStorage.setItem('cart', JSON.stringify(getProductsLocalStorage))

    state.cart = getProductsLocalStorage;

    this.$toast.info('Remove this Cart!');
    // this.$toast.dan('Removed from cart!');
  }
}

export const actions = {
  addToCart({commit}, product) {
    commit('ADD_TO_CART', product)
  },
  removeCart({commit}, product_id) {
    commit('REMOVE_CART', product_id)
  }

}

export const getters = {
  getCart(state) {

    return state.cart
  }
}


