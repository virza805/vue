<template>
  <div class="about">
    <HelloWorld msg="This is an about page" />
    
    <Person name="Tanvir" age="27">
      <p>
      Lorem ipsum dolor sit amet consectetur, adipisicing elit. Expedita cumque quaerat repellendus optio modi fuga maiores vel recusandae minus voluptatem fugit dolorum, nam saepe sunt blanditiis unde, commodi dolor at.
    </p>

    <template #sidebar-right >
      <div>
        <h2>Sidebar right</h2>
      </div>
    </template>

    <template #sidebar-left >
      <div>
        <h2>Sidebar Left</h2>
      </div>
    </template>

    </Person>

    <br>
    <br>
    <br>
<div></div>
    <button @click="visible = !visible" class=" p-2 border-2 border-red-600" >Show This div</button>

    <Person @close="handleEventX" name="Md. Al-Amin" age="28" v-if="visible">
      <p>
      Lorem ipsum dolor sit amet consectetur, adipisicing elit. Expedita cumque quaerat repellendus optio modi fuga maiores vel recusandae minus voluptatem fugit dolorum, nam saepe sunt blanditiis unde, commodi dolor at.
      </p>

    </Person>
   
    <br>
    <br>
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

import ActiveUser from "@/components/ActiveUser.vue";
import Person from "@/components/Person.vue";

export default {
  name: "AboutView",
  components: {
    HelloWorld,
    ActiveUser,
    Person
},

data() {
  return {
    visible: false,
  }
},

methods: {
  toggle() {
    this.visible = !this.visible;
  },
  handleEventX() {
    
    // alert("xXx");
    this.visible = false;
  },
},
};
</script>
