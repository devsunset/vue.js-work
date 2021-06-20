import { createRouter, createWebHistory } from 'vue-router'
import Home from '../views/Home.vue'
// import Example from '../views/Example.vue'

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  },
  // {
  //   path: '/example',
  //   name: 'Example',
  //   component: Example

  // }
  {
    path: '/example',
    name: 'Example',
    component: () => import(/* webpackChunkName: "example" */ '../views/Example.vue')
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
