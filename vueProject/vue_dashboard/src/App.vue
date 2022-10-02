<template>
  <div class="backend_content_wrapper">
    <div class="content-left-menu">
      <ul>
        <li class="round-logo">
          <router-link to="#"
            ><img src="img/white_round.png" alt="Round"
          /></router-link>
        </li>
        <li>
          <router-link class="active" to="/"
            ><img src="img/home.png" alt="home"
          /></router-link>
        </li>
        <li>
          <router-link to="/about"
            ><img src="img/mane.png" alt="man"
          /></router-link>
        </li>
        <li>
          <router-link to="#"
            ><img src="img/video.png" alt="video"
          /></router-link>
        </li>
        <li>
          <router-link to="#"><img src="img/5.png" alt="video" /></router-link>
        </li>
        <li>
          <router-link to="#"><img src="img/6.png" alt="video" /></router-link>
        </li>
        <li>
          <router-link to="#"><img src="img/7.png" alt="video" /></router-link>
        </li>
        <li>
          <router-link to="#"><img src="img/8.png" alt="video" /></router-link>
        </li>
      </ul>
      <ul>
        <li>
          <router-link to="#"><img src="img/9.png" alt="video" /></router-link>
        </li>
        <li>
          <router-link to="#"
            ><img class="admin-man" src="img/m2.jpg" alt="man"
          /></router-link>
        </li>
      </ul>
    </div>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <router-view />
    </div>
    <!-- /.content-wrapper -->
  </div>
</template>

<style lang="scss">
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
}

nav {
  padding: 30px;

  a {
    font-weight: bold;
    color: #0d60f8;

    &.router-link-exact-active {
      color: #0d60f8;
    }
  }
}
.admin-man {
  width: 35px;
  border: 2px solid #fff;
  border-radius: 30px;
}
</style>
