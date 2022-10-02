<template>
  <div class="about">
    <HelloWorld msg="This is an about page" />
    <ChartManth />

    <!-- last section start now -->

    <div class="row con">
      <div class="col-md-3">
        <ActiveUser msg="Most Active" />
      </div>
      <div class="col-md-3">
        <div class="man_box">
          <ActiveUser msg="Top Diamond" />
        </div>
      </div>
      <div class="col-md-3">
        <div class="man_box">
          <ActiveUser msg="Top Level" />
        </div>
      </div>
      <div class="col-md-3">
        <div class="man_box">
          <ActiveUser msg="Top Bean" />
        </div>
      </div>
    </div>
    <!-- last section The end -->
  </div>
</template>
<script>
// @ is an alias to /src
import HelloWorld from "@/components/HelloWorld.vue";
import ChartManth from "@/components/ChartManth.vue";
import ActiveUser from "@/components/ActiveUser.vue";

export default {
  name: "AboutView",
  components: {
    HelloWorld,
    ChartManth,
    ActiveUser,
  },
};
</script>
