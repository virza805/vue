<template>
    <div class="filter">
        <button @click="$store.commit('notes/filterNote', '')">All ({{ allCount }})</button>
        <button 
          v-for="color in noteCountByColor"
         :key="color.color" 
         :style="{'background-color': color.color}"
         @click="$store.commit('notes/filterNote', color.color)"
         >
  
          {{ color.noteCount }}
        </button>
        
    </div>
  </template>
  
  <script>
  import { mapGetters } from 'vuex';
  export default {
    computed: {
      ...mapGetters("notes", ['noteCountByColor', 'allCount'])
    }
  };
  </script>