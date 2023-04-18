<template>
  <div ref="myElement" @click="toggleClass">Click me!</div>
</template>

<script>
export default {
  methods: {
    toggleClass() {
      const element = this.$refs.myElement;

      if (element.classList.contains('my-class')) {
        element.classList.remove('my-class');
      } else {
        element.classList.add('my-class');
      }
    }
  }
};
</script>

<style>
.my-class {
  background-color: red;
}
</style>
