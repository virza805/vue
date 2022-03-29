<template>
  <div>
    <div class="max-w-6xl mx-auto">
        <h2 class=" text-center font-semibold text-2xl text-green-700">My job List </h2>
      <Loading :active="loading" />
      <Job v-for="job in jobs" :key="job.id" :job="job" />

      <!-- <div ref="trigger_point" v-if="pagination.page < pagination.last_page" class="my-10 text-center">
        <SyncLoader color="#6560EC" v-if="pagination_loading" />
      </div> -->
      <div ref="trigger_point" class="my-10 text-center" >
        <SyncLoader color="#6560EC" v-if="pagination_loading" />
      </div>
    </div>

  <!-- <pre>
    {{ jobs }}
  </pre> -->
  </div>
</template>

<script setup>
    import Loading from 'vue-loading-overlay';
    import { useIntersectionObserver } from '@vueuse/core'
    import api from '@/helpers/api';
    import SyncLoader from '../components/SyncLoader.vue';
    import { reactive, ref } from '@vue/reactivity';
    import { onMounted } from '@vue/runtime-core';
    import Job from '../components/job.vue';
import useAuthStore from '@/store/auth';

  // const jobs = await api.get("/api/jobs");

  // console.log(jobs);
  // ~ Loading ar bapar acha akta

  const loading = ref(false);
  const pagination_loading = ref(false);
  const jobs = ref([]);
  const trigger_point = ref(null);

  console.log(trigger_point);

  const auth = useAuthStore();

  const pagination = reactive({
    page: 1,
    last_page: null,
  });


  onMounted(async()=>{
    loading.value = true;
    const { ok, data } = await  api.get(`/api/jobs?user_id=${auth.user.id}`); // this is api sos | same axios
    if(!ok) alert("Failed to fetch jobs");

    loading.value = false;
    // console.log(data.data);
    jobs.value = data.data;
    pagination.last_page = data.meta.last_page;
    pagination.page = data.meta.current_page;
  });



  useIntersectionObserver( trigger_point, async ([{isIntersecting}]) => {
    
      if(isIntersecting) { // ISSUE: alling initially
      pagination_loading.value = true;

      const { ok, data } = await api.get(`/api/jobs?page=${++pagination.page}&user_id=${auth.user.id}`);

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