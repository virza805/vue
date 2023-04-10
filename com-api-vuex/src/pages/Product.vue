<template>
  <div class="about">
    <h1>This is Product page</h1>
      <h1 v-if="loding">Loading... .. .</h1>
    <div class="produvt-box giv-way-row-wrap">
      <Product v-for="pro in products" :key="pro.id" :product="pro" />
    </div>
  </div>
</template>


<script>
import { ref } from 'vue';
import { mapState, useStore } from 'vuex';
import Product from '../components/product/Products.vue';

export default {
  components: { Product },
  data() {
    return {
      loding:false,
    }
  },
  setup() {
    // const store = useStore();
    // const productProxy = ref(store.state.products.products.value);
    // const productProxy = store.state.products.products;
    // console.log(productProxy);
    

  },
  computed:{
    // products(){
    //   const store = useStore();
    //   return store.state.products.products
    // },
    ...mapState('products', ['products'])
  },
  mounted(){
    // const store = useStore();
    // // this.loding = true;
    // store.dispatch('products/fetchProduct');
    // // this.loding = false;
    if (!this.products.length) { // Check if the blogs data is not available
      this.$store.dispatch('products/fetchProduct');
    }
    
  },
}
</script>
<style>

</style>
