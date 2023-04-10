<template>

  <div class=" flex flex-col py-12 px-4">
    <!-- Show Task List Start now -->
    <h2 class="text-4xl text-red-500 font-bold text-center">All Contact From Message Show </h2>
    <p class="text-center text-base">Hi, {{ $auth.user.name }} Your role is
      <UserRole />
    </p>


    <div class="flex items-center justify-center py-12 lg:px-4 sm:px-6 mb-20 ">
      <div class="w-5/6 lg:w-11/12 flex flex-wrap flex-col-reverse lg:flex-row ">

        <div class="w-full p-3 mb-10 border-2 border-dashed rounded-sm border-green-400 -ml-2 mr-2">
          <div>
<div class="flex justify-between my-1 mb-3">

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



    </div>

            <table class="table-auto taskList">
              <thead class="bg-green-200 ">
                <tr>
                  <th>
                    <input type="checkbox" @change.prevent="check_all()" id="check_all" class="form-check" >
                  </th>
                  <th>ID.</th>
                  <!-- <th>Image</th> -->
                  <th>Info.</th>
                  <th>Message</th>
                  <th class="text-center">
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
                <tr  v-for="(book, index) in task_list" :key="book.id" class="border border-b border-green-200 ">
                  <td class="table-td">
                    <input v-if="selected_data.includes(book.id)" checked type="checkbox" @change="add_to_selected(book.id)" class="form-check" >
                    <input v-else type="checkbox" @change="add_to_selected(book.id)" class="form-check" >
                  </td>
                  <td class="table-td">{{ book.id }}</td>
                  <td class="table-td pl-2">
                    <p>{{ book.name }}</p>
                    <a  class="underline text-primaryGreen " :href="`tel:`+book.phone">{{ book.phone }}</a>
                  </td>
                  <td class="table-td py-1 border-l border-green-200 px-2 ">
                    <p><a class="underline text-primaryGreen " :href="`mailto:`+book.email">{{ book.email }}</a></p>
                    {{ book.message }}
                  </td>
                  <td class="w-24">
                    <form-button @click.prevent="delete_book(book,index)" class="bg-red-600 text-white pb-1" :loading="loading">☻ Delete</form-button>
                  </td>
                </tr>

              </tbody>
            </table>

<pagination  v-model="page" :records="total" :per-page="per_page" @paginate="getData"></pagination>


          </div>

        </div>


      </div>
    </div>


    <img class=" text-center mx-auto" src="~/assets/img/vegetable-collection.png" alt="Phone">
    <!-- Show Task List Start now -->

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
      title: "Contact Message List",
    },
    components: {
      Input,
      Pagination
    },
    mixins: [form],

    data() {
      return {
        task_list: {},
        page: 1,
        data: [],
        per_page: 0,
        total: 0,
        search_key: '',
        selected_data: [],
        errors: {},
        loading: false,
        load: false,
      };
    },

    created: function(){
      this.getData();
    },

    methods: {
      async getData(page = 1) {
        this.load = true;
        let r = await this.$axios.$get('/api/user/sms/messages?page='+ page)
        this.task_list = r.data;
        this.total = r.total;
        this.per_page = r.per_page;

        this.load = false;
      },



    async delete_book(book,index) {
      let con = confirm('Sure want to delete??');
      if(con) {
         await this.$axios.$post('/api/user/sms/delete', {id: book.id})
          this.getData(); // for show only 10 data
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
         await this.$axios.$post('/api/user/sms/delete-multi', { ids: this.selected_data })
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

  },

  };




</script>

<style scoped>

button.flex.capitalize.bg-red-600 {
    background: #ad0101;
}
.table-td{
  @apply py-1 border-l border-green-200 px-1
}
</style>
