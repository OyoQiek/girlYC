import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import MyHeader from './components/Header'
import Footer from './components/Footer'
import axios from 'axios'
axios.defaults.baseURL="http://127.0.0.1:3000/"
axios.defaults.withCredentials=true
Vue.prototype.axios=axios;
Vue.component("my-header",MyHeader)
Vue.component("Footer",Footer)
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
