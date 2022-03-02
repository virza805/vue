<template>
  <form 
  action="#" 
  @submit.prevent="handleSubmit"
  class="flex flex-col items-start gap-4 p-3 mx-auto md:w-6/12">
    <h1 class="text-xl font-semibold text-slate-700">Login</h1>

    <Input 
    v-model="form.email" 
    label="Email"
    name="email"
    placeholder="email"
    :helperText="getErrorMessage('email')"
    :hasError="Boolean(getErrorMessage('email'))"
    type="email"
     />
    
    <Input 
    v-model="form.password" 
    label="Password"
    name="password"
    placeholder="password"
    :helperText="getErrorMessage('password')"
    :hasError="Boolean(getErrorMessage('password'))"
    type="password"
     />

    <Button :loading="loading">Login</Button>
  </form>
</template>
 
<script setup>

import { reactive } from 'vue';
import Input from '@/components/Form/Input.vue';
import Button from '@/components/Form/Button.vue';
import useForm from '@/hooks/useForm';
import { useRouter } from 'vue-router';

const router = useRouter();


const { loading, getErrorMessage, submitForm } = useForm();
  
const form = reactive({
    email: "",
    password: "",
});

const handleSubmit = async () => {
    submitForm(form, "/api/auth/login").then((res) => {
        // toaster
        router.push({ name: "home" });
    });
    
};
</script>