import { reactive, toRefs } from "vue"

export let stateData=()=>{
    let state = reactive({
        name: "Tanvir",
        age: 27,
        post:[]
    });

    return toRefs(state)
}