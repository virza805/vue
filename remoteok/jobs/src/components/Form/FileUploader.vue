<template>
  <div >
    <div v-if="modelValue" class="flex items-center justify-between border border-slate-600">
        <div class="flex items-center">
            <img class="w-12 h-12 " :src="modelValue" alt="Company Logo">
            <p>Company Logo</p>
        </div>

        <button 
        @click="handleDeleteImage(modelValue)"  
        class="pr-4 text-2xl text-red-500">&times;</button>
    </div>
    <FilePond v-else :server="serverConfig" name="file" />
  </div>
</template>

<script setup>
// Import Vue FilePond
import vueFilePond from "vue-filepond";

import "filepond/dist/filepond.min.css";
import api from "@/helpers/api";

 defineProps: ({
    modelValue: {
        
    default: "",
    type: String,
    },
});


const emit = defineEmits(["update:modelValue"]);

// Create component
const FilePond = vueFilePond();


const serverConfig = {
    process: {
        url: import.meta.env.VITE_API_URL + "/api/uploads",
        // url: "https://jobs-api.return0.codes/api/uploads",
        method: "POST",
        headers: {
            Authorization: "Bearer " + localStorage.getItem("token"),
        },
        withCredentials: false,
        onload: (response) => {
            // console.log(JSON.parse(response).url);
            emit("update:modelValue", JSON.parse(response).url);
        },
    },
};

const handleDeleteImage = async (url) => {
    if(!confirm("Sure to delete ?")) return;

    emit("update:modelValue", "");
    const { ok } = await api.delete(`/api/uploads?url=${url}`);

    if (!ok) {
        emit("update:modelValue", url);
    }
};

</script>