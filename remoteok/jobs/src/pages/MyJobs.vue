<template>
  <div>
      <suspense>
          <template #fallback>
              <Loading :active="true" />
          </template>

            <MyJobList />
      </suspense>
  </div>
</template>

<script setup>
import MyJobList from "@/components/MyJobList.vue";
import Loading from 'vue-loading-overlay';

</script>

<style>

</style>