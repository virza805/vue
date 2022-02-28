<template>
  <form action="#" class="flex flex-col items-start gap-4 p-3 mx-auto md:w-6/12">
    <h1 class="text-xl font-semibold text-slate-700">Login</h1>

    <Input
        class="w-full rounded-sm bg-slate-50 p-2 border"
        placeholder="Enter your email"
      name="email"
      type="email" />
    <Input
    class=" w-full rounded-sm bg-slate-50 p-2 border "
    placeholder="Password"
      name="password"
      type="password" />

    <AppButton class="button">Login</AppButton>
  </form>
</template>

<script setup>

</script>