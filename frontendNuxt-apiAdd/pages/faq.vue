<template>
  <div>
    <h2 class="my-8 text-4xl text-red-500 font-bold text-center">FAQ's Page</h2>

    <div class="min-h-full flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8">
      <div class="max-w-md w-full space-y-8">
        <div>
          <h2 class="mt-6 text-center text-3xl font-extrabold text-yellow-600">
            <Tanvir>
              <span>T</span>
              <span>A</span>
              <span>N</span>
              <span>V</span>
              <span>i</span>
              <span>R</span>
            </Tanvir>
          </h2>

        </div>

        <Dropdown title="+ | How can i help you ?" class="bg-gray-100 p-3 cursor-pointer ">
          <div class="bg-green-100 p-4 ">
            Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web
            designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have
            scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins
            with:
          </div>
        </Dropdown>
        <Dropdown title="+ | How can i help you ?" class="bg-gray-100 p-3 cursor-pointer ">
          <div class="bg-green-100 p-4 ">
            Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web
            designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have
            scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins
            with:
          </div>
        </Dropdown>
        <Dropdown title="+ | How can i help you ?" class="bg-gray-100 p-3 cursor-pointer ">
          <div class="bg-green-100 p-4 ">
            Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web
            designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have
            scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins
            with:
          </div>
        </Dropdown>
        <Dropdown title="+ | How can i help you ?" class="bg-gray-100 p-3 cursor-pointer ">
          <div class="bg-green-100 p-4 ">
            Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web
            designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have
            scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins
            with:
          </div>
        </Dropdown>
        <Dropdown title="+ | How can i help you ?" class="bg-gray-100 p-3 cursor-pointer ">
          <div class="bg-green-100 p-4 ">
            Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web
            designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have
            scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins
            with:
          </div>
        </Dropdown>

      </div>
    </div>
    <Popup />
    <Test />

    <ContactInfo />
  </div>
</template>

<script>
  import Dropdown from '../components/Dropdown.vue';
  import Popup from '../components/Popup.vue';
  import Test from '../components/Test.vue';

  export default {
    head: {
      title: "FAQ's",
    },
    components: {
    Dropdown,
    Test,
    Popup
}
  }

</script>

<style>

</style>
