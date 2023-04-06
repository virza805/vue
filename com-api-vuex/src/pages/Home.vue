<template>
  <main>
    
    <h2>Home pae</h2>
    
    <Blog v-for="blog in allBlog" :key="blog.id" :blog="blog" />
  </main>
</template>

<script>
import Blog from '../components/home/Blog.vue';
import {mapState, mapGetters, mapActions } from "vuex"

export default {

  components: { Blog },
  computed: {
    
  ...mapState("blogs", ['blogs']),
  ...mapGetters("blogs", ['allBlog']),
  },
  mounted(){
    this.$store.dispatch('blogs/fetchPosts');
    
  },
  // methods: {
  //   ...mapActions("blogs", ['fetchPosts']),
  // },
  // created() {
  //   this.$store.dispatch('blogs/fetchPosts');
  // }
};


</script>

