<template>
	<div class="backend">
		<frontend-menu />
		
		<div class="page-wrapper">
			<div class="auth-bg">
				<div class="authentication-box">
					<router-view />
				</div>
			</div>
			<div class="auth-bg-effect">
				<div class="first-effect"></div>
				<div class="second-effect"></div>
				<div class="third-effect"></div>
				<div class="fourth-effect"></div>
			</div>
		</div>
	</div>
</template>

<script>
import frontendMenu from '../../components/frontendMenu.vue';

export default {
  components: { frontendMenu },
};
</script>

<style>

</style>