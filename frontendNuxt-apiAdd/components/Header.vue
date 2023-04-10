<!-- Please remove this file from your project -->
<template>
  <div>
    <div class="container">
      <div class="flex justify-between items-center py-6">
        <Logo />

        <div class="w-96 md:block hidden">
          <nuxt-link to="/search" class="border border-gray-100 p-1 flex rounded-full items-center">
            <div class="min-w-max px-3">
              <img src="~/assets/img/search.png" alt="">
            </div>
            <input
            type="search" class="w-full px-3 pxy-1 focus:outline-none"
            placeholder="Search here ..."

            >
             <!-- @keyup="search($event.target.value)" -->
            <button class="bg-gray bs-button-bg px-6 rounded-full py-2 text-white" type="submit">Search</button>
          </nuxt-link>
        </div>

        <div class="min-w-max flex items-center">
          <nuxt-link to="/wishlist"><span
              class="bs-icon-box rounded-full hover:bg-gray-200 inline-block flex items-center justify-center"><img
                src="~/assets/img/heart.png" alt=""></span></nuxt-link>

          <nuxt-link class="relative mx-4" to="/cart"><span
              class="bs-icon-box rounded-full hover:bg-gray-200 inline-block flex items-center justify-center"><img
                src="~/assets/img/u_shopping-bag.png" alt=""></span> <span
              class="absolute bg-red-600 px-1 h-4 top-0 right-0 rounded-full text-xs flex justify-center items-center text-white">
              {{ count }}

            </span>
          </nuxt-link>

          <!-- <nuxt-link to="/my-account" class="flex items-center"><span class="bs-icon-box rounded-full hover:bg-gray-200 inline-block flex items-center justify-center"><img src="~/assets/img/user.png" alt=""></span> <span>Account </span></nuxt-link> -->

          <nuxt-link to="/auth/register"
            class=" hidden bs-icon-box rounded-full hover:bg-gray-200  md:flex items-center justify-center"><img
              src="~/assets/img/user-plus.svg" alt=""></nuxt-link>
          <NuxtLink to="/auth/login"
            class="bs-icon-box rounded-full hover:bg-gray-200 flex items-center justify-center"><img
              src="~/assets/img/log-in.svg" alt=""></NuxtLink>
        </div>

      </div>

      <div class="flex justify-between px-3 md:px-0 md:items-center">
        <div v-click-outside="menuClose" class="w-72 md:w-96 relative">
          <div @click.prevent="menuClick"
            class="bs-dark-green-bg relative z-20 flex rounded-full px-4 py-2 cursor-pointer">
            <div class="min-w-max">
              <img src="~/assets/img/menu-right.png" alt="">
            </div>
            <div class="w-full text-center px-6 text-white">
              All Categories
            </div>
            <div class="min-w-max">
              <img src="~/assets/img/chevron-down.png" alt="">
            </div>
          </div>

          <div v-bind:class="allCategoryMenu ? 'block visible' : 'hidden visible' "
            class="absolute bs-dark-green-bg z-10 w-full -mt-5 pt-6 pb-4 rounded-b-2xl">
            <ul>
              <li v-for="cat in cat_list " :key="cat.id" >
                <nuxt-link class="block py-2 px-4 text-white hover:text-black" :to="`/category/?id=${cat.id}`">{{ cat.name }}</nuxt-link>
              </li>

            </ul>
          </div>
        </div>

        <div class="w-full md:block hidden">
          <ul class="flex justify-center">
            <li>
              <nuxt-link class="p-4" to="/">Home</nuxt-link>
            </li>
            <li>
              <nuxt-link class="p-4" to="/category">Categories</nuxt-link>
            </li>
            <li>
              <nuxt-link class="p-4" to="/about">About</nuxt-link>
            </li>
            <li>
              <nuxt-link class="p-4" to="/contact">Contact</nuxt-link>
            </li>
            <li>
              <nuxt-link class="p-4" to="/faq">FAQs</nuxt-link>
            </li>
            <li>
              <nuxt-link class="p-4" to="/offers">Offers</nuxt-link>
            </li>
          </ul>
        </div>
        <nuxt-link to="/sp-offers" class="min-w-max bs-dark-orange-color md:flex hidden">
          <img src="~/assets/img/u_percentage.png" class="mr-3" alt=""> Special Offers!
        </nuxt-link>

        <Dropdown title="MENU" class="cursor-pointer menu-icon block md:hidden  z-50 ">
          <!-- <menu-icon size='30'></menu-icon> -->

          <div class="flex z-50 flex-col items-center">

            <div class="w-full mb-4">
              <div class="border border-gray-400 p-1 flex rounded-full items-center my-3">

                <input type="search" class="bg-transparent w-full px-3 py-1 focus:outline-none"
                  placeholder="Search.. .">
                <button class=" px-4 rounded-full py-1 text-green-600" type="submit">
                  <SearchIcon size='20'></SearchIcon>
                </button>
              </div>

              <ul class="flex flex-col justify-center">
                <li>
                  <nuxt-link class="p-4" to="/">Home</nuxt-link>
                </li>
                <li>
                  <nuxt-link class="p-4" to="/category">Categories</nuxt-link>
                </li>
                <li>
                  <nuxt-link class="p-4" to="/about">About</nuxt-link>
                </li>
                <li>
                  <nuxt-link class="p-4" to="/contact">Contact</nuxt-link>
                </li>
                <li>
                  <nuxt-link class="p-4" to="/faq">FAQs</nuxt-link>
                </li>
                <li>
                  <nuxt-link class="p-4" to="/offers">Offers</nuxt-link>
                </li>
                <li>
                  <nuxt-link to="/sp-offers" class="min-w-max bs-dark-orange-color flex text-left">
                    <img src="~/assets/img/u_percentage.png" class="mr-3" alt=""> Special Offers!
                  </nuxt-link>
                </li>
              </ul>
            </div>

          </div>

        </Dropdown>

      </div>


    </div>
  </div>
