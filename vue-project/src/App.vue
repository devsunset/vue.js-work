<template>
  <v-app>

    <v-app-bar density="compact">
      <v-app-bar-title>Vue.js & Vuetify</v-app-bar-title>
      <v-spacer></v-spacer>
      <v-btn normal><router-link class="routerLink" to="/">Home</router-link></v-btn>
      <v-btn normal><router-link class="routerLink" to="/example">Example</router-link></v-btn>
      <v-btn normal><router-link class="routerLink" to="/login">KaKao Login</router-link></v-btn>
      <v-btn normal><router-link class="routerLink" to="/naverlogin">Naver Login</router-link></v-btn>
      <v-btn normal><router-link class="routerLink" to="/googlelogin">Google Login</router-link> </v-btn>
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

<style scoped>
.routerLink{
     text-decoration: none;
 }
</style>