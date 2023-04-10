<template>
  <div class="about">
    <h1>This is Cart page</h1>
      <h1 v-if="loding">Loading... .. .</h1>
      <table border="5">
            <thead>
                <tr>
                    <th>Sr No.</th>
                    <th>Product Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                <Cart v-for="pro in cart" :key="pro.id" :cart="pro" />
            </tbody>
            <tfoot>
                <tr>
                    <td></td>
                    <td></td>
                    <td>Total</td>
                    <td>price</td>
                    <td>{{ cartTotal }}</td>
                </tr>
                <tr>
                  <button @click="check()">Checkout</button>
                </tr>
            </tfoot>
        </table>
        
  </div>
</template>


<script>

import { mapGetters, mapState } from 'vuex';
import Cart from '../components/product/Cart.vue';

export default {
  components: { Cart },

  computed:{
    // products(){
    //   const store = useStore();
    //   return store.state.products.products
    // },
    ...mapState('products', ['cart']),
    ...mapGetters('products', ['cartTotal'])
  },
  // mounted(){
    
  //   if (!this.products.length) { // Check if the blogs data is not available
  //     this.$store.dispatch('products/fetchProduct');
  //   }

    
  // },
  methods:{

    check(bb) {
      this.$store.dispatch('products/checkout', bb)
    }
  }
}
</script>
<style>

</style>
