<template>
  <accordion>
    <accordion-item :openByDefault="true">
      <!-- This slot will handle the title/header of the accordion and is the part you click on -->
      <template slot="accordion-trigger">
        <h3 class="bs-light-green-bg p-5 rounded-t-xl cursor-pointer flex justify-between">
          Categories

          <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
          </svg>
        </h3>
      </template>
      <!-- This slot will handle all the content that is passed to the accordion -->
      <template slot="accordion-content">
        <div class="border border-t-0 border-gray-100 p-6">
          <ul class="leading-10">
            <li v-for="cat in cat_list " :key="cat.id" >
                <nuxt-link class="hover:text-green-600" :to="`/category/?id=${cat.id}`">{{ cat.name }}</nuxt-link>
            </li>

            <li>
              <accordion>
                <accordion-item :openByDefault="true">
                  <template slot="accordion-trigger">
                    <div class="flex justify-between cursor-pointer items-center hover:text-green-600">
                      Fruits
                      <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                      </svg>
                    </div>
                  </template>

                  <template slot="accordion-content">
                    <ul class="pl-4 text-sm leading-8 mb-4">
                      <li><nuxt-link class="hover:text-green-600" to="/">Sub Category 1</nuxt-link></li>
                      <li><nuxt-link class="hover:text-green-600" to="/">Sub Category 2</nuxt-link></li>
                    </ul>
                  </template>
                </accordion-item>
              </accordion>
            </li>

          </ul>
        </div>
      </template>
    </accordion-item>
  </accordion>
</template>

<script>
import Accordion from "./accordion";
import AccordionItem from "./accordion-item";

export default {
  name: "Sidebar",
  components: {
    Accordion,
    AccordionItem,
  },
  data() {
    return {
      cat_list:{}
    }
  },
  created: function(){
    this.getData();
  },

  methods: {

    async getData() {
      this.load = true;
      let r = await this.$axios.$get('/api/all/client-categories')
      this.cat_list = r.data;
      this.load = false;
    },
  },
};
</script>

<style>
</style>
