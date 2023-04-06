import { createStore } from "vuex";
import student from "./students"
import notes from "./notes"
import blogs from "./blog"
import products from "./products";

const store = createStore({
    modules:{
        student,
        notes,
        blogs,
        products
    }
})
export default store;