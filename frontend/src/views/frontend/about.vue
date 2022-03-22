<template>
<div>
    <section id="v_130">
  <div class="section-padding">
    <div class="timeline-area">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-8 text-center">
            <div class="section-title">
              <h2><span>Section</span> Title</h2>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat iure doloremque, nulla laboriosam consectetur quibusdam perferendis, adipisci facilis est accusantium, beatae sint aspernatur. Voluptatum sit molestias doloribus veritatis consequuntur fuga?</p>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="timeline">
              <!-- https://css-tricks.com/the-shapes-of-css/ -->
              <div class="single-timeline-item">
                <img src="https://virza805.github.io/RRF-150-Section/img/profil_pick.jpg" alt="" class="timeline-frame">
                <div class="timeline-text">
                  <h3>Lorem ipsum dolor sit.</h3>
                  <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Atque natus at nobis nisi nihil?</p>
                </div>
              </div><!--end 1 item-->
              <div class="single-timeline-item">
                <img src="https://virza805.github.io/RRF-150-Section/img/profil_pick.jpg" alt="" class="timeline-frame">
                <div class="timeline-text">
                  <h3>Lorem ipsum dolor sit.</h3>
                  <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Atque natus at nobis nisi nihil?</p>
                </div>
              </div><!--end 2 item-->
              <div class="single-timeline-item">
                <img src="https://virza805.github.io/RRF-150-Section/img/profil_pick.jpg" alt="" class="timeline-frame">
                <div class="timeline-text">
                  <h3>Lorem ipsum dolor sit.</h3>
                  <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Atque natus at nobis nisi nihil?</p>
                </div>
              </div><!--end 3 item-->
              <div class="single-timeline-item">
                <img src="https://virza805.github.io/RRF-150-Section/img/profil_pick.jpg" alt="" class="timeline-frame">
                <div class="timeline-text">
                  <h3>Lorem ipsum dolor sit.</h3>
                  <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Atque natus at nobis nisi nihil?</p>
                </div>
              </div><!--end 4 item-->
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
  <!-- About Area Start -->
<div class="about-area section bg-white pt-120 pb-90">
    <div class="container">
        <div class="row">
            <!-- About Image -->
            <div class="about-image col-md-5 col-xs-12 float-right mb-30"><img src="https://virza805.github.io/RRF-150-Section/img/screenshot.jpg" alt=""></div>
            <!-- About Content -->
            <div class="about-content col-md-7 col-xs-12 mb-30">
                <h3>about study</h3>
                <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text amr songr balga ami toami valo lasi ciri din akr dali</p>
                <a class="btn" href="about.html">Learn Now</a>
            </div>
        </div>
    </div>
</div>
<!-- End of About Area -->
<section id="v_121" class="section-padding">
  <div class=" v_121-bg">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-3">
          <div class="single-service-box">
            <div class="service-box-hover bg-1"></div>
              <div class="service-box-inner">
                <div class="service-icon">
                  <i class="fa fa-star"></i>
                </div>
                <h2>24/7 Support</h2>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maxime consequuntur commodi ipsum?</p>
              </div>
          </div>
        </div><!--end service 1-->
        <div class="col-md-3">
          <div class="single-service-box">
            <div class="service-box-hover bg-2"></div>
              <div class="service-box-inner">
                <div class="service-icon">
                  <i class="fa fa-star"></i>
                </div>
              
                <h2>24/7 Support</h2>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maxime consequuntur commodi ipsum?</p>
              </div>
          </div>
        </div><!--end service 2-->
        <div class="col-md-3">
          <div class="single-service-box">
            <div class="service-box-hover bg-3"></div>
              <div class="service-box-inner">
                <div class="service-icon">
                  <i class="fa fa-star"></i>
                </div>
              
                <h2>24/7 Support</h2>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maxime consequuntur commodi ipsum?</p>
              </div>
          </div>
        </div><!--end service 3-->
        <div class="col-md-3">
          <div class="single-service-box">
            <div class="service-box-hover bg-4"></div>
              <div class="service-box-inner">
                <div class="service-icon">
                  <i class="fa fa-star"></i>
                </div>
                <h2>24/7 Support</h2>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maxime consequuntur commodi ipsum?</p>
              </div>
          </div>
        </div><!--end service 4-->
      </div>
    </div>
  </div>
</section>

</div>
</template>

<script>
export default {

}
</script>

