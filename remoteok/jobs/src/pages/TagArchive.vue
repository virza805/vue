
<template>
  <div>
    <div class="max-w-6xl mx-auto">
        <h2 class=" text-2xl font-semibold text-yellow-700">Jobs of #{{ route.params.slug }}</h2>
    </div>
    <div class="max-w-6xl mx-auto">
      <Loading :active="loading" />
      <Job v-for="job in jobs" :key="job.id" :job="job" />

      <div ref="trigger_point" class="my-10 text-center" >
        <SyncLoader color="#6560EC" v-if="pagination_loading" />
      </div>

    </div>

  </div>
</template>

<script>
export default {

}
</script>
<script setup>
    import Loading from 'vue-loading-overlay';
    import { useIntersectionObserver } from '@vueuse/core'
    import api from '@/helpers/api';
    import SyncLoader from '../components/SyncLoader.vue';
    import { reactive, ref } from '@vue/reactivity';
    import { onMounted, watch } from '@vue/runtime-core';
    import Job from '../components/job.vue';
    import { useRoute } from "vue-router";

    const route = useRoute();

    const loading = ref(false);
    const pagination_loading = ref(false);
    const jobs = ref([]);
    const trigger_point = ref(null);


  console.log(trigger_point);

  const pagination = reactive({
    page: 1,
    last_page: null,
  });

  const loadInitialJobs = async () => {
    const { ok, data } = await  api.get(`/api/tags/${route.params.slug}/jobs`); // this is api sos | same axios
    if(!ok) alert("Failed to fetch jobs");

    // loading.value = false;
    // console.log(data.data);
    jobs.value = data.data;
    pagination.last_page = data.meta.last_page;
    pagination.page = data.meta.current_page;
  }


  onMounted(async () =>{
    loading.value = true;
    loadInitialJobs();
    loading.value = false;
  });

  watch(
      () => route.params.slug,
      async () => {
          if (route.params.slug) loadInitialJobs();
      }
  );



  useIntersectionObserver( trigger_point, async ([{isIntersecting}]) => {
    
      if(isIntersecting) { // ISSUE: alling initially
      pagination_loading.value = true;

      const { ok, data } = await api.get(`/api/tags/${route.params.slug}/jobs?page=${++pagination.page}`);

      if(!ok) alert("Failed to fetch jobs");
          console.log("I am Visible");
        
      jobs.value = [...jobs.value, ...data.data];

      pagination_loading.value = false;

      }
    },
  )


  const loadMore = () => {
    console.log("I am visible");
  };

</script>

<style>

</style>
