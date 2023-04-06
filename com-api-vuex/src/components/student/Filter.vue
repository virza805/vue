<template >
    <div class="filter">
        <span @click="$store.commit('student/filterStudent', '')">All ({{ allCount }})</span>
        <span @click="filterStudent('v')">v ({{ cCount('v') }})</span>
        <span @click="$store.commit('student/filterStudent', 'vi')">vi ({{ cCount('vi') }})</span>
        <span @click="filterStudent('vii')">vii ({{ cCount('vii') }})</span>
        <span @click="filterStudent('viii')">viii ({{ cCount('viii') }})</span>
        <span @click="filterStudent('ix')">ix ({{ classCount }})</span>
        <span @click="filterStudent('x')">x ({{ cCount('x') }})</span>
        <span @click="filterGender('Mail')">Mail ({{ genderCount('Mail') }})</span>
        <span @click="filterGender('Femail')">Femail ({{ genderCount('Femail') }})</span>
    </div>
</template>
<script>
import { mapGetters, mapState, mapMutations } from 'vuex';
  export default {
    computed: { // classCount
      ...mapState("student", ['students']),
      ...mapGetters("student", ['allCount', 'classCount', 'cCount', 'genderCount']),

      // user() {
      // return this.cCount('ix'); // Pass the parameter here
      // }

    },
    methods:{
      ...mapMutations("student", ['filterStudent','filterGender'])
    }
  };
</script>
<style>
    .filter span{
        margin: 5px;
        border: 1px solid #c9c7ca;
        padding: 5px 10px;
        box-shadow: 2px 2px 2px #ddd;
        cursor: pointer;
    }
</style>