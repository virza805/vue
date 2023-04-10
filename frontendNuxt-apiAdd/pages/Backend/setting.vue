<!--
 Sorce link =>  https://tailwindui.com/components/application-ui/forms/form-layouts
  This example requires Tailwind CSS v2.0+

  This example requires some changes to your config:

  ```
  // tailwind.config.js
  module.exports = {
    // ...
    plugins: [
      // ...
      require('@tailwindcss/forms'),
    ],
  }
  ```
-->
<template>
  <div>

    <div class="bg-gray-400 mx-auto w-11/12  border shadow-sm rounded-2xl mb-8 ">
      <img src="~/assets/img/work_bg.jpg" alt="" class="w-full rounded-2xl">
    </div>

    <div class="bg-gray-100 mx-auto w-3/5 border shadow-sm  mb-10 py-12 px-5 -mt-20 z-20 ">
      <div class="flex flex-row justify-evenly items-center flex-wrap">
        <div class="w-full lg:w-2/5 lg:order-1 order-2">
          <p><b>Name : </b>{{ $auth.user.name }}</p>
          <p><b>User Role : </b> <UserRole /></p>
          <p><b>User Id : </b>{{ $auth.user.id }}</p>
        </div>

        <div class="w-full lg:w-1/5 lg:order-2 order-1 justify-center items-center">
          <img src="~/assets/img/Thanks.jpg" alt="" class="w-28 rounded-2xl mx-auto">
          <p class="text-center"><b>Login : </b>{{ $auth.loggedIn }}</p>

        </div>

        <div class="w-full lg:w-2/5 order-3">
          <p><b>Email : </b>{{ $auth.user.email }}</p>
          <p><b>Email Verified : </b><b class="text-red-600 " v-if=" $auth.user.email_verified_at == null"> False</b> <b class="text-green-600 " v-if=" $auth.user.email_verified_at !== null"> Verified</b>
          </p>
          <p><b>Created at : </b>{{ $auth.user.created_at }}</p>
        </div>
      </div>

    </div>

    <div class="min-h-full flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8 mb-20 ">
      <div class="max-w-md w-full space-y-8">
        <div>
          <!-- <img class="mx-auto h-12 w-auto" src="~/assets/img/virzaOk.gif" alt="Workflow" /> -->
          <h2 class="mt-6 text-center text-3xl font-extrabold text-yellow-800">Update your account info.</h2>

        </div>
        <!-- <pre>
        {{errors}}
      </pre> -->
        <form class="mt-8 space-y-6" action="#" @submit.prevent="handleSubmit" method="POST">
          <input type="hidden" name="remember" value="true" />
          <FormInput label="Name" v-model="form.name" :helperText="errorMsg('name')" :hasError="hasError('name')" />
          <form-input type="email" label="Email Address" v-model="form.email" :helperText="errorMsg('email')"
            :hasError="hasError('email')" />


          <form-input type="password" label="Password" v-model="form.password" :helperText="errorMsg('password')"
            :hasError="hasError('password')" />

          <div>
            <form-button :loading="loading">Update</form-button>

          </div>
        </form>
      </div>
    </div>

  </div>
</template>
<script>
  import form from '../mixins/form';
  import Input from '../../components/Form/Input.vue';

  export default {
    middleware: ['auth', 'email-verified'],
    layout: 'backend',
    head: {
      title: "Setting",
    },
    components: {
      Input
    },
    mixins: [form],

    data() {
      return {
        form: {
          name: "",
          email: "",
          password: "",
          role: "",
        },
        errors: {},
        loading: false,
      };
    },


    methods: {
      // From submit same work by then & catch
      async handleSubmit() {
        // api call
        try {
          this.loading = true;
          let userId = this.$auth.user.id;
          const res = await this.$axios.$put('/api/user/update-profile/'+ userId, this.form);
console.log(userId);
          // await this.$auth.fetchUser();

          this.loading = false;

          // toast massage show

          this.$store.commit("toaster/fire", {
            text: "Successfully update your account.",
          });

          // this.$router.push("/");

        } catch (e) {
          // toast massage show

          this.$store.commit("toaster/fire", {
            text: e.response.data.message,
            type: "error",
          });

          this.errors = e.response.data ?.errors || {};
          this.loading = false;

        }

      },

      getUser() {
        let user = this.$store.state.auth.user;

        this.form.name = user.name;
        this.form.email = user.email;
        this.form.role = user.role;
        this.form.password = user.password;
      }

    },

    mounted(){
      this.getUser();
    },

  }

</script>

<style scoped>

</style>
