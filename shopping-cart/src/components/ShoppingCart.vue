<template>
  <div>
    <h2>Shopping Cart</h2>
    <ul>
      <li v-for="product in products" :key="product.id">
        {{ product.title }} - {{ product.price | currency }} = {{ product.quantity }}
      </li>
    </ul>
    <h3>Total = {{ total | currency }}</h3>
    <button @click="check()">Checkout</button>
    <h4 v-if="message">{{ message }}</h4>
  </div>
</template>
<script>
import store from "@/store/index"
import { currency } from "../currency";
export default {
  computed: {
    products(){
      return store.getters.cartProducts
      // return this.$store.getters.cartProducts
    },

    total(){
      return store.getters.cartTotal
    },
    message(){
      return store.state.checkoutStatus
    }
  },
  methods:{
    check(bb){
      return store.dispatch('checkout', bb)
    }

  }
}
</script>
<style>

</style>
