
<template>
  <div class="container py-20">
  <h2 class=" text-4xl text-green-500 font-bold text-center my-5">Carts</h2>
    <table class="table-auto w-full">
      <thead>
      <tr>
        <th style="width: 30px" class="border px-4 py-2"></th>
        <th style="width: 50px" class="border px-4 py-2">Image</th>
        <th class="border px-4 py-2 text-left">Name</th>
        <th style="width: 150px" class="border px-4 py-2">Price</th>
        <th style="width: 150px" class="border px-4 py-2">Quantity</th>
        <th style="width: 150px" class="border px-4 py-2">Total</th>
      </tr>
      </thead>
      <tbody>
      <tr v-for="product in cart" :key="product.id" >
        <td class="border px-4 py-2">
          <button @click="remove(product.id)">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
            </svg>
          </button>
        </td>
        <td class="border px-4 py-2">
          <img v-if="product.image" :src="'http://127.0.0.1:8000/storage/uploads/' + product.image" :alt="product.image" width="120">
          <img v-else src="~/assets/img/fresh-fruit.png" width="50" alt="">
        </td>
        <td class="border px-4 py-2">{{product.name}}</td>
        <td class="border px-4 py-2 text-center">${{product.price.toFixed(2)}}</td>
        <td class="border px-4 py-2 text-center">
          <div class="flex justify-center items-center">
            <button @click.prevent="minus(product)" class="bg-gray-50 h-6 w-6 flex justify-center items-center rounded-full mr-3 font-bold">-</button>

            {{product.quantity}}

            <button @click.prevent="plus(product)" class="bg-gray-50 h-6 w-6 flex justify-center items-center rounded-full ml-3 font-bold">+</button>
          </div>
        </td>
        <td class="border px-4 py-2 text-center">${{(product.quantity * product.price).toFixed(2)}}</td>
      </tr>

      <tr>
        <td class="border px-4 py-2 text-center text-right" colspan="5">Total</td>
        <td class="border px-4 py-2 text-center">${{ cartTotal }}</td>
      </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import { mapGetters, mapState, mapMutations } from 'vuex';
export default {
  name: "cart",
  data() {
    return {
      products: [],
      total: 0
    }
  },
  computed:{
      ...mapState('products', ['cart','products']),
      ...mapGetters('products', ['cartTotal'])
  },
  methods: {
    ...mapMutations('products', ['removeProductToCart', 'incrementItemQuantity', 'decrementItemQuantity']),
    remove(id){
      this.removeProductToCart(id) // delete from state | mapMutations requerd

    },
    minus(item){
      this.decrementItemQuantity(item)
    },
    plus(item){
      this.incrementItemQuantity(item)
    },
    getCartItems() {
      const getProductsLocalStorage = JSON.parse(localStorage.getItem('cart'));
      const getProductsStore = this.$store.getters["cart/getCart"];

      if(getProductsStore.length) {
        this.products = getProductsStore;
      } else {
        this.products = getProductsLocalStorage;
      }

      this.products.forEach(item => {
        this.total += (item.quantity * item.price)
      })

    },
    removeCart(product_id) {
      this.$store.dispatch("cart/removeCart", product_id);
      this.getCartItems();
    },
    cartChange(product, type) {
      this.$store.dispatch("cart/addToCart",
        {
          product: product,
          type: type
        }
      );

      this.getCartItems();
    }
  },
  mounted() {
    this.getCartItems();
    // this.unsubscribe = this.$store.subscribe((_, state) => {
    //   localStorage.setItem("products:cart", JSON.stringify(state.products.cart));
    // });
  },

  // info@gjafabref.is

}
</script>

<style scoped>

</style>
