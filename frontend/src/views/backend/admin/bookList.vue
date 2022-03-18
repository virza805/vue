<template>
  <div>
    <div class="row">
      <div class="col-12">
        <div class="card">
          <div class="card-header">
            <h4>Book List</h4>
          </div>
          <div class="card-body table-responsive">
            <table class="table table-bordered table-striped text-center align-middle">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Image</th>
                  <th>Book Name</th>
                  <th>Author</th>
                  <th>Section</th>
                  <th class="text-center" style="width: 20%">Action</th>
                </tr>
              </thead>
              <tbody>
                <tr v-for="book in book_list.data" :key="book.id">
                  <td>{{ book.id }}</td>
                  
                  <td>
                    <img
                      v-if="book.image.split('/')[0] === 'upload'"
                      :src="`${get_server_url}/${book.image}`"
                      style="height: 70px"
                      alt="image"
                    />
                    <img
                      v-else
                      :src="`http://${book.image}`"
                      style="height: 70px"
                      alt="image"
                    />
                  </td>
                  <td>{{ book.name }}</td>
                  <td>{{ book.author }}</td>
                  <td>{{ book.section }}</td>
                  <td>
                    <div class="d-flex justify-content-end">
                      <a href="#" class="btn btn-sm btn-primary mx-1"
                        >New Entry</a
                      >
                      <a href="#" class="btn btn-sm btn-warning mx-1">Edit</a>
                      <a href="#" class="btn btn-sm btn-danger mx-1">Delete</a>
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
      book_list: {},
      page: 1,
      per_page: 0,
      total: 0,
      pagination_option: {
        edgeNavigation: true,
      }
    }
  },
  created: function () {
    this.getData();
  },
  methods: {
    getData: function (page=1) {
      window.axios.get("/book-list?page="+page).then((res) => {
        console.log(res.data);
        this.book_list = res.data;
        this.total = res.data.total;
        this.per_page = res.data.per_page;
      });
    },
  },
  
  computed: {
    ...mapGetters(["server_url"]),
  },
};
</script>

<style></style>
