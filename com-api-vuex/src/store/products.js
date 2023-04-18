import axios from "axios";

const products = {

    namespaced: true,
    
   
    state:{
        // notes: JSON.parse(localStorage.getItem("notes:notes")) || [],
        products:[],
        cart:[],
        checkoutStatus: null
    },
    getters:{
        // itemTotal (state) {
        //     return state.cart.iTotalPrice = state.cart.quantity * state.cart.price
        // },
        cartTotal (state) {
            // return state.cart.reduce((total, cart) => total + cart.iTotalPrice , 0)
            return state.cart.reduce((total, cart) => total + cart.quantity * cart.price, 0)
        },
        cartQty (state) {
            return state.cart.reduce((total, cart) => total + cart.quantity, 0)
        }
    },
    mutations: {

        setProudcts(state, payload) {
            state.products = payload.data.data
        },
        deleteProduct(state, id) {
            state.products = state.products.filter((product) => product.id !== id);
        },

        // cart function start now
            
        // cart mutations
        pushProductToCart(state, productId){
            state.cart.push({
                id: productId.id,
                title: productId.title,
                price: parseInt(productId.price),
                quantity: 1,
                iTotalPrice: parseInt(productId.price)
            });
        },
        incrementItemQuantity(state, cartItem){
            cartItem.quantity++
            cartItem.iTotalPrice = cartItem.quantity * cartItem.price
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
    actions: {

        async fetchProduct({commit}) {
            const response = await axios.get('http://localhost:8000/api/all/news');
            commit('setProudcts', response);
            // console.log(response); 
        },
        async removeProduct({commit},id) {
            const response = await axios.delete(`http://localhost:8000/api/all/news-delete/${id}`);
            commit('deleteProduct',id);
            // console.log(response); 
        },


        // cart function start now
        addProductToCart({state, commit}, product) {
                    
            const cartItem = state.cart.find(item => item.id === product.id)

            let stock = parseInt(product.inventory);
                
            if(stock > 0){ // check for have product in sore | shope
                if(!cartItem){
                commit('pushProductToCart', product)
                }else{
                commit('incrementItemQuantity', cartItem)
                }

                commit('decrementProductInventory', product)
            }else{
              let message = "show out of stock"; 
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
        },


    }
}

export default products;
