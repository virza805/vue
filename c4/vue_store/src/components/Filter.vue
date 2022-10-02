<template>
  <div class="filter">
      <button @click="$store.commit('notes/filterNote', '')">All <br> ({{ allCount }})</button>
      <div class="filter_wrap">
        <div class="filter_top">
          <button
            v-for="role in allRoles"
          :key="role.role" 
          >
            {{ role }}
          </button>
        </div>
        <div class="filter_bottom">
          <button 
            v-for="color in noteCountByColor"
          :key="color.color" 
          :style="{'background-color': color.color}"
          @click="$store.commit('notes/filterNote', color.color)"
          >

            {{ color.noteCount }}
          </button>
        </div>
      </div>
      
      
      
  </div>
</template>

<script>
import { mapGetters } from 'vuex';
// import button from '../../../frontend/components/Form/button.vue';

export default {
  // components: { button },
  computed: {
    ...mapGetters("notes", ['noteCountByColor', 'allCount', 'allRoles'])
  }
};
</script>
<style>
  .filter {
    display: flex;
    align-content: center;
    justify-content: center;
}

.filter_bottom button {
    width: 62px;
}
</style>