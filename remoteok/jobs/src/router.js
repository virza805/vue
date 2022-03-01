import { createRouter, createWebHistory } from 'vue-router'

import HomePage from "./pages/Home.vue"
import ContactPage from "./pages/Contact.vue"
import Login from "@/pages/Login.vue"
import Register from "@/pages/Register.vue"


const routes = [
    { 
        name: "home", 
        path: "/", 
        component: HomePage
    },
    { 
        name: "auth.register",
        path: "/register", 
        component: Register
    },
    { 
        name: "auth.login",
        path: "/login", 
        component: Login
    },
]

export default createRouter({
    routes,
    history: createWebHistory(),
});