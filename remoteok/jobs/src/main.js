import { createApp } from 'vue'
import App from './App.vue'
import router from "./router"
import VueObserveVisibility from 'vue-observe-visibility'
import { createPinia } from 'pinia'
import 'vue-loading-overlay/dist/vue-loading.css';



import './assets/app.css'
import useAuthStore from './store/auth'

const app = createApp(App);

const pania = createPinia();
app.use(pania);
app.use(VueObserveVisibility);

const auth = useAuthStore();

auth.boot().then(() => {
    app.use(router);
    router.isReady().then(() => {
        app.mount("#app");
    });
});

// app.use(createPinia());
// app.use(router);

// const auth = useAuthStore();

// router.isReady().then(() => {

//     auth.boot().then(() => {
//         app.mount('#app')
//     });
    
// })

