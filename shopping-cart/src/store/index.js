import Vue from 'vue'
import Vuex from 'vuex'
import shop from '@/api/shop'

Vue.use(Vuex)

const store = new Vuex.Store({
  state: {
    products: [],
    cart: [], // store for a { id, quantity, etc}
    checkoutStatus: null
  },

  getters: {
    // getCount: state => state.count
    availableProducts(state, getters){
      return state.products.filter(product => product.inventory > 0)
    },
    cartProducts(state) {
      return state.cart.map(cartItem => {
        const product = state.products.find(product => product.id === cartItem.id)
        return {
          title: product.title,
          price: product.price,
          quantity: cartItem.quantity
        }
      })
    },
    cartTotal (state, getters) {
      // let total = 0
      // getters.cartProducts.forEach(product => {
      //   total += product.price * product.quantity
      // })
      // return total
      return getters.cartProducts.reduce((total, product) => total + product.price * product.quantity, 0)
    }
  },

  actions: {
    fetchProducts({commit}){
      //
      return new Promise((resolve, reject) => {
        shop.getProducts(products => {
          // this.products = products
          commit('setProducts', products) // setProduct() is mutations in stor>vuex
          resolve()
        })
      })
    },

    // cart CRUD here Start
    addProductToCart(context, product) {

      if(product.inventory > 0){ // check for have product in sore | shope
        const cartItem = context.state.cart.find(item => item.id === product.id)

        if(!cartItem){
          context.commit('pushProductToCart', product.id)
        }else{
          context.commit('incrementItemQuantity', cartItem)
        }

        context.commit('decrementProductInventory', product)

      }else{
        // show out of stock message
      }

    },

    // checkout form the cart
    checkout({state, commit}){
      shop.buyProducts(
        state.cart,
        () => {
          commit('emptyCart')
          commit('setCheckoutStatus', 'success')
        },
        () => {
          commit('setCheckoutStatus', 'fail')
        }
      )
    }
  },

  mutations: {
    setProducts(state, products){
      state.products = products
    },

    // cart mutations
    pushProductToCart(state, productId){
      state.cart.push({
        id: productId,
        quantity: 1
      })
    },
    incrementItemQuantity(state, cartItem){
      cartItem.quantity++
    },


    decrementProductInventory(state, product){
      product.inventory--
    },

    setCheckoutStatus(state, status){
      state.checkoutStatus = status
    },

    emptyCart(state){
      state.cart = []
    },
  },

})

export default store
