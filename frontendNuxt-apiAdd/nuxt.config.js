export default {
    // Target: https://go.nuxtjs.dev/config-target
    target: 'static',

    // Global page headers: https://go.nuxtjs.dev/config-head
    head: {
        // title: 'bengal-shop-frontend',
        titleTemplate: '%s - Bengal Shop',
        htmlAttrs: {
            lang: 'en'
        },
        meta: [
            { charset: 'utf-8' },
            { name: 'viewport', content: 'width=device-width, initial-scale=1' },
            { hid: 'description', name: 'description', content: '' },
            { name: 'format-detection', content: 'telephone=no' }
        ],

        script: [
            // {
            //   type: 'text/javascript',
            //   src: "/digital_clock.js",
            //   body: true,
            //   async: true,
            //   crossorigin: "anonymous"
            // },
        ],

        link: [
            { rel: 'icon', type: 'image/png', href: '/favicon.png' },
            // { rel: 'script', src: '~/assets/js/digital_clock.js' },
            { rel: 'stylesheet', href: 'https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&display=swap' }
        ]
    },

    // Global CSS: https://go.nuxtjs.dev/config-css
    css: [
        "~/assets/css/app.scss"
        // { '~/assets/css/style.css' }
        // {"~/assets/app.scss"},
    ],

    // Plugins to run before rendering page: https://go.nuxtjs.dev/config-plugins
    plugins: [
        { src: '~/plugins/vue-slick-carousel', ssr: true },
        { src: '~/plugins/v-click-outside', ssr: false },
        { src: '~/plugins/vue-toast-notification', ssr: false },
        { src: '~/plugins/Pagination', ssr: false },
    ],

    // Auto import components: https://go.nuxtjs.dev/config-components
    components: true,

    // Modules for dev and build (recommended): https://go.nuxtjs.dev/config-modules
    buildModules: [
        // https://go.nuxtjs.dev/tailwindcss
        // '@nuxtjs/tailwindcss',
        '@nuxt/postcss8',
    ],

    // Modules: https://go.nuxtjs.dev/config-modules
    modules: [
        // You can also pass plugin options
        ["vue-toastification/nuxt", {
            timeout: 1000,
            draggable: true
        }], '@nuxtjs/axios', '@nuxtjs/auth-next'
    ],

    // Build Configuration: https://go.nuxtjs.dev/config-build
    build: {
        postcss: {
            plugins: {
                tailwindcss: {},
                autoprefixer: {},
            },
        },
    },

    axios: {
        // baseURL: "https://api.vir-za.com/",
        baseURL: "http://127.0.0.1:8000",
    },

    auth: {
        redirect: {
            login: '/auth/login',
            logout: '/',
            callback: '/auth/login',
            home: '/backend'
        },

        strategies: {

            local: {
                token: {
                    property: 'access_token',
                    global: true,
                    // required: true,
                    // type: 'Bearer'
                },
                user: {
                    property: false, // data // user
                    // autoFetch: true
                },
                endpoints: {
                    login: { url: '/api/user/login', method: 'post' },
                    logout: { url: '/api/user/logout', method: 'get' },
                    user: { url: '/api/user/user', method: 'get' }
                }
            },
        }
    }

}
