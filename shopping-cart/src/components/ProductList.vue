<template>
  <div class="hello">
    <h2>Product List</h2>
    <h1 v-if="loading">Loading ... .. .</h1>
    <ul v-else >
      <li v-for="product in products" :key="product.id">
        {{ product.title }} - {{ product.price | currency }} = available product ({{ product.inventory }} qut.)
        <button @click="addProductToCart(product)">Add to cart</button>
      </li>
    </ul>
  </div>
</template>

<script>
// import shop from "@/api/shop.js";
import store from '@/store/index.js';
import { currency } from '../currency';
import { mapState } from 'vuex';

export default {
  name: 'ProductList',
  data() {
    return {
      loading: false
    }
  },

  computed: {

    products(){
      // return store.state.products
      return store.getters.availableProducts
    },
    availableProducts(){
      return store.getters.availableProducts
    }
  },
  methods: {
    addProductToCart(product){
      store.dispatch('addProductToCart', product)
    }
  },
  created(){
    this.loading = true
    store.dispatch('fetchProducts')
    .then(() => this.loading = false)

  },
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

</style>
