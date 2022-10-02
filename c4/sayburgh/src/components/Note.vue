<template>
  <div 
    class="note" 
    :class="{
      'bg-color': note.done
      }" 
    @click="toggleDone(note)">
    <div>
      <h3 class="title">{{ note.name }} ({{note.role}})</h3>
      <h5 class="title"></h5>
      <p>{{ note.email }} | {{ note.phone }}</p>
    </div>
    <p class="time">{{ time }}</p>
    <div class="buttons"><button @click="remove" class="delete">X</button></div>
  </div>
</template>

<script>
  import dayjs from "dayjs";
  import Swal from 'sweetalert2'
  import relativeTime from "dayjs/plugin/relativeTime";

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
        Swal.fire({
          title: 'Are you sure?',
          text: "You won't be able to revert this!",
          icon: 'warning',
          showCancelButton: true,
          confirmButtonColor: '#3085d6',
          cancelButtonColor: '#d33',
          confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
          if (result.isConfirmed) {
            this.$store.commit("notes/deleteNote", this.note.id);
            Swal.fire(
              'Deleted!',
              'Your file has been deleted.',
              'success'
            )
          }
        })
      },
      toggleDone(note) {
        note.done = !note.done;
      }
    },

  };
</script>