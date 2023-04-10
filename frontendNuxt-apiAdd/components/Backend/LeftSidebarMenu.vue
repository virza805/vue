<template>
  <div class="sidebar">
    <ul class="left_sidebar">
      <li class="  ">
        <nuxtLink to="/backend/abimg" class="dropdown-btn active flex">TestUploadImg <img src="~/assets/img/chevron-down.png" alt=""></nuxtLink>

        <!-- <ul class="dropdown-container">
          <li class=" ">
            <nuxtLink to="/backend" > Dashboard </nuxtLink>
          </li>
          <li class=" ">
            <nuxt-link class="" to="/backend/profile">My Profile</nuxt-link>
          </li>
          <li class=" ">
            <nuxt-link to="/backend/contactMessage"> All contactEmail</nuxt-link>
          </li>
        </ul> -->
      </li>

      <li class="  ">
        <nuxtLink to="#" class="dropdown-btn active flex">Dashboard <img src="~/assets/img/chevron-down.png" alt=""></nuxtLink>

        <ul class="dropdown-container">
          <li class=" ">
            <nuxtLink to="/backend" > Dashboard </nuxtLink>
          </li>
          <li class=" ">
            <nuxt-link class="" to="/backend/profile">My Profile</nuxt-link>
          </li>
          <li class=" ">
            <nuxt-link to="/backend/contactMessage"> All contactEmail</nuxt-link>
          </li>
        </ul>
      </li>

      <li class="">
        <a href="#" class="dropdown-btn active">All user	&dArr;</a>
        <ul v-if=" $auth.user.role == 1" class="dropdown-container">
          <li class=" ">
            <nuxt-link to="/backend/showUser"> Show All user</nuxt-link>
          </li>
          <li class=" ">
            <nuxt-link to="/backend/addUser"> Add User</nuxt-link>
          </li>
        </ul>
        <ul v-else class="dropdown-container">
          <li class=" ">
            <h4 class="text-red-600 ">Only for Super Admin</h4>
          </li>
        </ul>
      </li>

      <li class="  ">
        <a href="#" class="dropdown-btn active">Slider Data	&dArr;</a>
        <ul class="     dropdown-container">
          <li class=" ">
            <nuxt-link to="/backend/showSlider"> Show Slider Data</nuxt-link>
          </li>
          <li class=" ">
            <nuxt-link to="/backend/addSlider"> Add Slider</nuxt-link>
          </li>
        </ul>
      </li>

      <li class="  ">
        <a href="#" class="dropdown-btn active">Category Data	&dArr;</a>
        <ul class="     dropdown-container">
          <li class=" ">
            <nuxt-link to="/backend/showCategory"> Show Category Data</nuxt-link>
          </li>
          <li class=" ">
            <nuxt-link to="/backend/addCategory"> Add Category</nuxt-link>
          </li>
        </ul>
      </li>

      <li class="  ">
        <a href="#" class="dropdown-btn active">Product Data	&dArr;</a>
        <ul class="     dropdown-container">
          <li class=" ">
            <nuxt-link to="/backend/showProduct"> Show Product Data</nuxt-link>
          </li>
          <li class=" ">
            <nuxt-link to="/backend/addProduct"> Add Product</nuxt-link>
          </li>
        </ul>
      </li>

      <li class="  ">
        <a href="#" class="dropdown-btn active">Task List 	&dArr;</a>
        <ul class="     dropdown-container">
          <li class=" ">
            <nuxt-link to="/backend/taskList"> All Task</nuxt-link>
          </li>
          <li class=" ">
            <nuxt-link to="/backend/addTask"> Add Task</nuxt-link>
          </li>

        </ul>
      </li>


      <li class="  ">
        <a href="#" class="dropdown-btn active">Footer Data	&dArr;</a>
        <ul v-if=" $auth.user.role == 1" class="dropdown-container">
          <li class=" ">
            <nuxt-link to="/backend/showFooter"> Show Footer Data</nuxt-link>
          </li>
          <li class=" ">
            <nuxt-link to="/backend/addFooter"> Add Footer</nuxt-link>
          </li>
          <li class=" ">
            <nuxt-link to="/backend/addFooterTop"> Add Footer Top</nuxt-link>
          </li>

        </ul>
        <ul v-else class="dropdown-container">
          <li class=" ">
            <h4 class="text-red-600 ">Only for Super Admin</h4>
          </li>
        </ul>
      </li>

    </ul>
  </div>
</template>
<script>
  export default {
    head: {
      // script: [{
      //   type: 'text/javascript',
      //   src: "/js/backend_left_sidebar_menu.js",
      //   body: true,
      //   async: true,
      //   crossorigin: "anonymous"
      //   },
      // ],
    }

  }

</script>

<style scoped>

</style>
