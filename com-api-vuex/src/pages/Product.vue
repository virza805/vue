<template>
  <div class="about">
    <h1>This is Product page</h1>
    <Product />
  </div>
</template>


<script>
import { useStore } from 'vuex';
import Product from '../components/product/Products.vue';

export default {
  components: { Product },
  setup() {
    const store = useStore();

  },
  mounted(){
    const store = useStore();
    store.dispatch('products/fetchProduct');

  },
  computed:{
    products(){
      const store = useStore();
      return store.state.products.products
    }
  }
}
</script>
<style>

</style>
