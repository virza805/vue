<template>
    <div class="produvt-box giv-way-row-wrap">
        <!-- <div class="head">
            
            <h5>Product name</h5>
        </div>
        <img src="https://st4.depositphotos.com/16122460/26848/i/600/depositphotos_268484380-stock-photo-bouquet-of-beautiful-bright-gerbera.jpg" alt="" srcset="">
        <img src="https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg" alt="" srcset=""> 
        <div class="footer">
            
        </div>
        <button>Add to card</button> -->




        <div class="product_box gird-1">
            <h5>Id: <span>price: </span> <span>Stock: </span> </h5>
            <div class="product_image">
                <img src="https://st4.depositphotos.com/16122460/26848/i/600/depositphotos_268484380-stock-photo-bouquet-of-beautiful-bright-gerbera.jpg"
                    alt="" srcset="">
            </div>

            <div class="product_header">
                <a href="#">
                    <div class="product_title">
                        <h4 class="heading">Product name</h4>
                        <h4 class="heading product_price"> $564.505
                        </h4>
                    </div>

                    <span class="sub-heading">the_content excerpt</span>
                </a>
            </div>

            <div class="clock-btn">

                <div class="counter-clock-wrapper">

                    <a href="#" class="button">
                        Delete
                    </a>

                </div>
                <div class="product_action">
                    <a href="#" class="button">
                        addToCart
                    </a>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
    export default {

    }
</script>
<style>
.giv-way-row-wrap {
    display: flex;
    flex-wrap: wrap;
    align-content: center;
    justify-content: center;
    align-items: center;
}

.product_box {
    border: 2px solid #ddd;
    border-radius: 12px;
    padding: 10px;
    margin: 10px;
}

.product_title {
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-direction: row;
}

.clock-btn {
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-direction: row;
}
h4.heading {
    font-size: 16px;
    margin-bottom: 0;
    text-transform: uppercase;
    /* font-family: 'Chamelton 10 SmBd'; */
}

h4.heading.product_price {
    font-size: 14px;
    color: #d4af37;
}

span.sub-heading {
    font-size: 12px;
    color: #646262;
}

.product_action .button {
    background: #574f43;
    color: #fff;
    padding: 5px 10px;
    border-radius: 4px;
}
.product_image {
    text-align: center;
    margin: 0 auto;
}
.gird-1 {
    width: 90%;
}
.gird-2 {
    width: 46%;
}
.gird-3 {
    width: 31%;
}
.gird-4 {
    width: 23%;
}

.product_box.style-2 {
    border: 0;
    padding: 4px;
    justify-content: flex-end;
}
.style-2 a.button {
    background: #04333b;
    text-transform: capitalize
}
.style-2 a.button:hover {
    background: #af9b78;
}
.give-way-pagination {
    margin-top: 30px;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
    align-content: center;
}
.give-way-pagination .page-numbers {
    padding: 5px 15px;
    border: 1px solid #ddd;
    color: black;
    transition: 0.4s;
    margin: 4px;
}
.give-way-pagination .page-numbers:hover, .page-numbers.current {
    background: black;
    color: #fff;
    transition: 0.4s;
}

/*============= For responsive CSS3 Start Now >--->==============*/
/* Medium Layout 1280px */
@media only screen and (min-width:992px){ 
    
} 
/* Tablet Layout: 768px */
@media only screen and (min-width:768px) and (max-width:991px){ 
    .gird-4,.gird-3 {
        width: 46%;
    }
}
/* Mobile Layout 320px */
@media only screen and (max-width:767px){ 
    .gird-4, .gird-2, .gird-3 {
        width: 90%;
    }
 }
/* Wide Mobile Layout 480px */
@media only screen and (max-width:599px){
    .product_title {
        display: flex;
        flex-direction: column-reverse;
        align-content: center;
        align-items: center;
    }
    
    .product_header a {
        text-align: center;
    }
    
    .clock-btn {
        display: flex;
        flex-direction: column;
    }
    .counter-clock-wrapper {
        width: 100% !important;
    }
    
    .product_action {
        margin: 28px 0;
    }
    
    /* .product_box {
        margin-bottom: 140px;
    } */
} 
/* Wide Mobile Layout 480px */
@media only screen and (min-width:480px) and (max-width:766px){} 
/*================= <---End---> responsive CSS3 ===================*/



</style>