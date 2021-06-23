<template>
  <v-container>
    <v-row class="center">
      <v-card
          :loading="loading"
          class="mx-auto my-12"
          max-width="277" height="10"
        >
          <a id="custom-login-btn" @click="kakaoLogin()">
            <img
              src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"
              width="277"
            />
          </a>
        <!-- <v-card-title class="text-align">&nbsp;</v-card-title> -->
        <v-btn v-if="kakaologin_flag" @click="kakaoLogout" width="277">로그아웃</v-btn>
      </v-card>
    </v-row>
  </v-container>
</template>

<script>
// import axios from 'axios'
export default {
  components: {},
  data() {
    return {
      code: "",
      kakaologin_flag: false
    };
  },
  mounted() {
    // Kakao.init('fc3ffc2cce82269dd8b0295c881c7e2c');
    // Kakao.isInitialized();
    // this.kakaoLogout();
  },
  methods: {
    kakaoLogin() {
      window.Kakao.Auth.login({
        scope: "profile, account_email",
        success: this.getKakaoAccount,
      });
    },
    getKakaoAccount() {
      window.Kakao.API.request({
        url: "/v2/user/me",
        success: (res) => {
          const kakao_account = res.kakao_account;
          const nickname = kakao_account.profile.nickname; //카카오 닉네임
          const email = kakao_account.email; //카카오 이메일
          console.log("nickname", nickname);
          console.log("email", email);
          //로그인 처리 구현
          console.log(kakao_account);
          this.$store.commit("user", kakao_account);
          this.kakaologin_flag = true; 
          alert("로그인");
        },
        fail: (error) => {
          // this.$router.push("/errorPage");
          console.log(error);
        },
      });
    },
    kakaoLogout() {
      if (!window.Kakao.Auth.getAccessToken()) {
        console.log("Not logged in.");
        this.kakaologin_flag = false;
        return;
      }
      window.Kakao.Auth.logout((response) => {
        //로그아웃
        console.log("access token:", window.Kakao.Auth.getAccessToken());
        console.log("log out:", response);
        this.kakaologin_flag = false;
        alert("로그아웃");
      });
    },
  },
};
</script>