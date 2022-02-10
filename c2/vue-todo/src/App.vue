<template>
  <div class="container mx-auto px-4">
    <Header />
    <div class="flex justify-center -space-x-20 my-5">
      <div class="mix-blend-multiply h-40 w-40 bg-blue-400 rounded-full"></div>
      <div class="mix-blend-multiply h-40 w-40 bg-pink-400 rounded-full"></div>
    </div>
    <h1 class="text-center text-4xl border-b-4 pb-4 border-indigo-700 ">Tailwind CSS ToDos</h1>
    <div class="component">
      <form action="" @submit.prevent="addTodo">
        <input v-model="newTodo" type="text" placeholder="Type and hit enter..." class=" bg-gray-200 w-full p-4">
      </form>
      <div class="filter flex justify-between">
        <div class="filter-left flex justify-start items-center">
          <button class="filter-btn px-3 text-xl">All ({{todoCount}}) </button>
          <button class="filter-btn px-3 text-xl">Pending ({{ undoneCount }}) </button>
          <button class="filter-btn px-3 text-xl">Done ({{ doneCount }}) </button>
        </div>
        <button class="filter-btn text-red-800 px-3 text-xl">Clear </button>

      </div>

      <!-- ToDo Start Now -->
      <Todo v-for="todo in todos" :key="todo.id" :todo="todo" @onToggle="toggleDone" />
      <!-- <div
       v-for="todo in todos" :key="todo.id" 
       :class="{ 'border-green-600': todo.done, }"
       @click="toggleDone(todo)"
       class="todo p-3 my-3 flex items-center border-l-4 cursor-pointer ">
        <div 
        :class="{ 'bg-green-600': todo.done, }"
        class="todo-status-dot h-2 w-2 bg-yellow-600 rounded-full mr-3"></div>
        <div class=" ">
          <p class="todo-content text-lg font-medium">{{ todo.task}}</p>
          <small class="todo-time">{{ todo.time }}</small>
        </div>
      </div> -->
      <!-- The End ToDo -->
      

    </div>
  </div>
</template>

<script>
  import {v4 as uid} from 'uuid'
  import Header from './components/Header.vue'
import Todo from './components/Todo.vue'
  export default {
    name: "Tanvir",
    data() {
      return {
        newTodo: "",
        todos: [
          {
            id: 1,
            task: "Learn vue.js",
            done: false,
            time: "Wed 14 Feb 2022 21:19:25 GMT +06 (Bangladesh)",
          },
          {
            id: 2,
            task: "Learn Laravel",
            done: true,
            time: "Wed 14 Feb 2022 21:19:25 GMT +06 (Bangladesh)",
          },
          {
            id: 3,
            task: "Learn laravel with vue.js",
            done: false,
            time: "Wed 14 Feb 2022 21:19:25 GMT +06 (Bangladesh)",
          },
        ]
      }
    },
    components: {
      Header,
        Todo
    },
    methods: {
      addTodo(e) {
        const todo = {
        // alert("adding todo")
        id: uid,
        task: this.newTodo,
        done: false,
        time: new Date().toString(),
        };

        this.todos.unshift(todo);
        this.newTodo = "";
      },
      toggleDone(todo) {
        todo.done = !todo.done;
      }
    },
    computed: {
      todoCount() {
        return this.todos.length;
      },
      doneCount() {
        return this.todos.filter((todo) => todo.done).length;
      },
      undoneCount() {
        return this.todos.filter((todo) => !todo.done).length;
      },
    }

  }
</script>
<style>

</style>