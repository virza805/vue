<template>
  <div>
    <div class="border border-dashed border-indigo-500 p-10 m-10 relative">
        <button @click="$emit('close')" class="text-2xl text-red-500 absolute top-0 right-2 bg-green-600">&times;</button>
        <slot name="sidebar-left" />
      <h1 class="text-4xl font-semibold">My Name is {{ name }}</h1>
        <slot name="sidebar-right" />
      <h2 text-2xl font-semibold>Age: {{ age }}</h2>
      <slot />
    </div>
  </div>
</template>
<script>
export default {
  props: {
    name: {
      type: String,
    },
    age: {
      type: Number,
      required: true,
    },
  },
};
</script>
<style></style>
