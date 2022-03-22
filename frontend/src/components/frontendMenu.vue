<template>
    <div class="row-login">
        <div class="header-left">
            <div id="logo_left">
                <h2 class="d-inline">
                    <span>T</span>
                    <span>A</span>
                    <span>N</span>
                    <span>V</span>
                    <span>I</span>
                    <span>R</span>
                </h2>
            </div>
        </div>

        <div class="header-right">
            <ul>
                <li>
                    <router-link :to="{name:`homePage`}">Home</router-link>
                </li>
                <li>
                    <router-link :to="{name:`about`}">About</router-link>
                </li>
                <li>
                    <router-link :to="{name:`portfolio`}">Portfolio</router-link>
                </li>
                <li>
                    <router-link :to="{name:'login'}">Log In</router-link>
                </li>
                <li>
                    <router-link :to="{name:'signup'}">Register</router-link>
                </li>
            </ul>
        </div>
    </div>

</template>

<script>
    export default {

    }
</script>

<style>
/*CSS Section JAMPING # 15/2/2020 9:29am Start*/

#logo_left h2{
	transform:translate(-50%,-50%);
	margin:0px;
	padding:0px;
	position:absolute;
	/*
	top:7%;
	left:31%;
	*/
	
	}
#logo_left h2 span{
	color:#262626;
	background:#fff;
	padding:10px 15px;
	font-family:arial;
	display:table-cell;
	box-shadow:inset 0 0 5px rgba(0,0,0,.3),0 5px 0 #ccc;
animation: animate 2s infinite;
}

	@keyframes animate{
		0%{
			transform:translateY(0px);
			box-shadow:inset 0 0 5px rgba(0,0,0,.3),0 5px 0 #ccc,0 15px 5px rgba(0,0,0,0);
		}
		50%{
			transform:translateY(-20px);
			box-shadow:inset 0 0 5px rgba(0,0,0,.3),0 5px 0 #ccc,0 15px 5px rgba(0,0,0,.6);
		}
		100%{
			transform:translateY(0px);
			box-shadow:inset 0 0 5px rgba(0,0,0,.3),0 5px 0 #ccc,0 15px 5px rgba(0,0,0,0);
		}

	}
#logo_left h2 span:nth-child(1){
	animation-delay:.6s;
}
#logo_left h2 span:nth-child(2){
	animation-delay:1.2s;
}
#logo_left h2 span:nth-child(3){
	animation-delay:1.8s;
}
#logo_left h2 span:nth-child(4){
	animation-delay:2.4s;
}
#logo_left h2 span:nth-child(5){
	animation-delay:3s;
}
#logo_left h2 span:nth-child(6){
	animation-delay:3.6s;
}
/*CSS Section JAMPING # 15/2/2020 12:37am End*/
.row-login {
    width: 80%;
    display: flex;
    /* flex-wrap: wrap; */
    align-content: center;
    justify-content: space-between;
    align-items: center;
    margin: 44px auto;
}

.header-right ul {
    display: flex;
    /* align-content: center; */
    /* justify-content: space-between; */
    align-items: center;
    flex-wrap: wrap;
}

.header-right ul li  a {
    padding: 7px 16px;
    color: #1e1d1d;
    font-size: 18px;
}
</style>