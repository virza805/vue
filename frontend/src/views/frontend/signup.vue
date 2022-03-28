<template>
<div>
  <h3 class="text-center">Sign up</h3>
  <h6 class="text-center">
    Enter your Info. for Signup as a Student
  </h6>
  <div class="card mt-4 p-4">
    <form class="theme-form" id="signup_form" @submit.prevent="signup_submit">
      <div class="form-group">
        <label class="col-form-label">name</label>
        <input
          type="text"
          name="name"
          class="form-control"
          placeholder="Enter your name."
        />
      </div>
      <div class="form-group">
        <label class="col-form-label">Email</label>
        <input
          type="email"
          name="email"
          class="form-control"
          placeholder="Valid email"
        />
      </div>
      <div class="form-group">
        <label class="col-form-label">Password</label>
        <input
          type="password"
          name="password"
          class="form-control"
          placeholder="Minimum 8 Characters"
        />
      </div>
      <div class="form-group">
        <label class="col-form-label">Retype Password</label>
        <input
          type="password"
          name="password_confirmation"
          class="form-control"
          placeholder="Again password"
        />
      </div>

      <div class="form-row">
        <div class="col-sm-3">
          <button type="submit" class="btn btn-secondary"> Sign Up </button>
        </div>
        <div class="col-sm-8">
          <div class="text-left mt-2 ml-4"> Are you already user? 
            <router-link :to="{ name: 'login' }"> login </router-link>
          </div>
        </div>
      </div>
    </form>
  </div>
</div>
</template>

<script>
import { mapMutations } from "vuex";
export default {
  methods: {
    ...mapMutations(["set_auth_token", "set_auth_info"]),
    signup_submit: function () {
      let form_data = new FormData(document.getElementById("signup_form"));

      window.axios.post("/user/register", form_data).then((res) => {
        console.log(res.data);
        this.set_auth_token({ token: res.data.access_token });
        this.set_auth_info(res.data.user);
        console.log(res.data.user);
      })
      .catch((err)=>{
          console.log(err.response);
      })
    },
  },
};
</script>

<style>
form#signup_form {
    text-align: left;
}
</style>
