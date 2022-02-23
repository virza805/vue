import { createApp } from 'vue'

import App from './App.vue'
import NoteApp from './NoteApp.vue'

import './assets/app.scss'

import store from "./store"


const app = createApp(NoteApp)

app.use(store);

app.mount('#app')
