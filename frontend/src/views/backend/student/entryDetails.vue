<template>
    <div class="row">
        <div class="col-md-8">
            <div class="card">
                <div class="card-body">
                    
                    <table class="table">
                        <tr>
                            <td>
                                Book Id
                            </td>
                            <td style="width:3px">:</td>
                            <th>
                                {{entry.book_id}}
                            </th>
                            <td>
                                Image
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Book name
                            </td>
                            <td style="width:3px">:</td>
                            <td>
                                {{entry.book_name}}
                            </td>
                            <td rowspan="5"  style="width: 300px">
                                <div class="book-cover">
                                    <div v-if="entry.book_image">
                                        <img v-if="entry.book_image?.split( '/' )[0] === 'upload' " 
                                        :src="`${get_server_url}/${entry.book_image}`" style="width: 100%;" alt="image" />
                                        <img v-else :src="`http://${entry.book_image}`" style="width: 100%;"   alt="image" />
                                    </div>
                                    <img v-else src="/assets/images/mobile-clock-wallpaper.jpg" alt="image" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                published data & section
                            </td>
                            <td style="width:3px">:</td>
                            <th>
                                {{entry.book_published}} & {{entry.book_section}}
                            </th>
                        </tr>
                        <tr>
                            <td>
                                User Name & It
                            </td>
                            <td style="width:3px">:</td>
                            <td>
                                {{entry.user_name}} & {{entry.user_id}}
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Book Receiver Date & Time
                            </td>
                            <td style="width:3px">:</td>
                            <td>
                                {{entry.date}} & Time: {{entry.time}} 
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Book Return Date
                            </td>
                            <td style="width:3px">:</td>
                            <td>
                                {{entry.return_date}}
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            
        </div>
    </div>
</template>

<script>

import {mapGetters} from "vuex";
export default {
    data: function(){
        return {
            entry: {},
        }
    },
    computed: {
			...mapGetters(["get_server_url"]),
	},
    created: function(){
        let id = this.$route.params.id;
        // console.log(id);
        window.axios.get(`/book-entry/getentry/${id}`)
        .then((res) => {
            console.log(res.data);
            this.entry = res.data;
        }); 
    }
}
</script>

<style>

</style>