<template>
  <span>
    <b class="text-green-600 " v-if=" $auth.user.role == 1">superAdmin</b>
    <b class="text-green-400 " v-if=" $auth.user.role == 2">Admin</b>
    <b class="text-yellow-500 " v-if=" $auth.user.role == 3">Manager</b>
    <b class="text-yellow-600 " v-if=" $auth.user.role == 4">Other</b>
  </span>
</template>
<script>
export default {

}
</script>
<style lang="">

</style>
