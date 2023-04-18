<template>
    <tr>
        <td>{{ cart.id }}</td>
        <td>{{ cart.title }}</td>
        <td>{{ cart.price }}</td>
        <td>{{ cart.quantity }}</td>
        <td>$ {{ cart.quantity * cart.price }} </td>
    </tr>
</template>
<script>
// import { mapGetters } from 'vuex';

export default {
    props:["cart"],

    computed:{
        // products(){
        //   const store = useStore();
        //   return store.state.products.products
        // },
        // ...mapState('products', ['cart']),
        // ...mapGetters('products', ['itemTotal'])
    },
    // methods:{
    //     ...mapMutations('products', ['pushProductToCart']),
    //     ...mapActions('products', ['addProductToCart']),
        
    //     addToCart(item){
    //         // this.addProductToCart(item);
    //         this.pushProductToCart(item);
    //     },
    //     addProductToCart(ss) {
            
    //         // this.addProductToCart(ss);
    //         this.$store.dispatch('products/addProductToCart', ss)
    //     }
    // },

}

</script>
<style>


</style>