import { createRouter, createWebHistory } from 'vue-router'

import HomePage from "./pages/Home.vue"
import ContactPage from "./pages/Contact.vue"
import Login from "@/pages/Login.vue"
import Register from "@/pages/Register.vue"
import useAuthStore from './store/auth'


const routes = [
    { 
        name: "home", 
        path: "/", 
        component: HomePage,
        meta: {auth: true}
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

const router =  createRouter({
    routes,
    history: createWebHistory(),
});


router.beforeEach((to, from, next) => {
    const auth = useAuthStore();
    if(to?.meta?.auth && !auth.loggedIn) return next("/login");
    next();
});

export default router;