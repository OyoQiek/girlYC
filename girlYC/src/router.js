import Vue from 'vue'
import Router from 'vue-router'
import Index from './views/Index'
import ProjectPage from './views/ProjectPage'
import Detail from './views/Detail'
import TagList from './views/TagList'
import Tags from './views/TagCloud'
import SpPage from './views/Detailt'
Vue.use(Router)

export default new Router({
  routes: [
    {path:"/",component:Index},
    {path:"/ProjectPage/:type",component:ProjectPage,props:true},
    {path:"/detail",component:Detail},
    {path:"/tagList",component:TagList},
    {path:"/tags",component:Tags},
    {path:"/SpPage",component:SpPage}
  ]
})
