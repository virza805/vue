import axios from "axios";

const products = {

    namespaced: true,
    
   
    state:{
        // notes: JSON.parse(localStorage.getItem("notes:notes")) || [],
        products:[],
    },
    mutations: {

        setProudcts(state, payload) {
            state.products = payload
        },


    },
    actions: {

        async fetchProduct({commit}) {
            const response = await axios.get('http://localhost:8000/api/all/news');
            commit('setProudcts', response);
            console.log(response);
            
            
        }
    }
}

export default products;
