<template>
  <!--
    This example requires updating your template:

    ```
    <html class="h-full bg-gray-50">
    <body class="h-full">
    ```
  -->
  <div class="min-h-full flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8">
    <div class="max-w-md w-full space-y-8">
      <div>
        <!-- <img class="mx-auto h-12 w-auto" src="~/assets/img/virzaOk.gif" alt="Workflow" /> -->
        <Tanvir />
        <h2 class="mt-6 text-center text-3xl font-extrabold text-yellow-600">Add Hero Slider & Buy-1 Get-1 Data</h2>

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

            label="Title"
            v-model="form.title"
            :helperText="errorMsg('title')"
            :hasError="hasError('title')"
            placeholder="title"
          />
          <form-input

            label="Sub Title"
            v-model="form.sub"
            :helperText="errorMsg('sub')"
            :hasError="hasError('sub')"
            placeholder="Sub title"
          />

          <form-input
            type="file"
            label="image"
            v-model="form.image"
            :helperText="errorMsg('image')"
            :hasError="hasError('image')"
            placeholder="image"
          />
          <form-input

            label="Button"
            v-model="form.btn"
            :helperText="errorMsg('btn')"
            :hasError="hasError('btn')"
            placeholder="Enter button text"
          />
          <form-input
            label="Button link"
            v-model="form.btn_link"
            :helperText="errorMsg('btn_link')"
            :hasError="hasError('btn_link')"
            placeholder="Enter button link"
          />
          <form-textarea

            label="Description"
            v-model="form.des"
            :helperText="errorMsg('des')"
            :hasError="hasError('des')"
            placeholder="Enter text here..."
            rows="4"
            cols="20"
          ></form-textarea>
        </div>

        <!-- <div class="flex items-center justify-between">
          <div class="flex items-center">
            <input id="remember-me" name="remember-me" type="checkbox" class="h-4 w-4 text-indigo-600 focus:ring-indigo-500 border-gray-300 rounded" />
            <label for="remember-me" class="ml-2 block text-sm text-gray-900"> Remember me </label>
          </div>

          <div class="text-sm">
            <nuxt-link to="/auth/forgot-password" class="font-medium text-green-600 hover:text-green-800"> Forgot your password? </nuxt-link>
          </div>
        </div> -->

        <div>
          <form-button :loading="loading">+ Add Now</form-button>
        </div>
      </form>
    </div>
  </div>
</template>

<script>

import form from '../mixins/form';
import Input from '../../components/Form/Input.vue';
export default {
    // middleware: ['auth'],

    middleware: 'auth',
    layout: 'backend',
    head: {
        title: "Add Task",
    },
    components: { Input },
    mixins: [form],

    data() {
      return{
        form:{
          title: "",
          sub: "",
          des: "",
          image: "",
          btn: "",
          btn_link: "",
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
          const res = await this.$axios.$post('/api/user/slider/store', this.form)
          this.loading = false;

          // toast massage show

          this.$store.commit("toaster/fire", {
            text: "Successfully created slider data.",
          });

          this.$router.push("/backend/showSlider");

        } catch (e) {
          // console.log(e.response.data);

          // toast massage show

          this.$store.commit("toaster/fire", {
            text: e.response.data.err_message,
            type: "error",
          });

          this.errors = e.response.data?.data || {};
          this.loading = false;

        }

      },


    }
};
</script>

<style scoped>

</style>

