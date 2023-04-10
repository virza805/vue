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
        <div class="container">
          <div>
            <h2 class="mt-6 text-center text-3xl font-extrabold text-green-600">Single File</h2>
            <hr/>
            <label class="flex my-2">File
              <input type="file" @change="handleFileUpload( $event )"/>
            </label>
            <br>
            <button v-on:click="submitFile()">Submit</button>
          </div>
        </div>


        <h2 class="mt-6 text-center text-3xl font-extrabold text-yellow-600">Add Footer Top Data</h2>

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

          <form-input
          type="file"
          @change="handleFileUpload( $event )"

          label="File Upload"
          v-model="form.icon_img"
          :helperText="errorMsg('icon_img')"
          :hasError="hasError('icon_img')"
          placeholder="icon_img"
          />
          <!-- <input type="file" @change="handleFileUpload( $event )"/> -->
<!-- <v-file-input type="file" label="Select a file"  id="icon_img" name="icon_img" accept="image/*" v-model="form.icon_img">
      File to upload to S3
    </v-file-input> -->

        </div>

        <div>
          <form-button :loading="loading">Submit Now</form-button>
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
        title: "Add Footer Top",
    },
    components: { Input },
    mixins: [form],

    data() {
      return{
        form:{
          title: "",
          description: "",
          icon_img: "",
        },
        icon_img: '',
        errors: {},
        loading: false,
      };
    },

    methods: {

			handleFileUpload( event ){
				this.icon_img = event.target.files[0];
			},

			submitFile(){
				let formData = new FormData();
				formData.append('icon_img', this.icon_img);
				this.$axios.$post( '/api/user/footer-top/store', formData, {
						headers: {'Content-Type': 'multipart/form-data'}
					}
				).then(function(){
					console.log('SUCCESS!!');
				})
				.catch(function(){
					console.log('FAILURE!!');
				});
			},

      // From submit async await
     async handleSubmit() {
        // api call
        try {
          this.loading = true;
              // this.form.append("files", this.icon_img, this.icon_img.name);
          const res = await this.$axios.$post('/api/user/footer-top/store', this.form)

          this.loading = false;

          // toast massage show

          this.$store.commit("toaster/fire", {
            text: "Successfully created footer data.",
          });

          this.$router.push("/backend/showFooter");

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

