<template>
  <v-app>

    <v-app-bar density="compact">
      <v-spacer></v-spacer>
      <v-btn normal><router-link class="routerLink" to="/">Home</router-link></v-btn>
      <v-btn normal><router-link class="routerLink" to="/example">Example</router-link></v-btn>
      <v-btn normal><router-link class="routerLink" to="/login">KaKao</router-link></v-btn>
      <v-btn normal><router-link class="routerLink" to="/naverlogin">Naver</router-link></v-btn>
      <v-btn normal><router-link class="routerLink" to="/googlelogin">Google</router-link> </v-btn>
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