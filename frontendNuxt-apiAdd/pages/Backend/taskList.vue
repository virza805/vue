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
    <h2 class="text-4xl text-red-500 font-bold text-center">{{ $auth.user.name }} Task List Show </h2>
    <p class="text-center text-base">Your role is
      <UserRole />
    </p>

    <div class="flex justify-between">

      <form-button
      class="bg-red-600"
      :loading="loading"
      v-if="selected_data.length > 0"
      @click.prevent="delete_multiple()"
      >Delete Selected ( {{ selected_data.length }} )</form-button>


      <label class="relative block">
        <span class="sr-only">Search</span>
        <span class="absolute inset-y-0 left-0 flex items-center pl-2">
          <img src="~/assets/img/search.png" alt="">
        </span>
        <input
          class="placeholder:italic placeholder:text-slate-400 block bg-white w-full border border-slate-300 rounded-md py-2 pl-9 pr-3 shadow-sm focus:outline-none focus:border-sky-500 focus:ring-sky-500 focus:ring-1 sm:text-sm"
          placeholder="Search for anything..."
          type="text"
          @keyup="search($event.target.value)"
          name="search" />
      </label>


      <nuxt-link to="/Backend/addTask" class=" bg-green-500 text-white py-1 px-8">+ Add Task</nuxt-link>


    </div>

    <div class="flex items-center justify-center py-12 lg:px-4 sm:px-6 mb-20 ">
      <div class="w-5/6 lg:w-11/12 flex flex-wrap flex-col-reverse lg:flex-row ">

        <div class="w-full p-3 mb-10 border-2 border-dashed rounded-sm border-green-400 -ml-2 mr-2">
          <div>

            <h2 class="my-4 flex items-center font-bold text-center"><img class=" mx-auto" src="~/assets/img/carousel-img-2.png" alt="fish"></h2>

            <table class="table-auto taskList">
              <thead class="bg-green-200 ">
                <tr>
                  <th>
                    <input type="checkbox" @change.prevent="check_all()" id="check_all" class="form-check" >
                  </th>
                  <th>#</th>
                  <!-- <th>Image</th> -->
                  <th>Title</th>
                  <th>Description</th>
                  <th>endDate</th>
                  <th class="text-center col-span-3">
                    Action
                  </th>
                </tr>
              </thead>
<div v-if="load" class="">
<Tanvir >
  <span>L</span>
  <span>O</span>
  <span>D</span>
  <span>i</span>
  <span>N</span>
  <span>G</span>
</Tanvir>

</div>
              <tbody class="bg-green-50 p-2 ">
                <tr  v-for="(book, index) in task_list" :key="book.id" class="border border-b border-green-200 ">
                  <td class="table-td">
                    <input v-if="selected_data.includes(book.id)" checked type="checkbox" @change="add_to_selected(book.id)" class="form-check" >
                    <input v-else type="checkbox" @change="add_to_selected(book.id)" class="form-check" >
                  </td>
                  <td class="table-td">{{ book.id }}</td>
                  <td class="table-td pl-2">{{ book.title }}</td>
                  <td class="table-td py-1 border-l border-green-200 px-2 ">{{ book.dec }}</td>
                  <td class="table-td">{{ book.date }}</td>
                  <td>
                    <div class="flex my-1 lg:justify-between px-2">
                      <p v-if="book.success_task"  class="bg-green-600 py-1 px-2 rounded text-center text-yellow-50 ">☻ Done</p>
                      <form-button v-else @click.prevent="success_task(book)" class="bg-blue-600 text-white " :loading="loading">Not done yet</form-button>

                      <nuxt-link :to="`/backend/editTask/?id=${book.id}`" class="bg-yellow-600 py-1 px-2 mx-2 rounded text-center text-white ">Edit</nuxt-link>


                      <form-button @click.prevent="delete_book(book,index)" class="bg-red-600 text-white " :loading="loading">Delete</form-button>
                    </div>
                  </td>
                </tr>

              </tbody>
            </table>

 <!-- {{ getData }} -->
<!-- <Pagination :data="task_list" @pagination-change-page="getData"></Pagination> -->
<pagination  v-model="page" :records="total" :per-page="per_page" @paginate="getData"></pagination>


          </div>

        </div>


      </div>
    </div>

    <!-- <Pagination v-model="page" :records="total" :per-page="per_page" @paginate="getData" /> -->
    <!-- <pagination v-model="page" :options="pagination_option" :records="total" :per-page="per_page" @paginate="getData" /> -->
    <img class=" text-center mx-auto" src="~/assets/img/vegetable-collection.png" alt="Phone">
    <!-- Show Task List Start now -->

    <ContactInfo />
  </div>
</template>

<script>
// import { mapGetters } from "vuex";
  import form from '../mixins/form';
  import Input from '../../components/Form/Input.vue';
  // import LaravelVuePagination from 'laravel-vue-pagination';
  import Pagination from 'vue-pagination-2';
  export default {
    // middleware: ['auth'],
    middleware: 'auth',
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
        task_list: {},
        // current_page: 1,
        page: 1,
	data: [],
	// from: 1,
	// last_page: 1,
	// next_page_url: null,
	per_page: 0,
	// prev_page_url: null,
	// to: 1,
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
    },

	// mounted() {
	// 	// Fetch initial results
	// 	this.getData();
	// },
    methods: {
      async getData(page = 1) {
        this.load = true;
        let r = await this.$axios.$get('/api/user/task/task-list?page='+ page)
        this.task_list = r.data;
        this.total = r.total;
        this.per_page = r.per_page;

        // console.log(r.data);
        // console.log(r.total);
        // console.log(r.current_page);
        this.load = false;
      },



    async delete_book(book,index) {
      let con = confirm('Sure want to delete??');
      if(con) {
         await this.$axios.$post('/api/user/task/delete', {id: book.id})
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


    add_to_selected: function(id) {
      this.selected_data.includes(id)
      ?
       this.selected_data = this.selected_data.filter(item=>item!=id)
      :
      this.selected_data.push(id);
      console.log(this.selected_data);
    },
    check_all(){
      this.task_list.map(item=>{

        this.selected_data.includes(item.id)
        ?
        this.selected_data = this.selected_data.filter(item2=>item2!=item.id)
        :
        this.selected_data.push(item.id);

        return 0;
        // return this.selected_data.push(item.id);
      })
    },

    async delete_multiple(){

      let con = confirm('Are you Sure want to delete all selected item ??');
      if(con) {
        this.loading = true;
         await this.$axios.$post('/api/user/task/delete-multi', { ids: this.selected_data })
          this.selected_data = [];
          // this.task_list.data.splice(index,1);
          this.getData(); // for show only 5 data

          this.loading = false;
          // toast massage show
          // ('#check_all').prop('checked',false);

          this.$store.commit("toaster/fire", {
            text: "All Selected item Deleted.",
            type: "error",
          });
      }

    },

    search(key){
      // console.log(key);
      this.search_key = key;
      this.getData();
    },

    async success_task(book){

      let con = confirm('are you Sure this task done??');
      if(con) {
          this.loading = true;
          await this.$axios.$post(`/api/user/task/success-task`, {id: book.id})
  				book.success_task = 1;
          this.loading = false;

          // toast massage show
          this.$store.commit("toaster/fire", {
            text: "This task Complete",
          });

      }


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
