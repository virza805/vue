<!-- This example requires Tailwind CSS v2.0+ -->
<template>
  <div>
    <div class="min-h-full flex items-center justify-center py-12 lg:px-4 sm:px-6 lg:px-8 mb-20 ">
      <div class="flex flex-wrap flex-col-reverse lg:flex-row space-y-8 mx-auto">

        <div class="w-full lg:w-1/2 p-3 mb-10 border-2 border-dashed rounded-sm border-primary -ml-2 mr-2">
          <div>
            <img class="w-56 mx-auto" src="~/assets/img/Thanks.jpg" alt="Thanks" />
            <p class="text-center"><b>Login : </b>{{ $auth.loggedIn }}</p>
          </div>
          <div>
            <p><b>Name : </b>{{ $auth.user.name }}</p>
            <p><b>User Role : </b> <UserRole /></p>
            <p><b>User Id : </b>{{ $auth.user.id }}</p>

            <p><b>Email : </b>{{ $auth.user.email }}</p>
            <p><b>Email Verified : </b><b class="text-red-600 " v-if=" $auth.user.email_verified_at == null"> False</b>
              <b class="text-green-600 " v-if=" $auth.user.email_verified_at !== null"> Verified</b>
            </p>
            <p><b>Created at : </b>{{ $auth.user.created_at }}</p>
          </div>

        </div>

        <div class="w-full lg:w-1/2 p-3 mb-10 border-2 border-dashed rounded-sm border-primary -mr-2 ml-2">
          <img class="w-full mx-auto" src="~/assets/img/cover.jpg" alt="Thanks" />


        </div>


      </div>
    </div>

  </div>
</template>

<script>
  export default {
    middleware: 'auth',
    layout: 'backend',

  }

</script>

<style scoped>

</style>
