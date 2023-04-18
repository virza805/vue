<template>
  <div>

<!-- Add Popup section Start Now-->
<div class="popup-wrap">

<div class="Click-here" @click="toggleClass" >Click button</div>
<div class="popup-model-main" id="pMm" ref="myElement" >
  <div class="popup-model-inner">
    <div class="close-btn" @click="toggleClass" >×</div>
    <div class="popup-model-wrap">
      <div class="pop-up-content-wrap">


        
        <div data-v-0d2d6594="" class="flex -mx-8"><div data-v-0d2d6594="" class="w-1/2 px-8"><img data-v-0d2d6594="" src="https://picsum.photos/200/300"></div> <div data-v-0d2d6594="" class="w-1/2 px-8"><p data-v-0d2d6594="" class="text-sm mb-3"><span data-v-0d2d6594="" class="uppercase text-gray-400 pr-6">Status</span> <span data-v-0d2d6594="" class="bs-dark-green-color">In Stock</span></p> <h3 data-v-0d2d6594="" class="text-2xl">A single product 2</h3> <p data-v-0d2d6594="" class="text-xs text-gray-400 mb-4 mt-2"><b data-v-0d2d6594="">7</b> items available.</p> <p data-v-0d2d6594="" class="text-2xl font-bold">$8 <del data-v-0d2d6594="" class="font-normal text-gray-400">$10</del></p> <div data-v-0d2d6594="" class="flex my-6"><input data-v-0d2d6594="" type="number" value="1" class="w-10 border border-gray-200 mr-5 text-center"> <button data-v-0d2d6594="" class="bs-button">Add to cart</button></div> <div data-v-0d2d6594="" class="flex border-b border-gray-200 justify-between text-sm pb-3 mb-8"><p data-v-0d2d6594="" class="flex items-center"><img data-v-0d2d6594="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAFMSURBVHgB7ZXtcYMwDIaFWYBuwAh0A/IfDneDbtCO0E5QNshlAj4WaDpBGYERMgAHlXKi52AT6/w7710wkaz3wYpNAB7yKNoGtNbJPM9vURTl+DXn8LAsS933/cmXvwvA4hQnfuNtCm6NPO7mEXxo23adB8rMGubXifh56roOh+iFzVNfnjxoldYKyrJ8VUodufgZn+ICt6tLsLi5FqHhTv6XIZ/Yro8bQFVVlMwQopum6SBACMm5C2dc2WHboowuoeasgcd8DSiwnyKBQG3btgWc6TJNUwaBKopC8+1gAfCH+6ExjuNjyCqoBmu/2Ku2ACgKjuDYahJzc4tjq04WgPpHe5shmRRimFNrR/b4l+tVYZ7mgU/mRWpunmInQAqRmO8CfBCp+V3AHoTiUnMvwAXhsMhcBHBAQGouBqwQ/KN5p3t8IdYS84dE+gOlnulogsEVFQAAAABJRU5ErkJggg==" alt="" class="w-4 mr-3"> Add to favourites
            </p> <p data-v-0d2d6594="" class="flex items-center"><svg data-v-0d2d6594="" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-4 w-4 mr-3"><path data-v-0d2d6594="" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8.684 13.342C8.886 12.938 9 12.482 9 12c0-.482-.114-.938-.316-1.342m0 2.684a3 3 0 110-2.684m0 2.684l6.632 3.316m-6.632-6l6.632-3.316m0 0a3 3 0 105.367-2.684 3 3 0 00-5.367 2.684zm0 9.316a3 3 0 105.368 2.684 3 3 0 00-5.368-2.684z"></path></svg>
              Share
            </p></div> <div data-v-0d2d6594="" class="text-xs leading-loose"><p data-v-0d2d6594=""><span data-v-0d2d6594="" class="uppercase text-gray-400 w-20 inline-block">Sku:</span>
              BHJGFJH876
            </p> <p data-v-0d2d6594=""><span data-v-0d2d6594="" class="uppercase text-gray-400 w-20 inline-block">category:</span> <span data-v-0d2d6594=""><a data-v-0d2d6594="" href="/category/Fruits" class="bs-dark-green-color">Fruits</a><span data-v-0d2d6594="" class="comma">, </span></span><span data-v-0d2d6594=""><a data-v-0d2d6594="" href="/category/Vegetables" class="bs-dark-green-color">Vegetables</a><span data-v-0d2d6594="" class="comma">, </span></span><span data-v-0d2d6594=""><a data-v-0d2d6594="" href="/category/Others" class="bs-dark-green-color">Others</a><span data-v-0d2d6594="" class="comma">, </span></span></p> <p data-v-0d2d6594=""><span data-v-0d2d6594="" class="uppercase text-gray-400 w-20 inline-block">tags:</span> <span data-v-0d2d6594=""><a data-v-0d2d6594="" href="/category/TAg1" class="bs-dark-green-color">TAg1</a><span data-v-0d2d6594="" class="comma">, </span></span><span data-v-0d2d6594=""><a data-v-0d2d6594="" href="/category/Tag2" class="bs-dark-green-color">Tag2</a><span data-v-0d2d6594="" class="comma">, </span></span><span data-v-0d2d6594=""><a data-v-0d2d6594="" href="/category/Tag3" class="bs-dark-green-color">Tag3</a><span data-v-0d2d6594="" class="comma">, </span></span></p></div></div></div>

        <h2 id="popup_title">Title</h2>
        <h4 id="popup_smtitle">Sub Title</h4>
        <div id="popup_des">Content</div>






      </div>
    </div>
  </div>
  <div class="bg-overlay" @click="toggleClass" ></div>
</div>

