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
        <h2 class="mt-6 text-center text-3xl font-extrabold text-yellow-600">Now You can Edit your Task</h2>
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

            label="copy_right"
            v-model="form.copy_right"
            :helperText="errorMsg('copy_right')"
            :hasError="hasError('copy_right')"
            placeholder="copy_right"
          />
          <form-textarea

            label="Description"
            v-model="form.dec"
            :helperText="errorMsg('dec')"
            :hasError="hasError('dec')"
            placeholder="Enter text here..."
            rows="4"
            cols="20"
          ></form-textarea>

          <!-- <form-input
            type="file"
            label="Logo"
            v-model="form.logo"
            :helperText="errorMsg('logo')"
            :hasError="hasError('logo')"
            placeholder="Logo"
          /> -->
          <form-input
            type="email"
            label="email"
            v-model="form.email"
            :helperText="errorMsg('email')"
            :hasError="hasError('email')"
            placeholder="email"
          />
          <form-input

            label="Phone"
            v-model="form.phone"
            :helperText="errorMsg('phone')"
            :hasError="hasError('phone')"
            placeholder="Phone"
          />
          <form-input
            label="Address"
            v-model="form.address"
            :helperText="errorMsg('address')"
            :hasError="hasError('address')"
            placeholder="Address"
          />
          <form-input

            label="Facebook"
            v-model="form.fb"
            :helperText="errorMsg('fb')"
            :hasError="hasError('fb')"
            placeholder="Facebook"
          />
          <form-input

            label="Instagram"
            v-model="form.instagram"
            :helperText="errorMsg('instagram')"
            :hasError="hasError('instagram')"
            placeholder="Instagram"
          />
          <form-input

            label="linkedin"
            v-model="form.linkedin"
            :helperText="errorMsg('linkedin')"
            :hasError="hasError('linkedin')"
            placeholder="linkedin"
          />
          <form-input

            label="twitter"
            v-model="form.twitter"
            :helperText="errorMsg('twitter')"
            :hasError="hasError('twitter')"
            placeholder="twitter"
          />
          <form-input

            label="github"
            v-model="form.github"
            :helperText="errorMsg('github')"
            :hasError="hasError('github')"
            placeholder="github"
          />
          <form-input

            label="web"
            v-model="form.web"
            :helperText="errorMsg('web')"
            :hasError="hasError('web')"
            placeholder="web"
          />

        </div>


        <div>
          <form-button :loading="loading">Update footer data</form-button>
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
        title: "Edit Task",
    },
    components: { Input },
    mixins: [form],

    data() {
      return{
        form:{
          copy_right: "",
          dec: "",
          // logo: "",
          phone: "",
          email: "",
          address: "",
          fb: "",
          instagram: "",
          linkedin: "",
          twitter: "",
          github: "",
          web: "",
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
          const res = await this.$axios.$put('/api/user/footer/update/'+editTaskIds, this.form)
          this.loading = false;
          // toast massage show

          this.$store.commit("toaster/fire", {
            text: "Successfully update Footer Data.",
          });

          this.$router.push("/backend/showFooter");

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
        let editData = await this.$axios.$get('/api/user/footer/get/'+editTaskId)

        this.form.copy_right = editData.copy_right;
        this.form.dec = editData.dec;
        // this.form.logo = editData.logo;
        this.form.phone = editData.phone;
        this.form.email = editData.email;
        this.form.address = editData.address;
        this.form.fb = editData.fb;
        this.form.instagram = editData.instagram;
        this.form.linkedin = editData.linkedin;
        this.form.twitter = editData.twitter;
        this.form.github = editData.github;
        this.form.web = editData.web;

      },


    },

    mounted() {
      this.getEditTask();
    },
};
</script>

<style scoped>

</style>

