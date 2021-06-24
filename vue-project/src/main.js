import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import mixins from './mixins'
import i18nPlugin from './plugins/i18n' 

const i18nStrings = {
  en: {
    hi: 'Hello!'
  },
  ko: {
    hi: '안녕하세요!'
  }
}

//createApp(App).use(router).mount('#app')
const app = createApp(App)
app.use(router)
app.use(store)
app.use(i18nPlugin, i18nStrings) 
app.mixin(mixins)

app.directive('focus',{
  mounted(el){
    el.focus()
  }
})
app.mount('#app')
window.Kakao.init("fc3ffc2cce82269dd8b0295c881c7e2c");