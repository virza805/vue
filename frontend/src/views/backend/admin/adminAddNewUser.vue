<template>
  <div>
    <div class="row justify-content-center mt-4">
      <div class="col-sm-12 col-md-8 col-lg-9">
        <div class="card">
          <div class="card-header">
            <h2>Admin Add New User</h2>
          </div>
          <div class="card-body">
            <form
              action=""
              id="user_form"
              @submit.prevent="save_user"
              enctype="multipart/form-data"
            >
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="name">User Name</label>
                        <input type="text" name="name" class="form-control" />
                    </div>
<!--                     
                    <div class="form-group">
                        <label class="col-form-label">Password</label>
                        <input
                        type="password"
                        name="password"
                        class="form-control"
                        placeholder="**********"
                        />
                    </div> -->
                    
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" name="email" id="email" class="form-control" />
                    </div>

                </div>
                <div class="col-md-6">

                    <div class="form-group">
                        <label for="role">User Role</label>
                        <input type="text" name="role" class="form-control" />
                    </div>
                    <!-- <div class="form-group">
                        <label for="user_role">Choose User Role:</label>
                        <select id="user_role" name="user_role" class="form-control">
                            <option value="2">Admin</option>
                            <option value="3">Management</option>
                            <option value="4">Student</option>
                            <option value="0" selected>Guest</option>
                        </select>
                    </div> -->
<!--                     
                    <div class="form-group">
                        <label class="col-form-label">Retype Password</label>
                        <input
                        type="password"
                        name="password_confirmation"
                        class="form-control"
                        placeholder="**********"
                        />
                    </div> -->
                    <div class="form-group">
                        <label for="">Image</label>
                        <input type="file" name="image" class="form-control" />
                    </div>

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
      url: "/book-list/store",
      userValue: "",
      
    };
  },
  created: function () {
    console.log(this.$route.params.id);
    this.id = parseInt(this.$route.params.id);
    if (this.id > 0) {
      this.get_book();
      this.url = "/book-list/update";
    }
  },
  methods: {
    // get_book: function () {
    //   window.axios.get("/book-list/get/" + this.id).then((res) => {
    //     console.log(res.data);
    //     for (const key in res.data) {
    //       if (Object.hasOwnProperty.call(res.data, key)) {
    //         const element = res.data[key];
    //         if (key != "image") {
    //           window.$(`input[name="${key}"`).val(element);
    //         }
    //       }
    //     }
    //   });
    // },
    save_user: function () {
      let form_data = new FormData(document.getElementById("user_form"));
    //   if (this.url === "/book-list/update") {
    //     form_data.append("id", this.id);
    //   }
    //   window.axios.post(this.url, form_data)
    //     .then(res=>{
    //       console.log(res.data);
    //       this.$router.push({ name: "bookList" }); // go to BookList page
    //     })
    //     .catch(err=>{
    //       console.log(err.response);
    //     })

    window.axios
        .post('/user/add-new-user', form_data).then(res => {
          console.log(res.data);
          this.$router.push({ name: "userList" });
          this.userValue = [];
        })
        .catch((err) => {
          console.log(err.response);
        });
    },
    // saveEntry: function(){
    //             let form_data = {
    //                 user_id: this.myValue,
    //                 book_ids: this.myBooksValue,
    //                 date: this.date,
    //                 return_date: this.return_date,
    //                 time: this.time,
    //             }

    //             window.axios.post('/book-entry/create',form_data)
    //                 .then(res=>{
    //                     console.log(res.data);
    //                     this.myBooksValue = [];
    //                 })
    // }

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