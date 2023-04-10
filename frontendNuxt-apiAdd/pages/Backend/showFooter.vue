<template>
  <!--
    This example requires updating your template:

    ```
    <html class="h-full bg-gray-50">
    <body class="h-full">
    ```
  -->
  <div class=" flex flex-col py-12 px-4">
    <!-- Show Task List Start now -->
    <h2 class="text-4xl text-red-500 font-bold text-center">Show Footer Top & OpeningHour Data</h2>

    <div class="flex items-center justify-center py-12 lg:px-4 sm:px-6 mb-20 ">
      <div class="w-5/6 lg:w-11/12 flex flex-wrap flex-col-reverse lg:flex-row ">

        <div class="w-full p-3 mb-10 border-2 border-dashed rounded-sm border-green-400 -ml-2 mr-2">
          <div>

            <table class="table-auto taskList">
              <thead class="bg-green-200 ">
                <tr>

                  <th>Title</th>
                  <th>Description</th>
                  <th>iconImg</th>
                  <th class="text-center col-span-2">
                    Action
                  </th>
                </tr>
              </thead>

<div v-if="load" class="">
<Tanvir >
  <span>L</span>
  <span>O</span>
  <span>A</span>
  <span>D</span>
  <span>i</span>
  <span>N</span>
  <span>G</span>
</Tanvir>

</div>
              <tbody class="bg-green-50 p-2 ">
                <tr v-for="(footer_top, index) in footer_top_list" :key="footer_top.id" class="border border-b border-green-200 ">

                  <td class="table-td">
                    <b>{{ footer_top.title }}</b>
                  </td>
                  <td class="table-td pl-2">
                    <p>{{ footer_top.description }}</p>

                  </td>
                  <td class="table-td pl-2">
                    <img src="~/assets/img/secure-payment.png" alt="secure-payment" width="70">
                    <!-- <img src="~/assets/img/secure-payment.png" alt="secure-payment" width="70"> -->
                    <!-- <img :src="baseURL + '/storage/' + footer_top.logo" :alt="footer_top.logo" width="70px" height="70px"></img> -->
                  </td>
                  <td>
                    <p>Id: {{ footer_top.id }}</p>
                    <div class="flex my-1 lg:justify-between px-2">

                      <nuxt-link :to="`/backend/editFooterTop/?id=${footer_top.id}`" class="bg-yellow-600 py-1 px-2 mx-2 rounded text-center text-white ">Edit</nuxt-link>

                      <form-button @click.prevent="delete_footer_top(footer_top,index)" class="bg-red-600 text-white " :loading="loading">Delete</form-button>
                    </div>
                  </td>
                </tr>

              </tbody>
            </table>

          </div>

        </div>


      </div>
    </div>

    <!-- Show Task List Start now -->

<h2 class="text-4xl text-red-500 font-bold text-center">Show Footer Bottom Data</h2>
    <div class="flex items-center justify-center py-12 lg:px-4 sm:px-6 mb-20 ">
      <div class="w-5/6 lg:w-11/12 flex flex-wrap flex-col-reverse lg:flex-row ">

        <div class="w-full p-3 mb-10 border-2 border-dashed rounded-sm border-green-400 -ml-2 mr-2">
          <div>

            <table class="table-auto taskList">
              <thead class="bg-green-200 ">
                <tr>

                  <th>Title</th>
                  <th>Description</th>
                  <th class="text-center col-span-2">
                    Action
                  </th>
                </tr>
              </thead>
