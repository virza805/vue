import { createRouter, createWebHistory } from 'vue-router'

import HomePage from "./pages/Home.vue"
import TagArchive from "./pages/TagArchive.vue"
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
        path: "/jobs", 
        component: () => import("@/components/JobFormLayout.vue"),
        meta: {auth: true},
        children: [
            {
                name: "jobs.create",
                path: "create",
                component: () => import("@/pages/jobs/create.vue"),
            },
            {
                name: "jobs.update",
                path: "update/:id",
                component: () => import("@/pages/jobs/update.vue"),
            },
        ]
    },
    { 
        name: "jobs.mine", 
        path: "/my-jobs", 
        component: () => import("@/pages/MyJobs.vue"),
        // meta: {auth: true}
    },
    { 
        name: "jobs.detail", 
        path: "/:slug", 
        component: () => import("@/pages/JobDetails.vue"),
        // meta: {auth: true}
    },
    { 
        name: "tag.jobs", 
        path: "/tags/:slug", 
        component: TagArchive,
        // meta: {auth: true}
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