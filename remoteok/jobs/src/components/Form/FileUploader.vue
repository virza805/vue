<template>
  <div >
    <FilePond :server="serverConfig" name="file" />
  </div>
</template>

<script setup>
// Import Vue FilePond
import vueFilePond from "vue-filepond";

// Import FilePond styles
import "filepond/dist/filepond.min.css";

defineProps: ({
    modelValue: {
        
    default: "",
    type: String,
    }
});


const emit = defineEmits(["update:modelValue"]);

// Create component
const FilePond = vueFilePond();


const serverConfig = {
    process: {
        // url: import.meta.env.VITE_API_URL + "/api/uploads",
        url: "https://jobs-api.return0.codes/api/uploads",
        method: "POST",
        headers: {
            Authorization: "Bearer" + localStorage.getItem("token"),
        },
        withCredentials: false,
        onload: (response) => {
            // console.log(response);
            emit("update:modelValue", response.url);
        },
    },
};

</script>