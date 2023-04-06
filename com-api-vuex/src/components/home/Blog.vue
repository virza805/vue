<template>
    <div>

        <div class="info">
            <h2>{{blog.title}}</h2>
            <h4>id = {{ blog.id }}</h4>
            <h4>Price: {{blog.price}}</h4>
            <h4>Inventory: {{blog.inventory}}</h4>
            <h4>Category: {{blog.category_name}}</h4>
            <button @click="remove" >Delete</button>
        </div>
        
        
    </div>
</template>
<script>
import {mapState, mapMutations} from "vuex"
export default {
    props:["blog"],
    methods: {
        ...mapMutations('blogs', ['deleteBlog']),
        remove() {
            this.deleteBlog(this.blog.id)
        //   this.$store.commit("notes/deleteNote", this.note.id);
        },
    }, 
    
}
</script>
<style>
    .blog{
        border: 1px solid #fff77f;
        padding: 10px;
        margin: 10px
    }
</style>