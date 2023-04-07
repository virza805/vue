<template>
  <main>
    
    <h2>Home pae</h2>
    
    <Blog v-for="blog in allBlog" :key="blog.id" :blog="blog" />
  </main>
</template>

<script>
import Blog from '../components/home/Blog.vue';
import {mapState, mapGetters } from "vuex"

export default {

  components: { Blog },
  computed: {
    
  ...mapState("blogs", ['blogs']),
  ...mapGetters("blogs", ['allBlog']),
  },
  mounted(){
    // console.log(this.blogs.length);
    // If it's empty, then the fetchPosts action is dispatched to fetch the blog posts from the server. If blogs data is already available, then the fetchPosts action will not be dispatched.
    if (!this.blogs.length) { // Check if the blogs data is not available
      this.$store.dispatch('blogs/fetchPosts');
    }
    
  },
};


</script>

