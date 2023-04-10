<template>
  <div>
    <div class="container">
      <div class="flex flex-wrap md:-mx-4 mb-10">
        <div v-for="footer_top in footer_top_list.data" :key="footer_top.id" class="w-full my-2 lg:w-1/4 px-4 flex items-center">
          <div class="min-w-max mr-4">
            <!-- <div style="background-image: url({{'/storage/uploads/'. $gallery->name}})" class="single-gallery-item bg-cover bg-center"></div> -->
            <!-- <img style="max-width: 100%; height: 70px; width: 100px;" src="{{'/storage/uploads/' .$property->featured_image}}" alt=""></img> -->
            <!-- <img style="max-width: 100%; height: 70px; width: 100px;" src="{{ asset('/storage/uploads/' . $gallery->name) }}" alt=""></img> -->
            <img width="80" :src="$axios.defaults.baseURL + '/storage/uploads/' + footer_top.icon_img" alt="">
            <!-- <img width="80" src="~/assets/img/customer-support.png" alt=""> baseURL = http://127.0.0.1:8000-->
          </div>
          <div class="w-full">
            <h3 class="text-xl font-medium mb-2">{{ footer_top.title }}</h3>
            {{ footer_top.description }}
          </div>
        </div>

      </div><!-- The End Footer Top -->

    </div>
    <div class="bg-gray-200 pt-20">
      <div class="container">

        <div v-if="load" class="text-xl text-red-400 font-medium text-center "> Loading ... .. .</div>
        <div class="lg:flex flex-wrap">
          <div class="w-full p-1 lg:w-1/4 my-5">
            <Logo />
            <p class="my-4  text-sm  md:pr-10"> {{ footer_data_list.description }} </p>


            <!-- <div class="flex">
              <a href="/" class="mr-4"><img src="~/assets/img/playstore.png" alt=""></a>
              <a href="/"><img src="~/assets/img/appstore.png" alt=""></a>
            </div> -->
          </div>
          <div class="w-full p-1 lg:pl-14 lg:w-1/4 my-5">
            <h3 class="text-2xl mb-6">Quick Links</h3>
            <ul class="leading-loose text-sm ">
              <li>
                <nuxt-link class="mt-2" to="/about">About</nuxt-link>
              </li>
              <li>
                <nuxt-link class="mt-2" to="/contact">Contact</nuxt-link>
              </li>
              <li>
                <nuxt-link class="mt-2" to="/category">Category</nuxt-link>
              </li>
              <li>
                <nuxt-link class="mt-2" to="/faq">Terms & Conditions</nuxt-link>
              </li>
            </ul>
          </div>
          <div class="w-full p-1 lg:w-1/4 my-5">
            <h3 class="text-2xl mb-6">Contact Info.</h3>
            <ul class="leading-loose text-sm ">
              <li>
                <a class="mt-2 flex items-center hover:text-green-600 "  :href="`tel:`+footer_data_list.phone" target="_blank">
                  <PhoneCallIcon size="20" class="text-primaryGreen mr-1"></PhoneCallIcon>
                  <!-- <p class="">01795815660</p> -->
                  <p class=""> {{ footer_data_list.phone }} </p>
                </a>
              </li>
              <li>
                <a class="mt-2 flex items-center hover:text-green-600 "    :href="`mailto:`+footer_data_list.email" target="_blank">
                  <MailIcon size="20" class="text-primaryGreen mr-1"></MailIcon>
                  <!-- <p class="">viza.bd@gmail.com</p> -->
                  <p class="">{{ footer_data_list.email }}</p>
                </a>
              </li>
              <li>
                <a class="mt-2 flex items-start hover:text-green-600 "
                  :href="footer_data_list.instagram" target="_blank">
                  <HomeIcon size="20" class="text-primaryGreen mt-2 mr-1"></HomeIcon>
                  <!-- <p class="">East Rajation Saver, Dhaka - 1340, Bangladesh.</p> -->
                  <p class="">{{ footer_data_list.address }}</p>
                </a>
              </li>
              <li>
                <!-- <a  class="underline text-primaryGreen " :href="`tel:`+book.phone" target="_blank">{{ book.phone }}</a> -->
              </li>

            </ul>
          </div>
          <div class="w-full p-1 lg:w-1/4 my-5">
            <h3 class="text-2xl mb-6 flex  items-start ">
              <ClockIcon size="24" class="text-primaryGreen mt-2 mr-1"></ClockIcon> Opening Hours
            </h3>
            <ul class="leading-loose text-sm ">
              <li  v-for="open_hour in footer_open_time.data" :key="open_hour.id" >
                <nuxt-link class="mt-2" to="/"><b>{{ open_hour.title }}</b>:
                {{ open_hour.description }}
                </nuxt-link>
              </li>

            </ul>
            <div class="flex flex-wrap">
              <a class="socilLink" :href="footer_data_list.fb" target="_blank">
                <FacebookIcon size="30" class="socilIcon">
                </FacebookIcon>
              </a>
              <a class="socilLink " :href="footer_data_list.linkedin" target="_blank">
                <LinkedinIcon size="30" class="socilIcon">
                </LinkedinIcon>
              </a>
              <a class="socilLink " :href="footer_data_list.twitter" target="_blank">
                <TwitterIcon size="30" class="socilIcon">
                </TwitterIcon>
              </a>
              <a class="socilLink " :href="footer_data_list.instagram" target="_blank">
                <InstagramIcon size="30" class="socilIcon">
                </InstagramIcon>
              </a>
              <a class="socilLink " :href="footer_data_list.github" target="_blank">
                <GithubIcon size="30" class="socilIcon">
                </GithubIcon>
              </a>
              <a class="socilLink " :href="footer_data_list.web" target="_blank">
                <GlobeIcon size="30" class="socilIcon">
                </GlobeIcon>
              </a>
            </div>
          </div>

        </div>
      </div>

      <div class="container border-t border-gray-50">
        <div class="w-full text-center py-4 text-xs">
          <a href="https://vue-feather-icons.egoist.sh/" target="_blank">@</a>{{ footer_data_list.copy_right }}
          <!-- 2022 Copyright All Right Reserved by Bengal Shop -->
        </div>
      </div>
    </div>

    <!-- Product details modal StartNow -->
    <div v-if="modal" class="fixed w-full h-full min-h-screen z-30 top-0 left-0">
      <div @click.prevent="modalClose" class="absolute bg-black opacity-60 h-full w-full top-0 left-0"></div>
      <div class="bs-modal-body bg-white rounded-2xl p-8 relative mx-auto z-30 my-10">
        <svg @click.prevent="modalClose" xmlns="http://www.w3.org/2000/svg"
          class="h-6 w-6 absolute right-5 top-5 cursor-pointer" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
        </svg>


        <div class="flex -mx-8">
          <div class="w-1/2 px-8">
            <img :src="product.image" />
          </div>
          <div class="w-1/2 px-8">
            <p class="text-sm mb-3"><span class="uppercase text-gray-400 pr-6">Status</span> <span
                class="bs-dark-green-color">In Stock</span></p>
            <!-- <h3 class="text-2xl">{{product}}</h3> -->
            <h3 class="text-2xl">{{product.name}}</h3>
            <p class="text-xs text-gray-400 mb-4 mt-2"><b>7</b> items available.</p>
            <p class="text-2xl font-bold">${{ product.sale }} <del
                class="font-normal text-gray-400">${{ product.price }}</del></p>
            <div class="flex my-6">
              <input type="number" class="w-10 border border-gray-200 mr-5 text-center" value="1">
              <button class="bs-button">Add to cart</button>
            </div>

            <div class="flex border-b border-gray-200 justify-between text-sm pb-3 mb-8">
              <p class="flex items-center"><img src="~/assets/img/heart.png" class="w-4 mr-3" alt=""> Add to favourites
              </p>
              <p class="flex items-center">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-3" fill="none" viewBox="0 0 24 24"
                  stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M8.684 13.342C8.886 12.938 9 12.482 9 12c0-.482-.114-.938-.316-1.342m0 2.684a3 3 0 110-2.684m0 2.684l6.632 3.316m-6.632-6l6.632-3.316m0 0a3 3 0 105.367-2.684 3 3 0 00-5.367 2.684zm0 9.316a3 3 0 105.368 2.684 3 3 0 00-5.368-2.684z" />
                </svg>
                Share
              </p>
            </div>

            <div class="text-xs leading-loose">
              <p><span class="uppercase text-gray-400 w-20 inline-block">Sku:</span>
                {{ product.sku }}
              </p>
              <p><span class="uppercase text-gray-400 w-20 inline-block">category:</span>

                <span v-for="item in product.categories" :key="item.id">
                  <nuxt-link class="bs-dark-green-color" :to="'category/' + item.name">{{item.name}}</nuxt-link><span
                    class="comma">, </span>
                </span>
              </p>

              <p><span class="uppercase text-gray-400 w-20 inline-block">tags:</span>

                <span v-for="item in product.tags" :key="item.id">
                  <nuxt-link class="bs-dark-green-color" :to="'category/' + item.name">{{item.name}}</nuxt-link><span
                    class="comma">, </span>
                </span>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- The End Product details modal -->

  </div>
