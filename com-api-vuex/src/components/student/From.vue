<template >
    <div>
        <form action="#" @submit.prevent="submitHandel">
            <h3>Name: <input type="text" v-model="note.name" /></h3>
            
            <label for="cars">Choose a Class: </label>
            <select name="class" id="cars" v-model="note.class" >
                <option value="" >Select one </option>
                <option :value="cla" v-for="cla in class" :key="cla">{{cla}}</option>
            </select>  
            <h3>Gender:
            <input type="radio" name="gender" value="Mail" v-model="note.sex" > Male
            <input type="radio" name="gender" value="Femail" v-model="note.sex" > Female
            <input type="radio" name="gender" value="Other" v-model="note.sex" > Other</h3>
            <!-- <pre>
                {{ students }}
            </pre> -->
            <button>Submit</button>
        </form>
    </div>
</template>
<script>
import {mapState, mapMutations} from "vuex"
export default {
    data(){
        return{
            note:{
                name:"",
                class:"",
                sex:""
            },
            // id:10
        };
    },
    
    computed:{
        
        ...mapState('student', ['class', 'sex', 'students']),
        
    },
    methods:{

        ...mapMutations('student', ['addStudent']),
        submitHandel(){
            const arr = this.students;

            // const last = arr[arr.length - 1];
            // console.log(last.id);

            let maxId = this.students.reduce((max, obj) => obj.id > max ? obj.id : max, 0);
            this.note.id = maxId + 1;
            
           this.addStudent(this.note);
        // this.$store.commit("student/addStudent", this.note);
           this.note = {
            name: "",
            class: "",
            sex: "",
          };
        }
    }
    
}
</script>
<style >
    
</style>