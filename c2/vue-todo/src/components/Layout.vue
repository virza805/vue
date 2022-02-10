<template lang="">
    <div>
        <header class="flex text-center align-item place-items-center">
            <img class=" w-16" src="../assets/logo.png" alt="">
            <ul class="flex justify-center items-center space-x-1">
                <li class="px-2"><a href="/">Home</a></li>
                <li class="px-2"><a href="">About</a></li>
                <li class="px-2"><a href="">Contact</a></li>
            </ul>
        </header>
        <section class="flex bg-purple-700">
            <aside class=" w-1/5 ">Left Side bar</aside>
            <main class=" bg-gray-300 w-3/5" >
                <h2>Title</h2>
                <HelloWorld name="Tanvir" age="28" />
                <HelloWorld name="Hasan" age="25" />
                Lorem ipsum, dolor sit amet consectetur adipisicing elit. Numquam vero est, rerum suscipit ab magni impedit ullam itaque aspernatur recusandae fuga possimus at voluptas nulla eos sapiente nam exercitationem odio.
            </main>
            <aside class=" w-1/5 ">
                right side bar
            </aside>
        </section>
        <footer class="bg-gray-900 text-center text-yellow-500 py-2">Copy right 2022</footer>
    </div>
</template>
<script>
import HelloWorld from './HelloWorld.vue'
export default {
    name: "Layout",
    components: { HelloWorld },
    
}
</script>
<style lang="">
    
</style>