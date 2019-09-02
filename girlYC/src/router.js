import Vue from 'vue'
import Router from 'vue-router'
import Index from './views/Index'
import ProjectPage from './views/ProjectPage'
import Detail from './views/Detail'
import Detailt from './views/Detailt'
import TagList from './views/TagList'
import Tags from './views/TagCloud'
import SpPage from './views/Detailt'
Vue.use(Router)

export default new Router({
  routes: [
    {path:"/",component:Index},
    {path:"/ProjectPage/:type",component:ProjectPage,props:true},
    {path:"/detail/:id",component:Detail,props:true},
    {path:"/detailt/:id",component:Detailt,props:true},
    {path:"/tagList/:tag",component:TagList,props:true},
    {path:"/tags",component:Tags},
    {path:"/SpPage",component:SpPage}
  ]
})
