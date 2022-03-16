import { createApp } from "vue";

window.axios = require("axios");
window.axios.defaults.baseURL = "http://127.0.0.1:8001/api/v1";
// window.axios.defaults.baseURL = "https://libraryapi.sobujdiganta.com/api/v1";

import App from "./App.vue";
import router from "./router";
import store from "./store";

const app = createApp(App);
app.use(store);
app.use(router);
// app.component("pagination", Pagination);
// app.component('Select2', Select2)
app.mount("#app");
// createApp(App).use(store).use(router).mount("#app");