<div v-if="load" class="text-xl my-3 text-red-400 font-medium text-center "> Loading ... .. .</div>
              <tbody class="bg-green-50 p-2 ">
                <tr  v-for="(book, index) in task_list" :key="book.id" class="border border-b border-green-200 ">

                  <td class="table-td">
                    <p>copy_right</p>
                    <p>dec</p>
                    <p>phone</p>
                    <p>email</p>
                    <p>Address</p>
                    <p>Facebook</p>
                    <p>Instagram</p>
                    <p>LinkedIn</p>
                    <p>Twitter</p>
                    <p>GitHub</p>
                    <p>Web</p>
                  </td>
                  <td class="table-td pl-2">

                    <!-- <a  class="underline text-primaryGreen " :href="`tel:`+book.phone">{{ book.phone }}</a> -->
                    <p>{{ book.copy_right }}</p>
                    <p>{{ book.description }}</p>
                    <p>{{ book.phone }}</p>
                    <p>{{ book.email }}</p>
                    <p>{{ book.address }}</p>
                    <p>{{ book.fb }}</p>
                    <p>{{ book.instagram }}</p>
                    <p>{{ book.linkedin }}</p>
                    <p>{{ book.twitter }}</p>
                    <p>{{ book.github }}</p>
                    <p>{{ book.web }}</p>
                  </td>
                  <td>
                    <p>Id: {{ book.id }}</p>
                    <div class="flex my-1 lg:justify-between px-2">

                      <nuxt-link :to="`/backend/editFooter/?id=${book.id}`" class="bg-yellow-600 py-1 px-2 mx-2 rounded text-center text-white ">Edit</nuxt-link>

                      <form-button @click.prevent="delete_book(book,index)" class="bg-red-600 text-white " :loading="loading">Delete</form-button>
                    </div>
                    <div class="flex-col ">
                    <p>Logo</p>
                    <img :src="baseURL + '/storage/' + book.logo" :alt="book.logo" width="70px" height="70px">
                    <img src="~/assets/img/vegetable-collection.png" alt="Phone" width="70">
                    </div>
                  </td>
                </tr>

              </tbody>
            </table>

<pagination  v-model="page" :records="total" :per-page="per_page" @paginate="getData"></pagination>


          </div>

        </div>


      </div>
    </div>
  </div>
</template>

<script>
// import { mapGetters } from "vuex";
  import form from '../mixins/form';
  import Input from '../../components/Form/Input.vue';
  // import LaravelVuePagination from 'laravel-vue-pagination';
  import Pagination from 'vue-pagination-2';
  export default {
    middleware: ['auth', 'super-admin'],
    // middleware: 'auth',
    layout: 'backend',
    head: {
      title: "Show Task List",
    },
    components: {
      Input,
      Pagination
      // 'Pagination': LaravelVuePagination
    },
    mixins: [form],

    data() {
      return {
        baseURL: "http://127.0.0.1:8000",
        task_list: {},
        footer_top_list: {},
        // current_page: 1,
        // from: 1,
        // last_page: 1,
        // next_page_url: null,
        // prev_page_url: null,
        // to: 1,
        page: 1,
	      data: [],
      	per_page: 0,
      	total: 0,

        search_key: '',
        selected_data: [],
        form: {
          email: "",
          password: "",
        },
        errors: {},
        loading: false,
        load: false,
      };
    },

    // async fetch() {
    //   const res = await this.$axios.$get('/api/user/task/task-list')
    //   this.data = res.data
    //   // console.log( this.data );
    // },

    created: function(){
      this.getData();
      this.getTopData();
    },

	// mounted() {
	// 	// Fetch initial results
	// 	this.getData();
	// },
    methods: {
      async getData(page = 1) {
        this.load = true;
        let r = await this.$axios.$get('/api/user/footer/backend-footer-list?page='+ page)
        this.task_list = r.data;
        this.total = r.total;
        this.per_page = r.per_page;

        // console.log(r.data);
        // console.log(r.total);
        // console.log(r.current_page);
        this.load = false;
      },
      async getTopData() {
        this.load = true;
        let r = await this.$axios.$get('/api/user/footer-top/backend-footer-list?page=')
        this.footer_top_list = r.data;
        // this.total = r.total;
        // this.per_page = r.per_page;

        this.load = false;
      },



    async delete_book(book,index) {
      let con = confirm('Sure want to delete??');
      if(con) {
         await this.$axios.$post('/api/user/footer/delete', {id: book.id})
          // this.task_list.data.splice(index,1);
          this.getData(); // for show only 5 data
          // toast massage show
          this.$store.commit("toaster/fire", {
            text: "Successfully Delete.",
            type: "error",
          });
      }
      // console.log(index);

    },

    async delete_footer_top(delete_footer_top,index) {
      let con = confirm('Sure want to delete??');
      if(con) {
         await this.$axios.$post('/api/user/footer-top/delete', {id: delete_footer_top.id})
          // this.task_list.data.splice(index,1);
          this.getData(); // for show only 5 data
          // toast massage show
          this.$store.commit("toaster/fire", {
            text: "Successfully Delete.",
            type: "error",
          });
      }
      // console.log(index);

    },



  },

  };




</script>

<style scoped>
button.bg-blue-600  {
    background: #0392cf;
}
button.flex.capitalize.bg-red-600 {
    background: #ad0101;
}
.table-td{
  @apply py-1 border-l border-green-200 px-1
}
</style>
