<template>
<div>
<pre>
    {{ form }}
</pre>
  <form 
  action="#" 
  @submit.prevent="handleSubmit"
  class="flex flex-col items-start w-6/12 gap-4 mx-auto">
    <h1 class="text-xl font-semibold text-slate-700">Register</h1>
    <label for="name">Name</label>
    <input
    class="w-full rounded-sm bg-slate-50 p-2 border"
    placeholder="Name"
    name="name"
    v-model="form.name"
    type="text" />
    <label for="email">Email</label>
    <input
    class="w-full rounded-sm bg-slate-50 p-2 border"
    placeholder="Enter your email"
    name="email"
    v-model="form.email"
    type="email" />

    <label for="password">Password</label>
    <input
    class="w-full rounded-sm bg-slate-50 p-2 border"
    placeholder="Password"
    name="password"
    v-model="form.password"
    type="password" />

    <label for="password_confirmation">Confirm Password</label>
    <input
    class="w-full rounded-sm bg-slate-50 p-2 border"
    placeholder="Confirm Password"
    name="password_confirmation"
    v-model="form.password_confirmation"
    type="password" />

    <button class="button">Register</button>
  </form>
</div>
</template>

<script setup>

import { reactive} from 'vue';
import api from "@/helpers/api"
import axios from "axios";

const form = reactive({
    name: '',
    email: '',
    password: '',
    password_confirmation: ''
});

const handleSubmit = async () => {

    const { ok, data, originalError } = await api.post("/api/auth/register");

    if(!ok) {
        console.log("Something went wrong", originalError);
    }else {
        console.log(data);
    }



    // try{
    //     const response = await axios.post("https://jobs-api.return0.codes/api/auth/register", 
    //     form
    //     );
    // } catch (error) {
    //     console.log("Catch Block");
    //     console.log(error.response.data);
    // }
};

</script>