<template>
  <div class="app">
    <Gif />
    <div class="header">
      <h1 class="app-title">Vuex to Store items</h1>
    </div>
    <!--Editor-->
    <Editor />

    <!--Filter-->
    <Filter />

    <div class="notes">
      <!--Note-->
      <Note v-for="note in filteredNotes" :key="note.id" :note="note" />
    </div>
  </div>
</template>
<script>
  import {
    mapGetters
  } from 'vuex';
  import Gif from './components/Gif.vue';
  import Editor from './components/Editor.vue';
  import Filter from './components/Filter.vue';
  import Note from './components/Note.vue';
  export default {
    mounted() {
      this.unsubscribe = this.$store.subscribe((_, state) => {
        localStorage.setItem("notes:notes", JSON.stringify(state.notes.notes));
      });
    },
    components: {
      Gif,
      Editor,
      Filter,
      Note
    },
    computed: {
      ...mapGetters("notes", ["filteredNotes"]),
    },
  };
</script>