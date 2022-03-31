<template>
  <div class="max-w-2xl mx-auto">
      <h2 class="text-xl font-semibold">Post a new job</h2>
      <pre>
          {{ form }}
      </pre>
      <form action="" class="flex flex-col gap-4 my-8">
          <Input name="title" label="Job Title" v-model="form.title" />
          <Input name="title" label="Office/working location" v-model="form.location" />
          <Input name="title" label="Application Url" v-model="form.link" />
          <Input name="title" label="Your company name" v-model="form.company_name" />
          <FileUploader v-model="form.company_logo" />
          <Input name="title" label="Job Description" v-model="form.description" />
          <!-- <Input name="title" label="Job Company Logo" v-model="form.company_logo" /> -->
<!-- <pre>
    {{ form.type }}
</pre> -->
          <SelectInput 
          :options="options" 
          v-model="form.type"
          label="Select job type"
           />

           <Editor v-model="form.description" />
      </form>
      
  </div>
</template>

<script setup>
import { ref } from "@vue/reactivity";
import Input from "@/components/Form/Input.vue";
import { reactive } from "vue";
import SelectInput from "@/components/Form/SelectInput.vue";
import Editor from "@/components/Form/Editor.vue";
import FileUploader from "@/components/Form/FileUploader.vue";

const options = [
    {
        label: "Full time",
        value: "full_time",
    },
    {
        label: "Part time",
        value: "part_time",
    },
    {
        label: "Contract",
        value: "contract",
    },
    {
        label: "Temporary",
        value: "temporary",
    },
    {
        label: "Internship",
        value: "internship",
    },
    {
        label: "Volunteer",
        value: "volunteer",
    },
    {
        label: "Remote",
        value: "remote",
    },
];


const form = reactive({
    title: "",
    location: "",
    link: "",
    company_name: "",
    description: "<h4>Tanvir 🎉</h4>",
    company_logo: "",
    type: "contract",
});
</script>

<style>

</style>