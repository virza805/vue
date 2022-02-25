<template>
  <form action="" @submit.prevent="$emit('onEnter')">
    <input 
    type="text" 
    placeholder="Type and hit enter..." 
    class=" bg-gray-200 w-full p-4"
    :value="modelValue"
    @keydown="$emit('update:modelValue', $event.target.value)"
   
    > 
  </form>
</template>

<script setup>
  defineProps(["modelValue"]);

</script>

<style>

</style>