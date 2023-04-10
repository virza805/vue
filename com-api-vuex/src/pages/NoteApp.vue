<template>
    <div class="app">
        <h2>Vuex Storage</h2>
      <div class="header"><h1 class="app-title">VuexStorage Notes</h1></div>
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
  
  import { mapGetters } from 'vuex';
  import Editor from '../components/note/Editor.vue';
  import Filter from '../components/note/Filter.vue';
  import Note from '../components/note/Note.vue';
  
  export default {
    mounted(){
      this.unsubscribe = this.$store.subscribe((_, state) => {
        localStorage.setItem("notes:notes", JSON.stringify(state.notes.notes));
      });
    },
      components: { Editor, Filter, Note },
      computed: {
        ...mapGetters("notes", ["filteredNotes"]),
      },
  };
  </script>