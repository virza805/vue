
<template>
  <div class=" p-6 ">
  <h1 class="text-4xl mt-4 text-green-600 font-bold">Storage {{ count }}</h1>
  <img class="my-2 mx-auto " alt="Vue logo" src="../assets/box.png " />
  
  <div class="flex justify-center">
    
  <button class="p-1 px-4 bg-red-600 text-center mr-2  text-white rounded-full " @click="$store.commit('increment')">upNumber</button>
  <button class="p-1 bg-blue-900 text-center text-white px-4" @click="$store.commit('decrement')">downNumber</button>
  </div>
 </div>
</template>

<script>
import { mapState } from "vuex";
export default {
    name: "Count",
    computed: mapState(['count']),
  //   data() {
  //       return {
  //           count: 0,
  //       };
  // },

}
</script>

<style>

</style>