</template>

<script>
  import {
    MenuIcon,
    SearchIcon
  } from 'vue-feather-icons'
  import Logo from "./Logo.vue";
  export default {
    name: 'Header',
    components: {
      Logo,
      MenuIcon,
      SearchIcon
    },
    data() {
      return {
        allCategoryMenu: false,
        count: 0,
        cat_list: {}
      }
    },
    created: function(){
      this.getData();
      // this.getProductData();
    },

    methods: {
      menuClick() {
        this.allCategoryMenu = !this.allCategoryMenu;
      },
      menuClose() {
        this.allCategoryMenu = false
      },
      cartWatcher() {

        const getProductsLocalStorage = JSON.parse(localStorage.getItem('cart'));
        const getProductsStore = this.$store.getters["cart/getCart"];

        let cart = [];
        if (getProductsStore.length) {
          cart = getProductsStore;
        } else {
          cart = getProductsLocalStorage;
        }


        if (cart.length) {
          cart.forEach(item => {
            this.count = (this.count + item.quantity);

          });
        }


      },

      async getData() {
        this.load = true;
        let r = await this.$axios.$get('/api/all/client-categories')
        this.cat_list = r.data;
        this.load = false;
      },

// Product Show with paginate data
    // async getProductData(page = 1) {
    //   this.load = true;
    //   let url = `/api/all/client-product/?page= ${page}`;
    //   if(this.search_key.length > 0) {
    //     url += `&key=${this.search_key}`;
    //   }

    //   let r = await this.$axios.$get(url)
    //   this.product_list = r.data;
    //   this.total = r.data.total;
    //   this.per_page = r.data.per_page;
    //   this.load = false;

    // },

    // search: function(key){
    //   // console.log(key);
    //   this.search_key = key;
    //   this.getProductData();
    // },

    },
    mounted() {


      let getLocalStorageProducts = JSON.parse(localStorage.getItem('cart'));
      if (getLocalStorageProducts === null) {
        localStorage.setItem('cart', '[]');
      }
      // localStorage.setItem('cart', JSON.stringify([]))

      this.cartWatcher();
      this.$store.watch(
        () => {
          return this.$store.getters["cart/getCart"]
        },
        (val) => {
          this.cartWatcher();
        }, {
          deep: true
        }
      );

    }
  }

</script>
<style>
  .menu-icon ul li{
    margin: 4px 0;
  }
  .menu-icon {
    position: relative;
    z-index: 1;
    padding-left: 5px;
  }

  .menu-icon .dropdown-con {
    position: absolute;
    right: 0;
    top: 60px;
    width: 300px;
    background: #d2f0df;
    padding: 10px;
    border-radius: 18px;
  }

</style>
<style scoped>
  .hmenu {
    display: flex;
  }

</style>
