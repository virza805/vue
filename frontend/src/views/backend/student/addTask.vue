<template>
  <div>
    <div class="row justify-content-center mt-4">
      <div class="col-sm-12 col-md-8 col-lg-9">
        <div class="card">
          <div class="card-header">
            <h4>Add New Task</h4>
          </div>
          <div class="card-body">
            <form
              action=""
              id="book_form"
              @submit.prevent="save_book"
              enctype="multipart/form-data"
            >
              
              <div class="form-group">
                <label for="title">Title</label>
                <input type="text" name="title" class="form-control" />
              </div>
              <div class="form-group">
                <label for="dec">Description</label>
                <!-- <input type="text" name="dec" class="form-control" /> -->
                <textarea id="dec" name="dec" rows="2" cols="50" class="form-control" />
              </div>
              <div class="d-flex">
                <div class="form-group">
                  <label for="date">Date</label>
                  <input type="date" name="date" class="form-control" />
                </div>
                <div class="form-group">
                  <label for="c_date">End Date</label>
                  <input type="date" name="c_date" class="form-control" />
                </div>
              </div>
              

              <div class="form-group">
                <button type="submit" class="btn btn-secondary">Submit</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapGetters } from "vuex";
export default {
  name: "new-entry",
  data: function () {
    return {
      id: 0,
      url: "/task/store",
    };
  },
  created: function () {
    console.log(this.$route.params.id);
    this.id = parseInt(this.$route.params.id);
    if (this.id > 0) {
      this.get_book();
      this.url = "/task/update";
    }
  },
  methods: {
    get_book: function () {
      window.axios.get("/task/get/" + this.id).then((res) => {
        console.log(res.data);
        for (const key in res.data) {
          if (Object.hasOwnProperty.call(res.data, key)) {
            const element = res.data[key];
            if (key != "image") {
              window.$(`input[name="${key}"`).val(element);
            }
          }
        }
      });
    },
    save_book: function () {
      let form_data = new FormData(document.getElementById("book_form"));
      if (this.url === "/task/update") {
        form_data.append("id", this.id);
      }
      window.axios.post(this.url, form_data)
        .then(res=>{
          console.log(res.data);
          this.$router.push({ name: "student" }); // go to BookList page
        })
        .catch(err=>{
          console.log(err.response);
        })
      // window.axios
      //   .post(this.url, form_data)
      //   .then((res) => {
      //     console.log(res.data);
      //     this.$router.push({ name: "bookList" });
      //   })
        // .catch((err) => {
        //   console.log(err.response);
        // });
    },
  },
  computed: {
    ...mapGetters(["get_server_url"]),
  },
};
</script>
<style >
.card-body{
  text-align: left;
}
</style>