import axios from "axios";
import NotificationClass from '../../helpers/Notification';

export const RolesStore = {
    namespaced: true,
    state: {
        roles: [],
        isLoading: false,
        // permissions:[],
        // menuAccess:[]
    },

    mutations: {
        ROLE_FETCH(state, payload) {
            state.roles = payload
        },
        IS_LOADING_STATUS(state, payload) {
            state.isLoading = payload
        },
        DELETE_ROLE(state,dataId){
            state.roles = state.roles.filter(data => data.id !== dataId)
        }

    },

    actions: {
        async fetchRoles({ commit },id) {
            commit('IS_LOADING_STATUS', true);
            try {
                const {data} = await axios.get(`${import.meta.env.VITE_API_ENDPOINT}/roles/roles/${id}`,{
                    headers:{
                        'Authorization': `Bearer ${localStorage.getItem('access_token')}`
                    }
                })
                if(data){
                    commit('IS_LOADING_STATUS',false);
                    commit('ROLE_FETCH',data)
                }
            } catch (e) {
                console.log(e.response);
            }
           
        },

        async deleteRoles({commit},id){
            commit('IS_LOADING_STATUS',true)
            try{
                const {data} = await axios.delete(`${import.meta.env.VITE_API_ENDPOINT}/roles/roles-delete/${id}`,{
                    headers:{
                        'Authorization': `Bearer ${localStorage.getItem('access_token')}`
                    }
                })
                if(data){
                    commit('IS_LOADING_STATUS',false)

                    commit('DELETE_ROLE',id)
                    NotificationClass.successNotification('Role Deleted Successfully')
                }
            }catch(e){
                console.log(e.response);
            }
        },
        /*
        async fetchPermissions({commit},roleId){
            try{
                const token = localStorage.getItem('access_token');
            
                const {data}= await axios.get(`${import.meta.env.VITE_API_ENDPOINT}/roles/roles/permissions/${roleId}`, {
                    headers: {
                        'Authorization': `Bearer ${token}`
                    }
                });

                commit()
            }catch(e){

            }  
                
        }
        */

    }
}