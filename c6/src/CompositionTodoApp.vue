<template>
  <Layout class="container mx-auto px-4">


<button class="py-2 px-6 m-2 text-yellow-200 bg-red-500" @click="increment">+</button>
    <span class="py-2 px-6 m-2 text-yellow-200 bg-green-700">{{ counter }}</span>
<button class="py-2 px-6 m-2 text-yellow-200 bg-red-500" @click="decrement">-</button>
   
   <template #app-title><!-- MakeupCompositionAPI --></template>
    
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

<script setup>
import useCounter from './conter'
import {v4 as uid} from 'uuid'
import { computed, ref, watch } from 'vue'
import Header from './components/Header.vue'
import Todo from './components/Todo.vue'
import Composer from './components/Composer.vue'
import Layout from './components/Layout.vue'

const todos = ref(JSON.parse(localStorage.getItem("todos")) || []);

const filter_mode = ref("all");
const newTodo = ref("");

const { counter, increment, decrement } = useCounter();

const filteredTodos = computed(() => {
    
    if(filter_mode.value == "all") return todos.value;
    if(filter_mode.value == "done") return todos.value.filter((todo) => todo.done);
    if(filter_mode.value == "undone") return todos.value.filter((todo) => !todo.done);
});

const todoCount = computed(() => todos.value.length); 
const doneCount = computed(() => todos.value.filter((todo) => todo.done).length); 
const undoneCount = computed(() => todos.value.filter((todo) => !todo.done).length); 


const addTodo = () => {
    const todo = {
        id: uid,
        task: newTodo.value,
        done: false,
        time: new Date().toString(),
        };

        todos.value.unshift(todo);
        newTodo.value = "";
    };
    const toggleDone = (todo) => {
        todo.done = !todo.done;
    };

const clear = () => {
    todos.value = todos.value.filter((todo) => !todo.done);
};

watch(
    todos,
    (todos) => {
        localStorage.setItem("todos", JSON.stringify(todos));
    },
    {
        deep: true,
    }, 
);
</script>
<style>

</style>