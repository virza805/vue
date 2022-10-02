<template>
  <form class="contextbox" @submit.prevent="handleSubmit">
    <input type="text" placeholder="Name" v-model="note.name">
    <input type="email" placeholder="Email" v-model="note.email">
    <input type="number" placeholder="Phone No." v-model="note.phone">
    <!-- <textarea 
    name="" 
    placeholder="Description" 
    class="" 
    spellcheck="false" 
    v-model="note.desc"
    id="" 
    cols="30" 
    rows="8"></textarea> -->
     
    <div class="controls">
      <h5>Select Role: </h5>
      <div class="colors">
        <div class="left_roles">
          <div class="left_top">
            <span v-for="role in roles" :key="role" >{{ role }}</span>
          </div>
          <div class="left_bottom">
            <span 
              v-for="color in colors"
              :key="color"
              :style="{
                backgroundColor:color,
                border: note.color === color ? '1px solid #333' : '',

              }"
              @click="note.color = color"></span>
          </div>
        </div>
      </div>
      <button>Add</button>
    </div>
  </form>
</template>

<script>
import { mapState, mapGetters } from 'vuex';
import { v4 } from 'uuid';
  export default {
    data() {
      return {
        note: {
          name: "",
          email: "",
          phone: "",
          // desc: "",
          color: null

        },
      };
    },
    computed: {
      ...mapState("notes", ["colors", "roles" ])
    },
    
    methods: {
      handleSubmit() {
        this.note.id = v4();
        this.note.created_at = new Date();
        // console.log(this.note);
        this.$store.commit("notes/addNote", this.note);

        this.note = {
          name: "",
          email: "",
          phone: "",
          // desc: "",
          color: null
        };
      },
      
    },
  };
</script>

<style>
  .contextbox .controls .colors span {
    width: 70px !important;
}
.left_top span {
    background: none !important;
    z-index: -1;
    margin-bottom: -7px !important;
    font-size: 16px !important;
}
.left_bottom span{
    cursor: pointer;
}
.left_bottom {
    margin-top: -22px !important;
}
</style>