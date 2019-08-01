import Vue from 'vue'
import Router from 'vue-router'
import Index from './views/Index'
import ProjectPage from './views/ProjectPage'
import Detail from './views/Detail'
import TagList from './views/TagList'
import Tags from './views/TagCloud'
Vue.use(Router)

export default new Router({
  routes: [
    {path:"/",component:Index},
    {path:"/ProjectPage",component:ProjectPage},
    {path:"/detail",component:Detail},
    {path:"/tagList",component:TagList},
    {path:"/tags",component:Tags}
  ]
})
