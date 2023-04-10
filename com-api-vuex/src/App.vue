
<script setup>
import { RouterLink, RouterView } from 'vue-router'

</script>

<template>
  <header>
    <div class="wrapper">

      <nav>
        <RouterLink to="/">Home</RouterLink>
        <RouterLink to="/student">Student</RouterLink>
        <RouterLink to="/note">Notes</RouterLink>
        <RouterLink to="/product">Product</RouterLink>
        <RouterLink to="/cart">Cart ({{cartQty}})</RouterLink>
      </nav>
    </div>
  </header>

  <RouterView />
</template>

<script>

import { mapGetters } from 'vuex'
export default {
  
  computed:{
      ...mapGetters('products', ['cartQty'])
  },
}
</script>

<style>
nav a {
    text-align: center;
    text-decoration: none;
    padding: 5px 10px;
    margin: 0 10px;
    background: #c300ff;
    color: #fff;
}

nav {
    margin: 30px auto;
    text-align: center;
}
</style>
