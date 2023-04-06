<template>
    <div>
        <NavBar />

        <div class="main">
            <section
                class="relative flex min-h-full items-start justify-center border dark:border-zinc-900 dark:bg-zinc-700">

                <LeftSideBar />





                <div class="!pl-[260px] w-full" id="slim-content">

                    <!-- background -->
                    <div class="bg-p relative w-full">
                        <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"
                            preserveAspectRatio="none" class="svg absolute hidden w-full lg:block"
                            style="height: 560px; z-index: -10; overflow: hidden">
                            <defs>
                                <linearGradient id="sw-gradient-0" x1="0" x2="0" y1="1" y2="0">
                                    <stop stop-color="hsl(217, 102%, 99%)" offset="0%"></stop>
                                    <stop stop-color="hsl(217,88%, 93%)" offset="100%"></stop>
                                </linearGradient>
                            </defs>
                            <path fill="url(#sw-gradient-0)"
                                d="M 0.351 264.418 C 0.351 264.418 33.396 268.165 47.112 270.128 C 265.033 301.319 477.487 325.608 614.827 237.124 C 713.575 173.504 692.613 144.116 805.776 87.876 C 942.649 19.853 1317.845 20.149 1440.003 23.965 C 1466.069 24.779 1440.135 24.024 1440.135 24.024 L 1440 0 L 1360 0 C 1280 0 1120 0 960 0 C 800 0 640 0 480 0 C 320 0 160 0 80 0 L 0 0 L 0.351 264.418 Z">
                            </path>
                        </svg>
                    </div>
                    <!-- background end -->
                    <div class="main-wrapper p-5 w-full">
                        <h2 class="text-4xl text-gray-900 font-bold mb-4">Roles</h2>
                        <div class="flex flex-col">
                            <div class="overflow-x-auto sm:-mx-6 lg:-mx-8">
                                <div class="inline-block min-w-full py-2 sm:px-6 lg:px-8">
                                    <div class="overflow-hidden">
                                        <table class="min-w-full text-left text-sm font-light">
                                            <thead
                                                class="border-b bg-white font-medium dark:border-neutral-500 dark:bg-neutral-600">
                                                <tr>
                                                    <th scope="col" class="px-6 py-4">Id</th>
                                                    <th scope="col" class="px-6 py-4">Role Name</th>
                                                    <th scope="col" class="px-6 py-4">Status</th>
                                                    <th scope="col" class="px-6 py-4">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="border-b bg-neutral-100 dark:border-neutral-500 dark:bg-neutral-700"
                                                    v-for="role in roles">
                                                    <td class="whitespace-nowrap px-6 py-4 font-medium">{{ role.id }}</td>
                                                    <td class="whitespace-nowrap px-6 py-4">{{ role.role_name }}</td>
                                                    <td class="whitespace-nowrap px-6 py-4">{{ role.status }}</td>
                                                    <td class="whitespace-nowrap px-6 py-4">
                                                        <router-link to="/roles/edit">Edit</router-link>

                                                        <a class="ml-3" @click="deleteRole(role.id)">Delete</a>
                                                    </td>
                                                </tr>



                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </section>

        </div>
    </div>
</template>



<script>
import NavBar from '../../components/NavBar.vue';
import LeftSideBar from '../../components/LeftSideBar.vue';
import { useStore } from 'vuex'
import { userInfo } from '../../middleware/auth';


export default {
    components: { NavBar, LeftSideBar },

    setup() {
        const store = useStore();
        const deleteRole = (id) => {
            store.dispatch('RolesStore/deleteRoles',id)
        }
        return {
            deleteRole
        }
    },

    created() {
        const store = useStore();
        const token = localStorage.getItem('access_token');
        const id = userInfo().parent == 0 ? localStorage.getItem('id') : userInfo().parent
        store.dispatch('RolesStore/fetchRoles', id);

        console.log();

    },
    computed: {
        roles() {
            const store = useStore();
            return store.state.RolesStore.roles
        }
    },
    methods: {

    }
}


</script>

<style></style>