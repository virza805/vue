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
        <h2 class="mt-6 text-center text-3xl font-extrabold text-yellow-600">Add Product Data</h2>

      </div>
      <form
      class="mt-8 space-y-6"
      action="#"
      @submit.prevent="handleSubmit"
      method="POST"
      enctype="multipart/form-data"
      id="product_form"
      >

        <div class="rounded-md shadow-sm -space-y-px">
          <form-input

            label="name"
            v-model="form.name"
            :helperText="errorMsg('name')"
            :hasError="hasError('name')"
            placeholder="name"
            name="name"
          />

          <label>Choose a Category</label>
          <h3 v-for="cat in cat_list " :key="cat.id">
            <input
            type="checkbox"
            name="category_id[]"
            v-model="form.category_id"
            :value="cat.id"
            />{{ cat.name }}</h3>
          <!-- <select
          v-model="form.category_id"
          name="category_id" id="cars"
          class="input"
          >
            <option v-for="cat in cat_list " :key="cat.id" :value="cat.id">{{ cat.name }} ({{ cat.id }})</option>

          </select> -->

          <form-input
            type="file"
            label="image"
            v-model="form.image"
            :helperText="errorMsg('image')"
            :hasError="hasError('image')"
            placeholder="image"
            name="image"
          />
          <form-input

            label="price"
            v-model="form.price"
            :helperText="errorMsg('price')"
            :hasError="hasError('price')"
            placeholder="Enter price text"
            name="price"
          />
          <form-input

            label="sell_price"
            v-model="form.sell_price"
            :helperText="errorMsg('sell_price')"
            :hasError="hasError('sell_price')"
            placeholder="Enter sell_price text"
            name="sell_price"
          />
          <form-input
            label="Product Tag"
            v-model="form.tag"
            :helperText="errorMsg('tag')"
            :hasError="hasError('tag')"
            placeholder="Enter Product Tag"
            name="tag"
          />
          <form-textarea

            label="Description"
            v-model="form.description"
            :helperText="errorMsg('description')"
            :hasError="hasError('description')"
            placeholder="Enter text here..."
            rows="4"
            cols="20"
            name="description"
          ></form-textarea>
        </div>

        <div>
          <form-button :loading="loading">Add New Product</form-button>
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
        name: "Add Product",
    },
    components: { Input },
    mixins: [form],

    data() {
      return{
        form:{
          name: "",
          category_id: [],
          description: "",
          tag: "",
          price: "",
          sell_price: "",
          image: "",
        },
        cat_list: {},
        errors: {},
        loading: false,
      };
    },

    created: function(){
      this.getData();
    },


    methods: {
      // From submit async await
     async handleSubmit() {
      let form_data = new FormData(document.getElementById("product_form"));
      // let cats = JSON.stringify(this.form.category_id);
      let cats = this.form.category_id.join(",");
      console.log(cats);

      form_data.append("category_id", cats);
        // api call
        try {
          this.loading = true;
          const res = await this.$axios.$post('/api/user/product/store', form_data)

          console.log(res);
          this.loading = false;

          // toast massage show

          this.$store.commit("toaster/fire", {
            text: "Successfully created product data.",
          });

          this.$router.push("/backend/showProduct");

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

      async getData() {
        this.load = true;
        let r = await this.$axios.$get('/api/all/client-categories')
        this.cat_list = r.data;
        this.load = false;
      },


    }
};
</script>

<style scoped>

</style>

<style>
.input {
  @apply appearance-none rounded-lg relative block w-full px-3 py-2 border placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-green-500 focus:border-green-500 focus:z-10 sm:text-sm
}
</style>