</div>
<!-- Popup section The end -->




    <h2 class="mt-14 mb-6 text-4xl text-red-500 font-bold text-center">Contact info.</h2>
    <div class="flex items-center justify-center py-12 lg:px-4 sm:px-6 mb-20 ">
      <div class="w-5/6 lg:w-3/5 flex flex-wrap flex-col-reverse lg:flex-row ">

        <div class="w-full lg:w-1/2 p-3 mb-10 border-2 border-dashed rounded-sm border-green -ml-2 mr-2">
          <div>
            <iframe
              src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d7302.662227186117!2d90.35932259999997!3d23.77122070000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1654852110225!5m2!1sen!2sbd"
              width="100%" height="600" style="border:0;" allowfullscreen="" loading="lazy"
              referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>

        </div>

        <div
          class="w-full lg:w-1/2 p-3 mb-10 border-2 border-dashed rounded-sm border-green -mr-2 ml-2 flex items-center">
          <div class="con_info">

            <a class=" ml-6 my-5 flex items-center" href="mailto:virza.bd@gmail.com" target="_blank">
              <img class="w-12" src="~/assets/img/mail.svg" alt="Phone">
              <p class="text-2xl ml-2">virza.bd@gmail.com</p>
            </a>
            <a class=" ml-6 my-5 flex items-center" href="tel:01795815660" target="_blank">
              <img class="w-12" src="~/assets/img/phone-call.svg" alt="Phone">
              <p class="text-2xl ml-2">01795815660</p>
            </a>
            <a class=" ml-6 my-5 flex items-center" href="vir-za.com" target="_blank">
              <img class="w-12" src="~/assets/img/globe.svg" alt="Phone">
              <p class="text-2xl ml-2">vir-za.com</p>
            </a>
            <a class=" ml-6 my-5 flex items-center"
              href="https://www.google.com.bd/maps/@23.8512289,90.2821869,16z?hl=en&authuser=0" target="_blank">
              <img class="w-12" src="~/assets/img/map.svg" alt="Phone">
              <p class="text-2xl ml-2">Saver, Dhaka - 1340, Bangladesh.</p>
            </a>
          </div>


        </div>


      </div>
    </div>


  </div>
</template>
<script>
  export default {
    methods: {
      toggleClass() {
        const element = this.$refs.myElement;

        if (element.classList.contains('model-open')) {
          element.classList.remove('model-open');
        } else {
          element.classList.add('model-open');
        }
      }
    }

  }

</script>
<style scoped>
/*popup css Start now*/
.popup-wrap {
    width: 1000px;
    margin: 0 auto;
    display:flex;
    align-items:center;
  /*   height:100vh; */
  }
  .Click-here {
    cursor: pointer;
    transition:background-image 3s ease-in-out;
  }

  .popup-model-main {
    text-align: center;
    overflow: hidden;
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    -webkit-overflow-scrolling: touch;
    outline: 0;
    opacity: 0;
    -webkit-transition: opacity 0.15s linear, z-index 0.15;
    -o-transition: opacity 0.15s linear, z-index 0.15;
    transition: opacity 0.15s linear, z-index 0.15;
    z-index: -1;
    overflow-x: hidden;
    overflow-y: auto;
  }

  .model-open {
    z-index: 99999;
    opacity: 1;
    overflow: hidden;
  }
  .popup-model-inner {
    -webkit-transform: translate(0, -25%);
    -ms-transform: translate(0, -25%);
    transform: translate(0, -25%);
    -webkit-transition: -webkit-transform 0.3s ease-out;
    -o-transition: -o-transform 0.3s ease-out;
    transition: -webkit-transform 0.3s ease-out;
    -o-transition: transform 0.3s ease-out;
    transition: transform 0.3s ease-out;
    transition: transform 0.3s ease-out, -webkit-transform 0.3s ease-out;
    display: inline-block;
    vertical-align: middle;
    width: 1000px;
    margin: 30px auto;
    max-width: 97%;
  }
  .popup-model-wrap {
    display: block;
    width: 100%;
    position: relative;
    background-color: #fff;
    border: 1px solid #999;
    border: 1px solid rgba(0, 0, 0, 0.2);
    border-radius: 6px;
    -webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
    box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
    background-clip: padding-box;
    outline: 0;
    text-align: left;
    padding: 20px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    max-height: calc(100vh - 70px);
      overflow-y: auto;
  }
  /*
  .pop-up-content-wrap p, .pop-up-content-wrap ol li {
      color: #000000;
      font-style:normal;
      text-transform:none;
      font-family: 'Lato';
      font-weight: 400;
      letter-spacing: normal;
      vertical-align: baseline;
      word-spacing: 0px;
      font-size: 16px;
      line-height:24px;
      margin-bottom: 0.5em;
  }
  .pop-up-content-wrap h3 {
      font-size: 20px;
      line-height: 1.28205em;
      margin-top: 1.28205em;
      margin-bottom: 1.28205em;
  } */
  .model-open .popup-model-inner {
    -webkit-transform: translate(0, 0);
    -ms-transform: translate(0, 0);
    transform: translate(0, 0);
    position: relative;
    z-index: 999;
  }
  .model-open .bg-overlay {
    background: #000000;
    z-index: 99;
      opacity: 0.85;
  }
  .bg-overlay {
    background: rgba(0, 0, 0, 0);
    height: 100vh;
    width: 100%;
    position: fixed;
    left: 0;
    top: 0;
    right: 0;
    bottom: 0;
    z-index: 0;
    -webkit-transition: background 0.15s linear;
    -o-transition: background 0.15s linear;
    transition: background 0.15s linear;
  }
  .close-btn {
    position: absolute;
    right: 0;
    top: -30px;
    cursor: pointer;
    z-index: 99;
    font-size: 30px;
    color: #fff;
  }
  /*popup css The end*/
</style>
