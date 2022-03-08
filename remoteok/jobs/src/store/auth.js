import api from '@/helpers/api'
import { defineStore } from 'pinia'

const useAuthStore = defineStore("auth", {
  // arrow function recommended for full type inference
  state: () => {
    return {
      // all these properties will have their type inferred automatically
      user: null,
      loggedIn: false,
      isAdmin: true,
    }
  },
  actions: {
      boot(){ 
        return new Promise(async (resolve) => {
            const {ok, data} = await api.get("/api/auth/me");

            if(ok) {
                this.user = data;
                this.loggedIn = true;
            }
            resolve(data);
        });
     },
    async logout(){
        const {ok} = await api.post("/api/auth/logout");
        if(ok) {
            this.user = null;
            this.loggedIn = false;
            localStorage.removeItem("token");
        }

     },
  },
});

export default useAuthStore;