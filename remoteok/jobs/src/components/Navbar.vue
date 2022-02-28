<template>
  <div class="my-6 flex justify-between max-w-6xl px-2 py-10 mx-auto border-t-4 border-indigo-500 xl:px-0" >
    <h2 class="text-2xl font-semibold text-indigo-500">
      <router-link to="/"> JOB Board </router-link>
    </h2>

    <nav  class="flex items-center gap-4">
      <router-link class="text-base" to="/">
        My posts
      </router-link>
      <router-link class="text-base button" to="/">
        <svg
          xmlns="http://www.w3.org/2000/svg"
          class="w-5 h-5"
          viewBox="0 0 20 20"
          fill="currentColor"
        >
          <path />
        </svg>
        <span>Post a job</span>
      </router-link>

      <div class="relative flex gap-1">
        <button >Hi, </button>
        <div  
          class="flex flex-col w-40 items-start bg-white shadow-md rounded-md gap-2 absolute top-[100%] right-0 p-6"
        >
          <router-link to="/">Settings</router-link>
          <button  >Logout</button>
        </div>
      </div>
    </nav>
    <nav class="flex items-center gap-4">
      <router-link class="text-base" :to="{ name: 'auth.login' }">Login</router-link>
      <router-link class="text-base button" :to="{ name: 'auth.register' }">
        <svg
          xmlns="http://www.w3.org/2000/svg"
          class="w-5 h-5"
          viewBox="0 0 20 20"
          fill="currentColor"
        >
          <path />
        </svg>
        <span>Join</span>
      </router-link>
    </nav>
  </div>
</template>

<script setup>

</script>

<style>

</style>