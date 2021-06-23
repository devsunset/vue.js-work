<template>
  <v-app>
    
    <v-app-bar density="compact">
      <v-app-bar-title>Vue.js & Vuetify</v-app-bar-title>
      <v-spacer></v-spacer>
      <v-divider inset vertical></v-divider>
      <v-btn color="secondary"><router-link to="/">Home</router-link></v-btn>
      <v-divider inset vertical></v-divider>
      <v-btn color="secondary"><router-link to="/example">Example</router-link></v-btn>
      <v-divider inset vertical></v-divider>
      <v-btn color="secondary"><router-link to="/login">KaKao Login</router-link></v-btn>
      <v-divider inset vertical></v-divider>
      <v-btn color="secondary"><router-link to="/naverlogin">Naver Login</router-link></v-btn>
      <v-divider inset vertical></v-divider>
      <v-btn color="secondary"><router-link to="/googlelogin">Google Login</router-link> </v-btn>
      <v-divider inset vertical></v-divider>
      <v-spacer></v-spacer>
    </v-app-bar>

    <v-main>
      <router-view/>
    </v-main>

  </v-app>
</template>

<script>
export default {
  name: 'App',

  data: () => ({
    //
  }),
}
</script>