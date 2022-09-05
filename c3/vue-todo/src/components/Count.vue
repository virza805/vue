<template>
  <div class=" p-6 ">
  <h1 class=" text-4xl text-center text-green-600">Hello {{ count }}</h1>
  <img alt="Vue logo" src="./assets/logo.png" />
  <div class="flex justify-center">
    
  <button class="p-1 px-4 bg-red-600 text-center mr-2  text-white rounded-full " @click="count++">upNumber</button>
  <button class="p-1 bg-blue-900 text-center text-white px-4" @click="count--">downNumber</button>
  </div>
 </div>
</template>

<script>
export default {
    name: "Count",
    data() {
        return {
            count: 0,
        };
  },

}
</script>

<style>

</style>