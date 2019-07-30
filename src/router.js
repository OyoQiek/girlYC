import Vue from 'vue'
import Router from 'vue-router'
import Index from './views/Index'
import ProjectPage from './views/ProjectPage'

Vue.use(Router)

export default new Router({
  routes: [
    {path:"/",component:Index},
    {path:"/ProjectPage",component:ProjectPage}
  ]
})
