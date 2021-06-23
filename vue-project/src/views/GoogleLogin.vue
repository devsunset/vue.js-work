<template>
  <v-container>
    <v-row class="center">
      <v-card
          :loading="loading"
          class="mx-auto my-12"
          max-width="374"
        >
       <div id="google-signin-btn"></div>
        <v-card-title class="text-align">&nbsp;</v-card-title>
        <v-btn v-if="googlelogin_flag" @click="signOut" width="120">로그아웃</v-btn>
      </v-card>
    </v-row>
  </v-container>
</template>

<script>
export default {
  data() {
    return {      
      googlelogin_flag: false
    };
  },
  mounted() {
    window.gapi.signin2.render("google-signin-btn", {onsuccess: this.onSignIn});
  },
  methods: {
    onSignIn (googleUser) {
      const profile = googleUser.getBasicProfile();
      this.googlelogin_flag = true
      console.log("ID: " + profile.getId()); 
      console.log('Full Name: ' + profile.getName());
      console.log('Given Name: ' + profile.getGivenName());
      console.log('Family Name: ' + profile.getFamilyName());
      console.log("Image URL: " + profile.getImageUrl());
      console.log("Email: " + profile.getEmail());
      const id_token = googleUser.getAuthResponse().id_token;
      console.log("ID Token: " + id_token);
    },
    signOut () {
      window.gapi.auth2.getAuthInstance().disconnect();
       this.googlelogin_flag = false
    }
  }
}
</script>