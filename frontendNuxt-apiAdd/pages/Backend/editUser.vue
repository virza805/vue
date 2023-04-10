<template>
  <div class="min-h-full flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8">
    <div class="max-w-md w-full space-y-8">
      <div>
        <!-- <img class="mx-auto h-12 w-auto" src="~/assets/img/virzaOk.gif" alt="Workflow" /> -->
        <Tanvir />
        <h2 class="mt-6 text-center text-3xl font-extrabold text-yellow-600">Super Admin can Edit User</h2>
        <p class="mt-2 text-center text-sm text-gray-600">
          <TextSlid />
        </p>
      </div>
      <form
      class="mt-8 space-y-6"
      action="#"
      @submit.prevent="handleSubmit"
      method="POST"
      enctype="multipart/form-data"
      >
        <input type="hidden" name="remember" value="true" />
        <div class="rounded-md shadow-sm -space-y-px">
          <form-input

            label="name"
            v-model="form.name"
            :helperText="errorMsg('name')"
            :hasError="hasError('name')"
            placeholder="name"
          />
          <form-input
            type="email"
            label="Email"
            v-model="form.email"
            :helperText="errorMsg('email')"
            :hasError="hasError('email')"
            placeholder="Enter User Email"
          />

          <label for="cars">Choose a Position</label>
          <select
          v-model="form.role"
          name="cars" id="cars" form="carform"
          class="input"
          >

            <option value="1">Super Admin</option>
            <option value="2">Admin</option>
            <option value="3">Manager</option>
            <option value="4">Other</option>
          </select>

          <form-input
            type="password"
            label="password"
            v-model="form.password"
            :helperText="errorMsg('password')"
            :hasError="hasError('password')"
            placeholder="password"
          />
        </div>


        <div>
          <form-button :loading="loading">Update User data</form-button>
        </div>
      </form>
    </div>
  </div>
</template>

<script>

import form from '../mixins/form';
import Input from '../../components/Form/Input.vue';
export default {
    middleware: ['auth', 'super-admin'],

    // middleware: 'auth',
    layout: 'backend',
    head: {
        name: "Edit User",
    },
    components: { Input },
    mixins: [form],

    data() {
      return{
        form:{
          name: "",
          email: "",
          role: "",
          password: "",
        },
        errors: {},
        loading: false,
      };
    },

    methods: {
      // From submit async await
     async handleSubmit() {
        // api call
        try {
          this.loading = true;
          let editTaskIds = this.$route.query.id;
          const res = await this.$axios.$put('/api/user/s_admin/update/'+editTaskIds, this.form)
          this.loading = false;
          // toast massage show

          this.$store.commit("toaster/fire", {
            text: "Successfully update User.",
          });

          this.$router.push("/backend/showUser");

        } catch (e) {
          console.log(e.response.data);

          // toast massage show

          this.$store.commit("toaster/fire", {
            text: e.response.data.err_message,
            type: "error",
          });

          this.errors = e.response.data?.data || {};
          this.loading = false;

        }

      },

      async getEditTask(){
        let editTaskId = this.$route.query.id;
        let editData = await this.$axios.$get('/api/user/s_admin/get/'+editTaskId)

        this.form.name = editData.name;
        this.form.role = editData.role;
        this.form.email = editData.email;
        this.form.password = editData.password;
        // this.form.icon_img = editData.icon_img;

      },


    },

    mounted() {
      this.getEditTask();
    },
};
</script>

<style scoped>
.input {
  @apply appearance-none rounded-lg relative block w-full px-3 py-2 border placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-green-500 focus:border-green-500 focus:z-10 sm:text-sm
}
</style>

