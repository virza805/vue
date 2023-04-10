<template>
  <div>

    <h2 class="mt-14 mb-6 text-4xl text-red-500 font-bold text-center">Contact info.</h2>
    <div class="flex items-center justify-center py-12 lg:px-4 sm:px-6 mb-20 ">
      <div class="w-5/6 lg:w-3/5 flex flex-wrap flex-col-reverse lg:flex-row ">

        <div class="w-full lg:w-1/2 p-3 mb-10 border-2 border-dashed rounded-sm border-green -ml-2 mr-2">
          <div>
            <iframe
              src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d7302.662227186117!2d90.35932259999997!3d23.77122070000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1654852110225!5m2!1sen!2sbd"
              width="100%" height="600" style="border:0;" allowfullscreen="" loading="lazy"
              referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>

        </div>

        <div
          class="w-full lg:w-1/2 p-3 mb-10 border-2 border-dashed rounded-sm border-green -mr-2 ml-2 flex items-center">
          <div class="con_info">

            <a class=" ml-6 my-5 flex items-center" href="mailto:virza.bd@gmail.com" target="_blank">
              <img class="w-12" src="~/assets/img/mail.svg" alt="Phone">
              <p class="text-2xl ml-2">virza.bd@gmail.com</p>
            </a>
            <a class=" ml-6 my-5 flex items-center" href="tel:01795815660" target="_blank">
              <img class="w-12" src="~/assets/img/phone-call.svg" alt="Phone">
              <p class="text-2xl ml-2">01795815660</p>
            </a>
            <a class=" ml-6 my-5 flex items-center" href="vir-za.com" target="_blank">
              <img class="w-12" src="~/assets/img/globe.svg" alt="Phone">
              <p class="text-2xl ml-2">vir-za.com</p>
            </a>
            <a class=" ml-6 my-5 flex items-center"
              href="https://www.google.com.bd/maps/@23.8512289,90.2821869,16z?hl=en&authuser=0" target="_blank">
              <img class="w-12" src="~/assets/img/map.svg" alt="Phone">
              <p class="text-2xl ml-2">Saver, Dhaka - 1340, Bangladesh.</p>
            </a>
          </div>


        </div>


      </div>
    </div>


  </div>
</template>
<script>
  export default {

  }

</script>
<style scoped>

</style>
