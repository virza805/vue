<template>
  <div>
    <h1>প্রতি শনিবার  সোমবার এবং বুধবার </h1>
    <h2>Total Book = {{bookListLength}} </h2>

    <input type="text" @keypress.enter="addBook" v-model="bookName">
  
  </div>
</template>

<script>
import {reactive, toRefs, onMounted, watch} from "vue";
import {stateData} from "./assets/stateData";
import {computed, ref} from "vue";
import {useStore} from "vuex";

export default {
  setup() {
    let store = useStore()
    let bookListLength = computed(() => store.getters.getAllBookLength);

    let bookName = ref("")
    let addBook = ()=> {
      store.dispatch('addBook', bookName.value)
    }
    console.log(store.state.bookList)

    return {
      bookListLength,
      bookName,
      addBook
    };
  },
};
</script>

<style>

</style>