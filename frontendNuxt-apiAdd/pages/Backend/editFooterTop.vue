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
        <h2 class="mt-6 text-center text-3xl font-extrabold text-yellow-600">Now You can Edit your Footer top</h2>
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

            label="title"
            v-model="form.title"
            :helperText="errorMsg('title')"
            :hasError="hasError('title')"
            placeholder="title"
          />
          <form-textarea

            label="Description"
            v-model="form.description"
            :helperText="errorMsg('description')"
            :hasError="hasError('description')"
            placeholder="Enter text here..."
            rows="4"
            cols="20"
          ></form-textarea>

          <!-- <form-input
            type="file"
            accept="image/*"
            label="icon_img"
            v-model="form.icon_img"
            :helperText="errorMsg('icon_img')"
            :hasError="hasError('icon_img')"
            placeholder="icon_img"
          /> -->

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
        title: "Edit Footer Top",
    },
    components: { Input },
    mixins: [form],

    data() {
      return{
        form:{
          title: "",
          description: "",
          // icon_img: "",
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
          const res = await this.$axios.$put('/api/user/footer-top/update/'+editTaskIds, this.form)
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
        let editData = await this.$axios.$get('/api/user/footer-top/get/'+editTaskId)

        this.form.title = editData.title;
        this.form.dec = editData.dec;
        // this.form.icon_img = editData.icon_img;

      },


    },

    mounted() {
      this.getEditTask();
    },
};
</script>

<style scoped>

</style>

