<template>
	<div>
		<div class="row">
			<div class="col-12">
				<div class="card">
					<div class="card-header">
						<h4>All User List</h4>
					</div>
					<div class="card-body table-responsive">
						<table class="table table-bordered table-striped text-center">
							<thead>
								<tr>
									<th>Id</th>
									<th>Image</th>
									<th>Name</th>
									<th>Email</th>
									<th>UserRoleId</th>
									<th>UserRole</th>
									<th class="text-center" style="width: 20%">
										Action
									</th>
								</tr>
							</thead>
							<tbody>
								<tr v-for="entry in book_entries.data" :key="entry.id">
									<td>{{ entry.id }}</td>
									<td>
										<div v-if="entry.image">
											<img v-if="
													entry.image?.split(
														'/'
													)[0] === 'upload'
												" :src="`${get_server_url}/${entry.image}`" style="height: 70px" alt="image" />
											<img v-else :src="`${get_server_url}/${entry.image}`" style="height: 70px"
												alt="image" />
										</div>
										<img v-else src="/assets/images/dashboard-icons/operator.png" alt="image" />
									</td>
									<td>{{ entry.name }}</td>
									<td>{{ entry.email }}</td>
									<td>{{ entry.role_serial }}</td>
									<td>
                    <b v-if="entry.role_serial == '1'">Super Admin</b>
                    <b v-else-if="entry.role_serial == '2'">Admin</b>
                    <b v-else-if="entry.role_serial == '3'">Management</b>
                    <b v-else-if="entry.role_serial == '0'">Guest</b>
                    <b v-else >Student</b>
                  </td>
									<td>
										<div class="d-flex justify-content-end">
											<a href="#" v-if="entry.book_return"
												class="btn btn-sm btn-success mx-1">Returned</a>
											<a href="#" @click.prevent="return_book(entry)" v-else
												class="btn btn-sm btn-danger mx-1">Return</a>

											<router-link :to="{ name: 'studentEntryDetails', params: { id: entry.id } }"
												class="btn btn-sm btn-primary mx-1">Show Details</router-link>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="card-footer">
						<pagination v-model="page" :options="pagination_option" :records="total" :per-page="per_page"
							@paginate="getData" />
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	import {
		mapGetters
	} from "vuex";
	export default {
		name: "userList",
		data: function () {
			return {
				book_entries: {},
				page: 1,
				per_page: 0,
				total: 0,
				pagination_option: {
					edgeNavigation: true,
				},
			};
		},
		created: function () {
			this.getData();
		},
		methods: {
			getData: function (page = 1) {
				let url = `/user/all-user?page= ${page}`;
				window.axios.get(url).then((res) => {
					console.log(res.data);
					this.book_entries = res.data;
					this.total = res.data.total;
					this.per_page = res.data.per_page;
				});
			},
			return_book: function (entry) {
				let con = confirm('sure');
				con &&
				window.axios.post(`/book-entry/return-book`, {id: entry.id})
				.then((res) => {
					console.log(res.data);
					entry.book_return = 1;
				});
			}
		},
		computed: {
			...mapGetters(["get_server_url"]),
		},
	};
</script>

<style></style>