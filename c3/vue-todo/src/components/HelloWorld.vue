<template>
  <div class="bg-gray-100 border-2 p-2 text-center m-3">
    <h2 class="text-3xl font-medium">My Name is {{ name }}</h2>
    <h2 class="text-2xl font-medium">Age: {{ age }} years</h2>
    
    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Accusamus obcaecati beatae voluptatibus eligendi, dolor itaque porro voluptatem ipsum veniam hic aut corporis, sed adipisci temporibus natus provident, deserunt soluta optio?</p>
  </div>
</template>

<script>
export default {
  props: ["name", "age"],
  // props: {
  //   name:{
  //     type: String,
  //     default:"virza",
  //   },
  //   age:{
  //     type: Number,
  //     default:"22",
  //   }
  // },
}
</script>

<style>

</style>