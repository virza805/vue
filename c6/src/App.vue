<template>

  <Layout class="container mx-auto px-4">
   
   <template #app-title> MakeupCompositionAPI </template>
    
    <div class="component">
      <Composer v-model="newTodo" @onEnter="addTodo" />
      <div class="filter flex justify-between">
        <div class="filter-left flex justify-start items-center">
          <button @click="filter_mode = 'all'" class="filter-btn px-3 text-xl">All ({{todoCount}}) </button>
          <button @click="filter_mode = 'undone'" class="filter-btn px-3 text-xl">Pending ({{ undoneCount }}) </button>
          <button @click="filter_mode = 'done'" class="filter-btn px-3 text-xl">Done ({{ doneCount }}) </button>
        </div>
        <button class="filter-btn text-red-800 px-3 text-xl" @click= "clear">Clear </button>

      </div>

      <!-- ToDo Start Now -->
      <Todo 
      v-for="todo in filteredTodos" 
      :key="todo.id" 
      :todo="todo" 
      @onToggle="toggleDone" 
      
      />
      

    </div>
  </Layout>
</template>

<script>
import {v4 as uid} from 'uuid'
import Header from './components/Header.vue'
import Todo from './components/Todo.vue'
import Composer from './components/Composer.vue'
import Layout from './components/Layout.vue'
  export default {
    name: "TodoApp",
    components: {
      Header,
        Todo,
        Composer,
        Layout
    },

    mounted() {
      this.todos = JSON.parse(localStorage.getItem("todos"));
    },
    updated() {
      localStorage.setItem("todos", JSON.stringify(this.todos));
    },

    data() {
      return {
        newTodo: "",
        todos: [],
        filter_mode: "all",
      };
    },
    methods: {
      handleTyping(task){
        this.newTodo = task;
      },
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
      },
      clear() {
        this.todos = this.todos.filter((todo) => !todo.done);
      }
    },
    computed: {
      filteredTodos(){
        if(this.filter_mode == "all") return this.todos;
        if(this.filter_mode == "done") return this.todos.filter((todo) => todo.done);
        if(this.filter_mode == "undone") return this.todos.filter((todo) => !todo.done);
      },


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