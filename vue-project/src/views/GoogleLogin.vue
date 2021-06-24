<template>
  <div>
    <div  class="text-center" >
   <div class="card text-center" style="width: 18rem;">
      <div class="card-header">
        Google
      </div>
      <div class="card-body">
          <div id="google-signin-btn"></div>
          <a href="#" class="btn btn-primary mt-1" type="button" v-if="googlelogin_flag" @click="signOut">Log out</a>
      </div>
    </div>
    </div>
  </div>
</template>



<script>
export default {
  data() {
    return {      
      googlelogin_flag: false
    };
  },
  mounted() {
    window.gapi.signin2.render("google-signin-btn", {width:222,height:48,theme:'dark',onsuccess: this.onSignIn});
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
      // alert("Log in success.");
    },
    signOut () {
      window.gapi.auth2.getAuthInstance().disconnect();
      this.googlelogin_flag = false
      // alert("Log out success.");
    }
  }
}
</script>
