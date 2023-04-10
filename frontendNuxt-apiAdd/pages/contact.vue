<template>

  <div>
    <h2 class=" text-4xl mt-10 text-green-600 font-bold text-center">Contact With me</h2>

      <!-- Contact with me Start now -->
    <div class="flex items-center justify-center py-12 lg:px-4 sm:px-6 mb-20 ">
      <div class="w-full lg:w-5/6 flex flex-wrap flex-col-reverse lg:flex-row">

        <div class="w-1/2 lg:w-1/4 p-3  border-1 rounded-sm border-gray-100 -ml-1 mr-1 text-center">
          <a href="mailto:virza.bd@gmail.com" target="_blank">
            <img class="w-12 mx-auto" src="~/assets/img/mail.svg" alt="Phone">
            <p class="text-center mt-6">virza.bd@gmail.com</p>
          </a>
        </div>

        <div class="w-1/2 lg:w-1/4 p-3  border-1 rounded-sm border-gray-100 -ml-1 mr-1 text-center">
          <a href="tel:01795815660">
            <img class="w-12 mx-auto" src="~/assets/img/phone-call.svg" alt="Phone">
            <p class="text-center mt-6">01795815660</p>
          </a>
        </div>

        <div class="w-1/2 lg:w-1/4 p-3  border-1 rounded-sm border-gray-100 -ml-1 mr-1 text-center">
          <a href="https://vir-za.com/"  target="_blank">
            <img class="w-12 mx-auto" src="~/assets/img/globe.svg" alt="Phone">
            <p class="text-center mt-6">vir-za.com</p>
          </a>
        </div>

        <div class="w-1/2 lg:w-1/4 p-3  border-1 rounded-sm border-gray-100 -ml-1 mr-1 text-center">
          <a href="https://www.google.com.bd/maps/@23.8512289,90.2821869,16z?hl=en&authuser=0" target="_blank">
            <img class="w-12 mx-auto" src="~/assets/img/map.svg" alt="Phone">
            <p class="text-center mt-6">Saver, Dhaka - 1340, Bangladesh.</p>
          </a>
        </div>

      </div>
    </div>
    <!-- Contact with me The End -->

    <h2 class=" text-4xl mt-10 text-green-800 font-bold text-center">

      <a href="https://github.com/virza805/frontendNuxt/commit/cc9f43ffc7968e8d15084320a67d19fd191a7ede" target="_blank" rel="noopener noreferrer"><MailIcon size="20" class="mr-1"></MailIcon> Get in Touch</a>
    </h2>
    <div class="flex items-center justify-center py-12 lg:px-4 sm:px-6 mb-20 ">

<!-- map & Contact from Start now -->
      <div class="w-5/6 lg:w-3/5 flex flex-wrap flex-col-reverse lg:flex-row ">

        <div class="w-full lg:w-1/2 p-3 mb-10 border-2 border-dashed rounded-sm border-primary -ml-2 mr-2">
          <div>
            <iframe
              src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d7302.662227186117!2d90.35932259999997!3d23.77122070000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1654852110225!5m2!1sen!2sbd"
              width="100%" height="600" style="border:0;" allowfullscreen="" loading="lazy"
              referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>

        </div>

        <div class="w-full lg:w-1/2 p-3 mb-10 border-2 border-dashed rounded-sm border-primary -mr-2 ml-2">
          <form class="mt-8 space-y-6" action="#" @submit.prevent="handleSubmit" method="POST">
            <input type="hidden" name="remember" value="true" />
            <FormInput label="Name" v-model="form.name" :helperText="errorMsg('name')" :hasError="hasError('name')" />

            <form-input type="email" label="Email Address" v-model="form.email" :helperText="errorMsg('email')"
              :hasError="hasError('email')" />

            <form-input type="number" label="Phone number" v-model="form.phone" :helperText="errorMsg('phone')"
              :hasError="hasError('phone')" />

          <form-textarea

            label="Description"
            v-model="form.message"
            :helperText="errorMsg('message')"
            :hasError="hasError('message')"
            placeholder="Enter your message here..."
            rows="4"
            cols="10"
          ></form-textarea>

            <div>
              <form-button class="px-4" :loading="loading"><MailIcon size="20" class="mr-1"></MailIcon> Send <img class="ml-2" src="~/assets/img/arrow-right.png" alt="arrow"></form-button>



            </div>
          </form>


        </div>


      </div>



    </div>

  </div>
</template>


<script>
import { MailIcon } from 'vue-feather-icons'
  import form from '../pages/mixins/form';
  import Input from '../components/Form/Input.vue';
  export default {
    middleware: 'guest',
    // layout: "sing_in_up",
    head: {
      title: "Contact",
    },
    components: {
      Input,
      MailIcon
    },
    mixins: [form],

    data() {
      return {
        form: {
          name: "",
          email: "",
          phone: "",
          message: "",
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
          const res = await this.$axios.$post('/api/user/contact', this.form)
          this.loading = false;

          // toast massage show

          this.$store.commit("toaster/fire", {
            text: "Successfully send your message. please check your email account.",
          });

          this.$router.push("/");

        } catch (e) {
          // console.log(e.response.data);

          // toast massage show

          this.$store.commit("toaster/fire", {
            text: e.response.data.message,
            type: "error",
          });

          this.errors = e.response.data ?.errors || {};
          this.loading = false;

        }

      },


    }
  };

</script>

<style scoped>

</style>
