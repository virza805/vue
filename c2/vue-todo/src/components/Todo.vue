<template>
    <div
        @click="$emit('onToggle', todo)"
       :class="{ 'border-green-600': todo.done, }"
     
       class="todo p-3 my-3 flex items-center border-l-4 cursor-pointer ">
        <div 
        :class="{ 'bg-green-600': todo.done, }"
        class="todo-status-dot h-2 w-2 bg-yellow-600 rounded-full mr-3"></div>
        <div class=" ">
          <p class="todo-content text-lg font-medium">{{ todo.task}}</p>
          <small class="todo-time">{{ todo.time }}</small>
        </div>
      </div>
</template>

<script>
export default {
    props: ["todo"],
}
</script>

<style>

</style>