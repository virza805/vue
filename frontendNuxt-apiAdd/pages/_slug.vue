<template lang="">
  <div class="unknown_page">
    <h2>This <b class="text-red-400">{{ $route.params.slug }}</b>  page note found</h2>
    <h3>404</h3>
     <div>
      <img class="mx-auto" src="~/assets/img/virzaOk.gif" alt="" />
    </div>

  </div>
</template>
<script>
export default {

}
</script>

<style scoped>
.unknown_page{
  text-align: center;
  margin: 20vh auto;
}
.unknown_page h2{
  color: green;
  line-height: 1.7em;
  letter-spacing: 2px;
}
.unknown_page h3{
  @apply text-9xl font-sans font-medium text-red-600

}
</style>>
