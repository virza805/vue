import axios from "axios";

const products = {

    namespaced: true,
    
   
    state:{
        // notes: JSON.parse(localStorage.getItem("notes:notes")) || [],
        products:[],
    },
    mutations: {

        setProudcts(state, payload) {
            state.products = payload.data.data
        },
        deleteProduct(state, id) {
            state.products = state.products.filter((product) => product.id !== id);
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
            commit('deleteProduct', response.id);
            // console.log(response); 
        }
    }
}

export default products;
