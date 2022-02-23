<template>
  <div class="app">
      <Gif />
    <div class="header"><h1 class="app-title">Vue Notes</h1></div>
    <!-- Editor -->
    <!-- Filter -->
    <div class="notes">
      
    </div>
  </div>
</template>
<script>

import Gif from './components/Gif.vue';
export default {
    components: { Gif }
};
</script>