<style scoped>
/* RRF 150 Section Video_130# 4/2/2020 10:50am On*/
.timeline-area{background-image:url(https://virza805.github.io/RRF-150-Section/img/screenshot.jpg)}
.timeline-area{
    position: relative;
    z-index: 1;
    padding:100px 0;
}
.timeline-area::after{
    position: absolute;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    content:"";
    background-color: #072938;
    opacity: .5;
    z-index: -1;
}
.section-title{
    color:#fff;
    margin-bottom:80px;
}
img.timeline-frame{
    width:150px;
    height: 150px;
border: 2px solid #7e8f97;
display: block;
margin: 0 auto;
border-radius: 50%;
padding:2px;
}
.single-timeline-item::after{
    position: absolute;
    left: 50%;
    top:-90px;
    height: 100%;
    width:2px;
    content: "";
    background-color: #f5f6f6;
    z-index: -1;
    margin-left:-1px;
}
/* https://css-tricks.com/the-shapes-of-css/ */
.timeline-text{
    position: absolute;
    background:#072938;
    color:#fff;
    width:400px;
    left:-430px;
    top:50%;
    height: 160px;
    padding:29px;
    margin-top:-80px;
    border-radius: 40px;
    z-index: 2;
}
.single-timeline-item{
    position: relative;
    width:150px;
    margin:0 auto 80px;
}
.single-timeline-item:nth-child(2n+2) .timeline-text{
    left:auto;
    right: -430px;
}
/* https://css-tricks.com/the-shapes-of-css/ */
.single-timeline-item:nth-child(2n+2) .timeline-text {
    color:#072938;
    background-color: #fff;
}
.single-timeline-item:nth-child(2n+2) .timeline-text::before {
    position: absolute;
    left: -33px;
    top: 30px;
    content: "";
    width: 0;
    height: 0;
    z-index: -1;
    border-top: 50px solid transparent;
    border-right: 100px solid #fff;
    border-bottom: 50px solid transparent;
}
.single-timeline-item:nth-child(2n+1) .timeline-text::before {
    position: absolute;
    right: -33px;
    top: 30px;
    content: "";
    z-index: -1;
    width: 0;
    height: 0;
    border-top: 50px solid transparent;
    border-left: 100px solid #072938;
    border-bottom: 50px solid transparent;
}
/* RRF 150 Section Video_130# 4/2/2020 11:00pm End  */
.section-padding{padding:80px 0;}
/*RRF150 Section Video_121#4/2/2020 7:10am Start*/
.v_121-bg{
    background-color: #efefef;
    padding: 0;
}

.bg-1{background-image: url(https://virza805.github.io/RRF-150-Section/img/Rose.jpg);}
.bg-2{background-image: url(https://virza805.github.io/RRF-150-Section/img/Rose2.jpeg);}
.bg-3{background-image: url(https://virza805.github.io/RRF-150-Section/img/screenshot.jpg);}
.bg-4{background-image: url(https://virza805.github.io/RRF-150-Section/img/Rose1.jpg);}

.service-box-hover{

}
.service-icon{
    font-size: 120px;
    opacity: .1;
    line-height: 120px;
    margin-bottom: 40px;
}
.single-service-box{
    position: relative;
    z-index: 1;
    font-size: 18px;
    line-height: 1.8;
    padding: 80px 30px;
}
.single-service-box h2{
    margin-bottom:50px;
}
.service-box-hover{
    position: absolute;
    left: 0;
    top:0;
    width: 100%;
    height: 100%;
    content: "";
    background-size: cover;
    background-position:center;
    transform:scale(1);
    transition: .3s;
    opacity: 0;
    visibility: hidden;
    z-index: 1;
}
.single-service-box:hover .service-box-hover{
    opacity: 1;
    visibility: visible;
    transform:scale(1.1);
}/* https://www.colorzilla.com/gradient-editor/ */
.service-box-hover::after{
    position: absolute;
    left:0;
    top:0;
    height: 100%;
    width:100%;
    content:"";
    z-index: -1;
    opacity: .8;
    background: #b4ddb4;
    background: -moz-linear-gradient(top,  #b4ddb4 0%, #83c783 17%, #52b152 33%, #008a00 67%, #005700 83%, #002400 100%);
    background: -webkit-linear-gradient(top,  #b4ddb4 0%,#83c783 17%,#52b152 33%,#008a00 67%,#005700 83%,#002400 100%);
    background: linear-gradient(to bottom,  #b4ddb4 0%,#83c783 17%,#52b152 33%,#008a00 67%,#005700 83%,#002400 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#b4ddb4', endColorstr='#002400',GradientType=0 );

}
.service-box-inner{
    position: relative;
    z-index: 3;
}
.single-service-box:hover {
    color:#fff;
}
.single-service-box:hover .service-icon {
    opacity: 1;
}

img {
    vertical-align: middle;
    border-style: none;
    margin: 0 auto;
    display: block;
    width: 100%;
}

/* RRF 150 Section Video_121 # 4/2/2020 8:00am End  */
</style>