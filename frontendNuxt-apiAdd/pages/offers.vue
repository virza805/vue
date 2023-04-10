<template>

  <div>

    <h2 class="my-14 text-4xl text-red-500 font-bold text-center">Offers Page</h2>
    <div class="w-full p-3 mb-10 border-2 border-dashed shadow-sm rounded-2xl border-green-100 ">
      <img class="w-full mx-auto rounded-2xl" src="~/assets/img/cover.jpg" alt="Thanks" />
    </div>


    <div class="max-w-md mx-auto bg-white rounded-xl shadow-md overflow-hidden md:max-w-2xl">
      <div class="md:flex">
        <div class="md:shrink-0">
          <img class="h-48 w-full object-cover md:h-full md:w-48" src="~/assets/img/Thanks.jpg"
            alt="Man looking at item at a store">
        </div>
        <div class="p-8">
          <div class="uppercase tracking-wide text-sm text-indigo-500 font-semibold">Case study</div>
          <a href="#" class="block mt-1 text-lg leading-tight font-medium text-black hover:underline">Finding customers
            for your new business</a>
          <p class="mt-2 text-slate-500">Getting a new business off the ground is a lot of hard work. Here are five
            ideas you can use to find your first customers.</p>
        </div>
      </div>
    </div>

  </div>
</template>

<script>
  export default {
    head: {
      title: "Offers",
    },


  }

</script>

<style scoped>

</style>
