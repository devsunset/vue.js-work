<template>
  <v-container>
    <v-row class="text-center">

      <v-col cols="12">
        <v-img
          :src="vue_logo"
          class="my-3"
          contain
          height="70"
        />
      </v-col>

      <v-col class="mb-4">
        <h1 class="display-2 font-weight-bold mb-3">
          <div>Vue.js 3</div>
        </h1> 
      </v-col>

      <v-col cols="12">
        <v-img
          :src="vuetify_logo"
          class="my-3"
          contain
          height="70"
        />
      </v-col>

      <v-col class="mb-4">
        <h1 class="display-2 font-weight-bold mb-3">
          <div>Vuetify 3 Alpha</div>
        </h1>
      </v-col>
      
    </v-row>
  </v-container>
</template>

<script>
import vue_logo from '../assets/logo.png'
import vuetify_logo from '../assets/logo.svg'

export default {
  name: 'HelloWorld',

  data: () => ({
    vue_logo,
    vuetify_logo
  }),
}
</script>
