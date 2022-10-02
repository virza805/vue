<template>
  <div class="note" :style="{ 'background-color': note.color }">
    <div>
      <h3 class="title">{{ note.name }} ({{note.color}})</h3>
      <h5 class="title"></h5>
      <p>{{ note.email }} | {{ note.phone }}</p>
    </div>
    <p class="time">{{ time }}</p>
    <div class="buttons"><button @click="remove" class="delete">X</button></div>
  </div>
</template>
<script>
import dayjs from "dayjs";
import relativeTime  from "dayjs/plugin/relativeTime";
dayjs.extend(relativeTime)
  export default {
    props: ["note"],
    computed: {
      time() {
        return dayjs(this.note.created_at).fromNow();
      }
    },
    methods: {
      remove() {
        this.$store.commit("notes/deleteNote", this.note.id);
      },
    },
    
  };
</script>