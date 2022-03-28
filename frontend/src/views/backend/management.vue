<template>
  <div>
    <div class="row">
      <div class="col-12">
        <div class="card">
          <div class="card-header">
            <div class="d-flex justify-content-between flex-wrap">
                
              <h4>{{ get_auth_info.role_name }} <span class="task-holder-name">({{ get_auth_info.username }})</span> Task List</h4>

              <input
                type="text"
                class="form-control w-50"
                @keyup="search($event.target.value)"
                placeholder="search.."
              />

              <button 
              v-if="selected_data.length > 0"
              @click.prevent="delete_multiple()"  
              class="btn btn-success">Delete Selected ( {{ selected_data.length }} )</button>

            </div>
          </div>
          <div class="card-body table-responsive">
            <table class="table table-bordered table-striped text-center align-middle">
              <thead>
                <tr>
                  <th>
                    <input type="checkbox" @change.prevent="check_all()" id="check_all" class="form-check" >
                  </th>
                  <th>#</th>
                  <!-- <th>Image</th> -->
                  <th>Title</th>
                  <th>Description</th>
                  <th>End Date</th>
                  <th class="text-center" style="width: 20%">Action 
                      
        <router-link  :to="{ name: 'addTask' }" class="sidebar-header  pull-right">
          <i class="fa fa-plus" aria-hidden="true"></i> <span>Add Task</span>
        </router-link>
                  </th>
                </tr>
              </thead>
              <tbody>
                <tr v-for="(book, index) in task_list.data" :key="book.id">

                  <!-- click | focus | change -->
                  <td>
                    <input v-if="selected_data.includes(book.id)" checked type="checkbox" @change="add_to_selected(book.id)" class="form-check" >
                    <input v-else type="checkbox" @change="add_to_selected(book.id)" class="form-check" >
                  </td>

                  <td>{{ book.id }}</td>
                  <td>{{ book.title }}</td>
                  <td>{{ book.dec }}</td>
                  <td>{{ book.c_date }}</td>
                  <td>
                    <div class="d-flex justify-content-end">
                      <a href="#" v-if="book.success_task" class="btn btn-sm btn-success mx-1 "><i class="fa fa-check" aria-hidden="true"></i> Done</a>
					  <a href="#" v-else @click.prevent="success_task(book)" class="btn btn-sm btn-primary mx-1"><i class="fa fa-ravelry" aria-hidden="true"></i> Not done yet</a>

                      <router-link :to="{name: 'taskEdit', params:{id: book.id}}" class="btn btn-sm btn-warning mx-1"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</router-link>
                      <p @click.prevent="delete_book(book,index)" class="btn btn-sm btn-danger mx-1"><i class="fa fa-trash" aria-hidden="true"></i> Delete</p>
                    </div>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>

          <div class="card-footer">
            <!-- <Pagination v-model="page" :records="total" :per-page="per_page" @paginate="getData" /> -->
            <pagination v-model="page" :options="pagination_option" :records="total" :per-page="per_page" @paginate="getData" />
          </div>

        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapGetters } from "vuex";
export default {
  name: "admin-base",
  data: function(){
    return{
      task_list: {},
      page: 1,
      per_page: 0,
      total: 0,
      pagination_option: {
        edgeNavigation: true,
      },
      search_key: '',

      selected_data: [],
    }
  },
  created: function () {
    this.getData();
  },
  methods: {
    getData: function (page=1) {
      let url = `/task?page= ${page}`;
      if(this.search_key.length > 0) {
        url += `&key=${this.search_key}`;
      }
      window.axios.get(url).then((res) => {
        console.log(res.data);
        this.task_list = res.data;
        this.total = res.data.total;
        this.per_page = res.data.per_page;
      });
    },
    delete_book: function(book,index) {
      let con = confirm('Sure want to delete??');
      console.log(index);
      if(con){
        window.axios.post('/task/delete', {id: book.id})
        .then(res=>{
          console.log(res.data);
          // this.task_list.data.splice(index,1); 
          this.getData(); // for show only 10 data
        })
      }
    },
    add_to_selected: function(id) {
      this.selected_data.includes(id) 
      ?
       this.selected_data = this.selected_data.filter(item=>item!=id) 
      : 
      this.selected_data.push(id);
      console.log(this.selected_data);
    },
    check_all: function(){
      this.task_list.data.map(item=>{

        this.selected_data.includes(item.id) 
        ?
        this.selected_data = this.selected_data.filter(item2=>item2!=item.id) 
        : 
        this.selected_data.push(item.id);
        
        return 0;
        // return this.selected_data.push(item.id);
      })
    },
    delete_multiple: function(){
      let con = confirm('Sure want to delete??');
      // console.log(index);
      if(con){
        window.axios.post('/task/delete-multi', { ids: this.selected_data })
        .then((res)=>{
          console.log(res.data);
          this.selected_data = [];
          // this.task_list.data.splice(index,1); 
          this.getData(); // for show only 10 data
          window.$('#check_all').prop('checked',false);
        })
      }

    },
    search: function(key){
      console.log(key);
      this.search_key = key;
      this.getData();
    },

    success_task: function (book) {
				let con = confirm('sure');
				con &&
				window.axios.post(`/task/success-task`, {id: book.id})
				.then((res) => {
					console.log(res.data);
					book.success_task = 1;
			});
		}

  },
  
  computed: {
    ...mapGetters([
        "get_server_url",
        "get_auth_info",
        ]),
  },
};
</script>

<style>
.task-holder-name{
    font-size: 12px;
}
</style>
