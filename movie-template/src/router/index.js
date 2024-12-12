import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '@/components/index'

import toplayMovie from '@/components/toPlayMovie/playMovie'




Vue.use(VueRouter)

const routes = [
       {path:'/',redirect: '/index'},
      {name:'index',path:'/index',component:Index},
     
      {path:'/toplayMovie',component:toplayMovie},
     
]

const router = new VueRouter({
  routes
})

export default router