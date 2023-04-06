<template>
    <form class="contextbox" @submit.prevent="handleSubmit">
      <input type="text" placeholder="Title" v-model="note.title">
      <textarea 
      name="" 
      placeholder="Description" 
      class="" 
      spellcheck="false" 
      v-model="note.desc"
      id="" 
      cols="30" 
      rows="8"></textarea>
      <div class="controls">
        <div class="colors">
          <span 
          v-for="color in colors"
          :key="color"
          :style="{
            backgroundColor:color,
            border: note.color === color ? '1px solid #333' : '',
  
          }"
          @click="note.color = color"></span>
          
        </div>
        <button>Add</button>
      </div>
    </form>
  </template>
  
  <script>
  import { mapState } from 'vuex';
  import { v4 } from 'uuid';
    export default {
      data() {
        return {
          note: {
            title: "",
            desc: "",
            color: null
          },
        };
      },
      computed: {
        ...mapState("notes", ["colors"]),
      },
      methods: {
        handleSubmit() {
          this.note.id = v4();
          this.note.created_at = new Date();
          // console.log(this.note);
          this.$store.commit("notes/addNote", this.note);
  
          this.note = {
            title: "",
            desc: "",
            color: null,
          };
        },
      },
    };
  </script>