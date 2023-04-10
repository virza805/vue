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
        <h2 class="mt-6 text-center text-3xl font-extrabold text-yellow-600">Now You can Edit Slid Or buyGet</h2>
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
          <form-input
            label="0 for slider & 1 for BuyGet"
            v-model="form.use"
            :helperText="errorMsg('use')"
            :hasError="hasError('use')"
            placeholder="BuyGet Or Slider"
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


        <div>
          <form-button :loading="loading">Update Slider data</form-button>
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
        title: "Edit Slid",
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
          use: "",
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
          const res = await this.$axios.$put('/api/user/slider/update/'+editTaskIds, this.form)
          this.loading = false;
          // toast massage show

          this.$store.commit("toaster/fire", {
            text: "Successfully update slider Data.",
          });

          this.$router.push("/backend/showSlider");

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
        let editData = await this.$axios.$get('/api/user/slider/get/'+editTaskId)

        this.form.title = editData.title;
        this.form.des = editData.des;
        this.form.sub = editData.sub;
        this.form.btn = editData.btn;
        this.form.btn_link = editData.btn_link;
        this.form.image = editData.image;
        this.form.use = editData.use;
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

