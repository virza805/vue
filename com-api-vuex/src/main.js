import { createApp } from 'vue'
import App from './App.vue'
import store from './store/index'
import router from './router'
// import axios from 'axios';

// import './assets/main.css'
import './assets/app.scss'

const app = createApp(App)

app.use(router)
app.use(store)
// app.use(axios)

app.mount('#app')
