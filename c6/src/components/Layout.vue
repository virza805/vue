<template>
  <div class="app-container">
      <Header />
      <div class="flex justify-center -space-x-20 my-5">
        <div class="mix-blend-multiply h-40 w-40 bg-blue-400 rounded-full"></div>
        <div class="mix-blend-multiply h-40 w-40 bg-pink-400 rounded-full"></div>
      </div>
     

    <h1 class="text-center text-4xl border-b-4 pb-4 border-indigo-700 ">
        <slot name="app-title">
        Tailwind CSS ToDos
        </slot>
    </h1>
      <slot />
  </div>
</template>

<script>
import { computed, ref } from 'vue'
import Header from './Header.vue'
export default {
  components: { Header },

}
</script>

<style>

</style>