</template>

<script>
  import Logo from "./Logo.vue";
  import {
    MailIcon,
    PhoneCallIcon,
    ClockIcon,
    HomeIcon,
    FacebookIcon,
    LinkedinIcon,
    TwitterIcon,
    InstagramIcon,
    GithubIcon,
    GlobeIcon,
    ActivityIcon
  } from 'vue-feather-icons'
  export default {
    name: "Footer",
    components: {
      Logo,
      MailIcon,
      PhoneCallIcon,
      ClockIcon,
      HomeIcon,
      FacebookIcon,
      LinkedinIcon,
      TwitterIcon,
      InstagramIcon,
      GithubIcon,
      GlobeIcon,
      ActivityIcon
    },
    data() {
      return {
        modal: false,
        product: '',
	      data: [],
        errors: {},
        loading: false,
        load: false,
        footer_data_list: {},
        footer_top_list: {},
        footer_open_time: {},
        page: 1,
      	per_page: 0,
      	total: 0,
      }
    },
    created: function(){
      this.getData();
      this.getTopData();
      this.getOpenTimeData();
    },
    methods: {
      modalClose() {
        this.$store.dispatch("product-details-modal/resetModal");
      },

      async getData() {
        this.load = true;
        let r = await this.$axios.$get('/api/all/client-footer')
        this.footer_data_list = r.data;

        this.load = false;
      },

      async getTopData() {
        this.load = true;
        let r = await this.$axios.$get('/api/all/client-footer-top?page=')
        this.footer_top_list = r.data;
        this.load = false;
      },

      async getOpenTimeData() {
        this.load = true;
        let r = await this.$axios.$get('/api/all/client-footer-open-time')
        this.footer_open_time = r.data;
        this.load = false;
      },

    },
    mounted() {
      this.$store.watch(
        () => {
          return this.$store.getters["product-details-modal/getModal"]
        },
        (val) => {
          this.modal = val.modal
          this.product = val.product
        }, {
          deep: true
        }
      );
    }



  }

</script>

<style scoped>
.socilLink{
  @apply p-1 text-2xl my-5 ml-1 flex items-start
}
.socilIcon {
  @apply text-primaryGreen hover:bg-red-400 hover:text-white bg-gray-100 p-1
}
</style>
