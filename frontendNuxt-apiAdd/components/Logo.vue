<template>
  <nuxt-link to="/" class="flex md:font-size-32 text-xl font-medium items-center">
    <!-- <div v-if="load" class="text-xl text-red-400 font-medium text-center ">Logo Loading ... .. .</div> -->
    <img width="80" class="mr-3" :src="$axios.defaults.baseURL + '/storage/uploads/' + logo_data.logo" alt="">
    Bengal shop
  </nuxt-link>
</template>

<script>
  export default {
    name: "Logo",
    data() {
      return {
	      data: [],
        logo_data: {},
        load: false,
      }
    },
    created: function(){
      this.getLogo();
    },

    methods: {
      async getLogo() {
        // this.load = true;
        let r = await this.$axios.$get('/api/all/client-footer')
        this.logo_data = r.data;

        // this.load = false;
      }
    },
  }

</script>

<style>

</style>
