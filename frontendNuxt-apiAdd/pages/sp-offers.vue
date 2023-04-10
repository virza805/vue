<template>
  <div>
    <h2 class="my-14 text-4xl text-red-500 font-bold text-center">Special Offers Page
      <a class="text-green-600 " href="https://vue-feather-icons.egoist.sh/" target="_blank"
        rel="noopener noreferrer">icon link <AtSignIcon size="25" class="custom-class"></AtSignIcon></a>
      <a class="text-green-600 mx-auto " href="https://www.joomshaper.com/career" target="_blank"
        rel="noopener noreferrer">
        <AirplayIcon size="25" class="custom-class "></AirplayIcon> joomshaper
      </a>
    </h2>
    <div class="w-full p-3 mb-10 border-2 border-dashed shadow-sm rounded-2xl border-green-100 ">
      <img class="w-full mx-auto rounded-2xl" src="~/assets/img/cover.png" alt="Thanks" />
    </div>
    <h2 class="my-14 text-4xl text-red-500 font-bold ">
      <facebook-icon size="95" class="text-center  mx-auto "></facebook-icon>

    </h2>





    <!-- <ContactInfo /> https://vue-feather-icons.egoist.sh/ -->

  </div>
</template>

<script>
  import {
    AirplayIcon,
    AtSignIcon,
    FacebookIcon
  } from 'vue-feather-icons'
  export default {
    head: {
      title: "Special Offers",
    },
    components: {
      FacebookIcon,
      AtSignIcon,
      AirplayIcon
    },

  }

</script>

<style>

</style>
