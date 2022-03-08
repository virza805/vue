import { createApp } from 'vue'
import App from './App.vue'
import router from "./router"
import { createPinia } from 'pinia'

import './assets/app.css'
import useAuthStore from './store/auth'

const app = createApp(App);

const pania = createPinia();
app.use(pania);

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

