<template>
    <div class="student">
        <h2>This is student page</h2>
        <From />
        <Filter />
        
        <Info v-for="student in filteredClass" :key="student.id" :info="student" />
    </div>
</template>
<script>
import From from '../components/student/From.vue';
import Filter from '../components/student/Filter.vue';
import Info from '../components/student/Info.vue';
import {mapState, mapGetters} from "vuex"

export default {

    components: { From, Filter, Info },
    computed: {
    ...mapGetters("student", ["allStudents", "getUserById", "filteredClass"]),
    ...mapState("student", ['students']),
    
    },
};
// mapState("student", ['students'])

</script>
<style>
    .student {
        width: 850px;
        margin: 0 auto;
    }

    .student form {
        margin-bottom: 30px;
    }
</style>