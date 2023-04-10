<template>
<div class="p-8">
  <h2 class="my-6 pb-8 text-4xl text-red-500 font-bold text-center">Now Search Product <input
    type="text"
    class="form-control w-50 border border-red-600 rounded-2xl"
    @keyup="search($event.target.value)"
    placeholder="search.."
  /></h2>

  <div class="container">
    <div class="w-full p-3 mb-10 border-2 border-dashed shadow-sm rounded-2xl border-green-100 ">
          <img class="w-full mx-auto rounded-2xl" src="~/assets/img/froots.png" alt="Thanks" />
        </div>

        <div class="flex flex-wrap ">
          <div v-if="load" class="text-xl my-3 text-red-400 font-medium text-center "> Loading ... .. .</div>

          <div v-for="product in product_list.data" :key="product.id" class="w-1/2 md:w-1/4 px-4 mb-10">

            <div class="single-bs-product">
              <div class="h-80  relative mb-6">
                <div class="h-full bg-gray-50 flex justify-center items-center p-4">
                  <img class="mx-auto w-auto" src="~/assets/img/carousel-img-1.png" alt="Workflow" />
                </div>

                <div class="product-img-hover absolute h-full w-full top-0 left-0 flex justify-center items-center">
                  <div class="bg-black absolute h-full w-full opacity-60"></div>
                  <button @click.prevent="productDetails"
                    class=" absolute left-0 bottom-0 bg-gray-200 p-2 w-full flex items-center justify-center">Details
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24"
                      stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                        d="M17 8l4 4m0 0l-4 4m4-4H3" />
                    </svg>
                  </button>

                </div>
              </div>

              <h4 class="text-xl mb-3">{{ product.name }}</h4>
              <p><span class="font-medium bs-dark-orange-color">$ {{ product.price }} </span> <del
                  class="text-gray-400">${{ product.sell_price }}</del></p>

            </div>
          </div>
        </div>

        <div class="text-center mb-10">
          <pagination v-model="page" :records="total" :per-page="per_page" @paginate="getProductData"></pagination>
        </div>
  </div>
</div>
</template>

<script>
export default {
  head: {
    title: "Search",
  },
  data() {
    return {

      page: 1,
      data: [],
      per_page: 0,
      total: 0,
      product_list: {},
      search_key: '',
    }
  },

  created: function(){
    this.getProductData();
  },

  methods: {

// Product Show with paginate data
    async getProductData(page = 1) {
      this.load = true;
      let url = `/api/all/client-product?page=${page}`;
      if(this.search_key.length > 0) {
        url += `&key=${this.search_key}`;
      }

      let r = await this.$axios.$get(url)
      this.product_list = r.data;
      this.total = r.data.total;
      // console.log(this.total)
      this.per_page = r.data.per_page;
      this.load = false;

    },

    search: function(key){
      // console.log(key);
      this.search_key = key;
      this.getProductData();
    },

  },

}
</script>

<style>

</style>
