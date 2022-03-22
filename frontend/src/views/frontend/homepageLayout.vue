<template>
  <div class="clint_sit_my">
    <!-- Header Area Start -->
    <frontend-menu />
    <div style="margin-top: 100px"></div>

    <router-view />

    <!-- 
      1. vue cli install.
      2. vue new project installtion.
      3. vue router.
      4. vuex store.
      5. vue role base authentication.

      6. laravel auth with passport.
      7. laravel api roting.
      8. laravel DB Sedding.
      9. Laravel email.

      10. multiple template connection.
      11. html to vue conversion.

      12. login registration.
      13. book management.
      14. book entry management.

      15. vue select2.
      16. vue image uploading.
      17. vue pagination.
      18. vue multiple insertion.
      18. vue multiple delete.

      18. request progressbar.
      18. axios setup.
      18. Jquery setup.

      18. github hosting.
      19. cpanel hosting.
     -->

    
    
    <!--End of Footer Top Area-->
    <section id="v_137">
   <div class="section-padding">
     <div class="footer-top-area">
       <div class="container">
         <div class="row">
          <div class="col-md-2"></div>
           <div class="col-md-5 text-left">
             <div class="newsletter-text">
               <h2>Lorem ipsum sit amet.</h2>
               <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nisi, saepe.</p>
             </div>
           </div>
           <div class="col-md-5 text-left">
             <div class="newsletter-form">
               <form action="s_131_140.html">
                 <input type="email" placeholder="Your Email">
                 <button type="submit">
                   Subscribe <i class="fa fa-arrow-right"></i>
                  </button>
                </form>
             </div>
           </div>
         </div>
       </div>
     </div><!--end footer top area-->
     <div class="footer-bottom-area">
       <div class="container">

        <div class="styled-bg">
          <div class="styled-bg-inner styled-bg-1"></div>
        </div>

         <div class="row">
           <div class="col-md-2"></div>
           <div class="col-md-5 text-left">
             <div class="copyright-text">
               <h2>Site Name.</h2>
               <p>Lorem ipsum dolor sit amet.</p>
             </div>
           </div>
           <div class="col-md-5 text-right">
             <div class="footer-menu">
               <ul>
                 <li><a href="">Lorem.</a></li>
                 <li><a href="">Tempora.</a></li>
                 <li><a href="">Molestiae?</a></li>
                 <li><a href="">Minima.</a></li>
               </ul>
             </div>
             <div class="social-link">
               <a href=""><i class="fa fa-facebook"></i></a>
               <a href=""><i class="fa fa-twitter"></i></a>
               <a href=""><i class="fa fa-youtube"></i></a>
               <a href=""><i class="fa fa-linkedin"></i></a>
             </div>
           </div>
         </div>
       </div>
     </div><!--end footer bottom area-->
   </div>
 </section>

    <!-- Footer Bottom Area Start -->
    <footer class="footer-bottom-area ">
        <div class="container">
            <div class="row">
                <div class="text-left col-md-6 col-sm-7">
                    <p> Copyright &copy; vir-za.com 2022 .All right reserved. Created by <a href="http://vir-za.com">Tanvir</a></p>
                </div>
                <div class="text-right col-md-6 col-sm-5">
                    <p><a href="#">Privacy Policy</a> , <a href="#">Terms &amp; Conditions</a></p>
                </div>
            </div>
        </div>
    </footer>
    <!-- End of Footer Bottom Area -->
      </div>
</template>

<script>
import frontendMenu from '../../components/frontendMenu.vue'
export default {
  components: { frontendMenu },

}
</script>

<style>
header.home-header ul {
    display: flex;
    align-content: flex-start;
    justify-content: flex-end;
    margin-bottom: 20px;
}

header.home-header ul li {
    margin: 10px 10px;
}

header.home-header ul li a {
    font-size: 18px;
    color: #000;
}
.clint_sit_my {
    width: 100% !important;
    margin: 0 auto;
    position: absolute;
    top: 0;
    left: 0;
}
header.home-header.header-area.section {
    height: auto;
    line-height: unset;
}
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
.header-top {
    margin-top: 60px;
}

header.home-header {
    background: transparent;
}


.home-footer h3 {
    color: #fff !important;
}
.header-logo img{
    width: 90px;
}
.footer-logo img{
    width: 130px;
}

/* RRF150SectionVideo_137#6/2/2020 7:28m on*/
#v_137{
    margin-bottom: 110px;
    /* font-family: 'Playfair Display', serif; */
}
.styled-bg-1{background-image: url(https://virza805.github.io/RRF-150-Section/img/Rose.jpg);}
.styled-bg-inner{
    height: 100%;
    width:100%;
    background-size: cover;
    background-position:center;
    background-color: #ddd;
}

.footer-top-area{
    background-color: #f4f4f4;
    color:#777;
    padding:60px 0;
    margin-top:200px;
}
.footer-top-area h2{
    font-size: 36px;
    color: #333;
}
.newsletter-form input[type=email], .newsletter-form button{
    border:none;
    background: none;
    padding:10px 15px;
    width:65%;
}
.newsletter-form input[type=email], .newsletter-form button{
    border-bottom:2px solid #ddd;
}
.newsletter-form button{
    width:30%;
}
.newsletter-form {
    margin-top: 12px;
    margin-left: 30px;
}

.footer-menu ul{
    margin:0;
    padding:0;
    list-style: none;
}
.footer-menu li{
    display: inline-block;
}
.footer-menu a{
    padding-left: 30px;
    color:#333;
}
.social-link a{
    padding-left: 10px;
    color:#333;
}
.footer-menu{
    margin-top:34px;
    margin-bottom:22px;
}
.copyright-text{
    margin-top:34px;
}
.footer-bottom-area .container{position: relative;}
.styled-bg{
    height: 427px;
    position: absolute;
    width:390px;
    left: -225px;
    bottom:0;
    z-index:2;
}
.styled-bg::after{
    position: absolute;
    left:-40px;
    bottom:-40px;
    height: 100%;
    width:100%;
    content:"";
    z-index: -1;
    background-color: #f4f4f4;
}
/* RRF 150 Section Video_137 # 6/2/2020 8:46am End*/
</style>