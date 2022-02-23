import { createStore } from 'vuex'

const store = createStore({

    state() {
        return {
            count: 0,
            appName: "Vuex",
        };
    },
    mutations: {
        increment(state) {
            state.count++;
        },
        decrement(state) {
            state.count--;
        },
    }

});


export default store;
