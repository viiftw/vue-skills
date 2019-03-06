import Vue from 'vue'
import App from './App.vue'

import VeeValidate from 'vee-validate';
Vue.use(VeeValidate);
import router from './router'

Vue.config.productionTip = false

new Vue({
  router,
  render: h => h(App),
}).$mount('#app')
