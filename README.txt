--------------------------------------------------------------------------------

			# VUEJS-STUDY #

--------------------------------------------------------------------------------

--- Vue.js Reference ---

[[Vue.js]]
https://v3.vuejs.org/
https://v3.ko.vuejs.org/

[[Documentation]]
https://v3.ko.vuejs.org/guide/introduction.html
https://v3.ko.vuejs.org/style-guide/
https://v3.ko.vuejs.org/cookbook/
https://v3.ko.vuejs.org/examples/markdown.html
https://v3.ko.vuejs.org/guide/contributing/writing-guide.html
https://v3.ko.vuejs.org/guide/migration/introduction.html#%E1%84%80%E1%85%A2%E1%84%8B%E1%85%AD

[[Api]]
https://v3.ko.vuejs.org/api/

[[Project]]
https://cli.vuejs.org/
https://next.router.vuejs.org/
https://next.vuex.vuejs.org/
https://github.com/axios/axios
https://xn--xy1bk56a.run/axios/

https://bootstrap-vue.org/
https://vuetifyjs.com/en/

https://nuxtjs.org/

https://github.com/vuejs/vue-devtools

[[Reference]]
Book source
https://github.com/seungwongo/vue-project
https://github.com/seungwongo/mini-project-shop

--------------------------------------------------------------------------------

### Vue.js ###

*Visual Stdudio Code Install
  - Excention
    Vetur
	  Debugger for Chrome
	  Prettier - Code fomatter

* Node.js & NPM Install

* Vue CLI Install
  - npm install -g @vue/cli
		npm install -g package_name
		npm install package_name --save

* Vue Project Create
  - vue create vue-preoject (default)
  - vue create vue-project-manually 
  - vue ui (vue-project-manager)

* Vue Cli service Install
  - cd vue_project
  - vue add @vue/cli-service

* Vue Route Install
  - cd vue_project
  - vue add router

* Vuex Install
  - cd vue_project
  - npm install vuex@next --save
  - npm install --save vuex-persistedstate

* Axios Install
  - cd vue_project
  - npm install axios --save

/* 

-- Skip -- (Vue3 not support)

* BootstrapVue Install
  - cd vue_project
  - npm install vue bootstrap bootstrap-vue  --save

* Vuetify 3 Alpha Install
  - cd vue_project
  - vue add vuetify

*/


--------------------------------------------------------------------------------

### Snippets
* Code -> Preference -> User Snippets -> vue (select)
- setting snippet
{
	// Place your snippets for vue here. Each snippet is defined under a snippet name and has a prefix, body and 
	// description. The prefix is what is used to trigger the snippet and the body will be expanded and inserted. Possible variables are:
	// $1, $2 for tab stops, $0 for the final cursor position, and ${1:label}, ${2:another} for placeholders. Placeholders with the 
	// same ids are connected.
	// Example:
	// "Print to console": {
	// 	"prefix": "log",
	// 	"body": [
	// 		"console.log('$1');",
	// 		"$2"
	// 	],
	// 	"description": "Log output to console"
	// }
	"Generate Basic Vue Code" : {
		"prefix" : "vue-start",
		"body" : [
			"<template>",
			"</template>",
			"",
			"<script>",
			"	export default {",
			"		name : '',",
			"		components : {},"
			"		data() {",
			"			return {",
			"				sampleData: ''",
			"			};",
			"		},",
			"		setup() {},",
			"		beforeCreate() {},",
			"		created() {},",
			"		beforeMount() {},",
			"		mounted() {},",
			"		beforeUpdate() {},",
			"		updated() {},",
			"		beforeUnmount() {},",
			"		unmounted() {},",
			"		methods : {}",
			"	}",
			"</script>",
			"",
			"<style scoped>",
			"</style>"
		],
		"description" : "Generate Basic Vue Code"
	}
}

### cors
// Node.js express 
app.all('/*', function(req ,res ,next){
    res.header("Access-Control-Allow-Origin","*");
    res.header("Access-Control-Allow-Headers","X-Requested-With");
}

const cors = require('cors');

let corsOption = {
    origin: 'http://localhost:8080'.
    credentials: true
}
app.use(cors(corsOption());

// minins.js
import axios from 'axios';
axios.defaults.baseURL = 'http://localhost:3000';
axios.defaults.headers.post['Content-Type'] = 'application/json;charset=utf-8';
axios.defaults.headers.post['Access-Control-Allow-Origin'] = '*';

// vue.config.js
const target = 'http://127.0.0.1:3000';

module.exports = {
    devServer: {
        port : 8080,
        proxy: {
            // proxy reques api
            '^/api' : {
                target,
                changeOrigin: true
            }
        }
    }
}

### Browser bootstrap
  - add index.html 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

### Error: ENOSPC: System limit for number of file watchers reached
https://anencore94.github.io/2020/08/20/react-error-01.html
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
-> restart 