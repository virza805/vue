import axios from "axios";
const blogs = {

    namespaced: true,
    
    state() {
        return {
            
            // notes: JSON.parse(localStorage.getItem("notes:notes")) || [],
            blogs:[],
            
        };
    },
    getters: {
        allBlog(state) {
            return state.blogs;
        },
        // allCount(state) {
        //     return state.blogs.length;
        // },
        // maxId(state) {
        //     return Math.max(state.blogs.id);
        // },
    },
    mutations: {
        // addBlog(state, blog) {
        //     state.blogs.unshift(blog);
        // },
        deleteBlog(state, id) {
            state.blogs = state.blogs.filter((blog) => blog.id !== id);
        },
        // SET_BLOGS(state, blogs) {
        //     state.blogs = blogs
        // },
        setPosts(state, blogs){
            state.blogs = blogs.data;
        }
    },
    actions:{
        // setBlogs(){
        //     // make the api call with axios/ajax/fetch api ect.
        //     axios.get('/api/blogs')
        //         .then(response => {
        //             const blogs = response.data
        //             store.commit('SET_BLOGS', blogs)
        //         })
        //         .catch(error => {
        //             console.log(error)
        //     })
        // },
        // getProducts({commit}){
        //     axios.get('http://localhost:8000/api/all/news')
        //     .then(response => {
        //         commit('setPosts', response.data);
        //     })
        // },
        async fetchPosts({commit}) {
            const response = await axios.get('http://localhost:8000/api/all/news');
            commit('setPosts', response.data);
            
        }
    }
    

}
export default blogs;