<template>
<div>

  <form 
  action="#" 
  @submit.prevent="handleSubmit"
  class="flex flex-col items-start w-6/12 gap-4 mx-auto">

  

    <h1 class="text-xl font-semibold text-slate-700">Register</h1>
    
    <Input 
    v-model="form.name" 
    label="Name"
    name="name"
    placeholder="Names"
    :helperText="getErrorMessage('name')"
    :hasError="Boolean(getErrorMessage('name'))" 
    type="text"
     />
    
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

    <Input 
    v-model="form.password_confirmation" 
    label="Password Confirmation"
    name="password_confirmation"
    placeholder="Password Confirmation"
    :helperText="getErrorMessage('password_confirmation')"
    :hasError="Boolean(getErrorMessage('password_confirmation'))"
    type="password"
     />

    <Button :loading="loading">Register</Button>
  </form>
</div>
</template>

<script setup>

import { reactive } from 'vue';
import api from "@/helpers/api"
import axios from "axios";
import Input from '@/components/Form/Input.vue';
import Button from '@/components/Form/Button.vue';
import useForm from '@/hooks/useForm';
import { useRouter } from 'vue-router';

const router = useRouter();


const { loading, getErrorMessage, submitForm } = useForm();

const form = reactive({
    name: "",
    email: "",
    password: "",
    password_confirmation: ""
});


const handleSubmit = async () => {
    submitForm(form, "/api/auth/register")
    .then((res) => {
        // toaster
        router.push({ name: "auth.login" });
    });
    
};

</script>