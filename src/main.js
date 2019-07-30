import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import MyHeader from './components/Header'
import Footer from './components/Footer'
Vue.component("my-header",MyHeader)
Vue.component("Footer",Footer)
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
