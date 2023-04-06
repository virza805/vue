<template>
    <div>

        <div class="info">
            <h2>{{info.name}}</h2>
            <h4>Class: {{info.class}} | id = {{ info.id }}</h4>
            <h4>Gender: {{info.sex}}</h4>
            <button @click="remove" >Delete</button>
        </div>
        
        
    </div>
</template>
<script>
import {mapState, mapMutations} from "vuex"
export default {
    props:["info"],
    methods: {
        ...mapMutations('student', ['deleteStudent']),
        remove() {
            this.deleteStudent(this.info.id)
        //   this.$store.commit("notes/deleteNote", this.note.id);
        },
    }, 
    
}
</script>
<style>
    .info{
        border: 1px solid #fff77f;
        padding: 10px;
        margin: 10px
    }
</style>