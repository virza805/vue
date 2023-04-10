import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../pages/Home.vue'
import Student from '../pages/Student.vue'
import Note from '../pages/NoteApp.vue'
import Cart from '../pages/CartPage.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView
    },
    {
      path: '/student',
      name: 'student',
      component: Student
    },
    {
      path: '/note',
      name: 'note',
      component: Note
    },
    {
      path: '/product',
      name: 'product',
      // route level code-splitting
      // this generates a separate chunk (About.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import('../pages/Product.vue')
    },
    {
      path: '/cart',
      name: 'cart',
      component: Cart
    }
  ]
})

export default router
