<template>
    <tr>
        <td>{{ cart.id }}</td>
        <td>{{ cart.title }}</td>
        <td>{{ cart.price }}</td>
        <td>{{ cart.quantity }}</td>
        <td>{{ cart.iTotalPrice }}</td>
    </tr>
</template>
<script>
// import { mapMutations, mapActions } from 'vuex';

export default {
    props:["cart"],
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