<template>
  <div>

    <!-- About us Start now -->
    <h2 class="mt-14 text-4xl text-red-500 font-bold text-center">About Us</h2>
    <div class="flex items-center justify-center py-12 lg:px-4 sm:px-6 mb-20 ">
      <div class="w-5/6 lg:w-11/12 flex flex-wrap flex-col-reverse lg:flex-row ">

        <div class="w-full lg:w-1/2 p-3 mb-10 border-2 border-dashed rounded-sm border-green -ml-2 mr-2">
          <div>

    <h2 class="my-8 text-3xl flex items-center font-bold text-center">About our history <img class="" src="~/assets/img/carousel-img-2.png" alt="fish"></h2>

            HISTORY, PURPOSE AND USAGE
Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins with:

“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”
The purpose of lorem ipsum is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn't distract from the layout. A practice not without controversy, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.

The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it's seen all around the web; on templates, websites, and stock designs. Use our generator to get your own, or read on for the authoritative history of lorem ipsum.

          </div>

        </div>

        <div class="w-full lg:w-1/2 p-3 mb-10 border-2 border-dashed rounded-sm border-green -mr-2 ml-2">

          <div>

            <img class=" mx-auto" src="~/assets/img/promo-bg-2.png" alt="Phone">
          </div>

        </div>

      </div>
    </div>

      <img class=" text-center mx-auto" src="~/assets/img/vegetable-collection.png" alt="Phone">
    <!-- About us Start now -->



<div class="max-w-md mx-auto bg-gray-50 rounded-xl shadow-md overflow-hidden md:max-w-7xl md:w-full">
  <div class="md:flex">
    <div class="md:shrink-0">
      <img class="h-48 w-full object-cover md:h-full md:w-48" src="~/assets/img/Thanks.jpg" alt="Man looking at item at a store">
    </div>
    <div class="p-8">
      <div class="uppercase tracking-wide text-sm text-indigo-500 font-semibold">Case study</div>
      <a href="#" class="block mt-1 text-lg leading-tight font-medium text-black hover:underline">Finding customers for your new business</a>
      <p class="mt-2 text-slate-500">Getting a new business off the ground is a lot of hard work. Here are five ideas you can use to find your first customers.</p>
    </div>
  </div>
</div>




    <ContactInfo />

<div class="container">
  <div class="flex flex-wrap md:-mx-4 mb-10">
    <!-- {{ footer_top_list.data }} -->
        <!-- <div v-for="footer_top in footer_top_list.data" :key="footer_top.id" class="w-full my-2 lg:w-1/4 px-4 flex items-center">
          <div class="min-w-max mr-4">
            <img width="80" src="~/assets/img/customer-support.png" alt="">
          </div>
          <div class="w-full">
            <h3 class="text-xl font-medium mb-2">{{ footer_top.title }}</h3>
            {{ footer_top.dec }}
          </div>
        </div> -->


  </div><!-- end 1 -->
</div>

  </div>
</template>

<script>
import ContactInfo from '../components/ContactInfo.vue';
  export default {
    head: {
        title: "About",
    },
    components: { ContactInfo },

    data() {
      return {
        footer_top_list: {},
        data: [],
      }
    },
    created: function(){
      this.getTopData();
    },

    methods: {


      async getTopData() {
        this.load = true;
        let r = await this.$axios.$get('/api/all/client-footer-top?page=')
        this.footer_top_list = r.data;
        // this.total = r.total;
        // this.per_page = r.per_page;

        this.load = false;
      },
    }
}

</script>

<style scoped>

</style>
