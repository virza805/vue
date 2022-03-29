<template>
  <div class="max-w-6xl mx-auto">
      <h2>Details </h2>
      <Job :job="job" :showDetailsButton="false" />

      <div class=" max-w-3xl px-8 my-10 lg:p-0 mx-auto">
          <div v-html="job.description" class="prose prose-base max-w-none"></div>
      </div>
  </div>
</template>

<script setup>
import api from '@/helpers/api';
import { ref } from '@vue/reactivity';
import { useRoute } from 'vue-router';
import Job from "./job.vue";

const route = useRoute();
const job = ref(null);

const { ok, data } = await api.get(`/api/jobs/${route.params.slug}`);
if(!ok) alert("Failed to fetch job");
job.value = data.data;

</script>

<style>

</style>