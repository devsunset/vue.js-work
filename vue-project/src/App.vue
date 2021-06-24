<template>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <router-link class="nav-link" to="/">Home</router-link>
            </li>
            <li class="nav-item">
              <router-link class="nav-link active" to="/example">Example</router-link>
            </li>
            <li class="nav-item">
              <router-link class="nav-link" to="/login">KaKao Login</router-link>
            </li>
            <li class="nav-item">
              <router-link class="nav-link" to="/naverlogin">Naver Login</router-link>
            </li>
            <li class="nav-item">
              <router-link class="nav-link" to="/googlelogin">Google Login</router-link>
            </li>
          </ul>
        </div>
      </div>
  </nav>
  <router-view/>
</template>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>