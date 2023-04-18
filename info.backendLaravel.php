<?php
/*
npm i --force

18:19s / 20:21s |=> https://www.youtube.com/watch?v=o9uIMkknJBw&list=PL03GdZZs-POVHXjxjyKegmsvOiQVXpb7O&index=20


composer create-project laravel/laravel:^8.0 backendLaravel
cd backendLaravel
php artisan serve |=> for run this

=========== >>>> = Backend (php artisan serve) = <<<<============
 class 9 -> https://www.youtube.com/watch?v=2Vrf3RilK6Q&list=PL9piC5qJFU82wfvJPqyr7RLkDUEV9D4t6&index=9

# composer require laravel/ui => for authantication
# php artisan ui vue --auth => for create authnatication folder
# npm install => npm run dev |npm install vue-loader@^15.9.7 --save-dev --legacy-peer-deps| npm run development
#  =>



# backend |=>connect Database from .env file
# composer require laravel/passport => https://laravel.com/docs/8.x/passport
# php artisan migrate =>
# php artisan passport:install =>{
    Encryption keys generated successfully.
    Personal access client created successfully.
    Client ID: 1
    Client secret: yckjuGsCPdFeI4owQZFYyfGvD7jKaQnl9IlPJJ2L
    Password grant client created successfully.
    Client ID: 2
    Client secret: ChNUrIuSupxmaTC3waClrc7A8AFmoo0BzOEhUjZc

    }php artisan passport:keys => if download github file then run this || php artisan passport:client --personal


php artisan passport:install --uuids
php artisan make:controller Api/AuthController =>
php artisan rout:list

php artisan make:request RegisterRequest =>
php artisan make:request LoginRequest =>
php artisan make:request PasswordResetRequest =>








#
#  =>
#  =>
# php artisan make:controller Api/AuthController =>
php artisan make:model UserRole -a => for new table in database
php artisan make:model BookList -a => for new table in database
php artisan make:model BookEntry -a => for new table in database
# php artisan migrate =>
# 20:41s => https://www.youtube.com/watch?v=NLdGUQlzFYE&list=PL9piC5qJFU82wfvJPqyr7RLkDUEV9D4t6&index=13
https://openlibrary.org/search.json?q=web => libary api
php artisan db:seed =>
# php artisan migrate:fresh --seed =>



=========== >>>> == (npm run serve) Frontend <--TO--> Backend (php artisan serve) == <<<<============
27:20 => https://www.youtube.com/watch?v=58w-HUwiG9U&list=PL9piC5qJFU82wfvJPqyr7RLkDUEV9D4t6&index=14
# npm i axios => for http request
# npm i jquery => jquery
# npm i vuex-persistedstate => vuex-persistedstate localStore save kora-> https://www.npmjs.com/package/vuex-persistedstate
# php artisan passport:keys => if download github file then run this
# php artisan passport:client --personal => if some error show like this {
    “RuntimeException: Personal access client not found. Please create one. in file D:\Wynch\vendor\laravel\passport\src\ClientRepository.php on line 122”
}
===========================================================================
start => https://www.youtube.com/watch?v=3YllBlpT19s&list=PL9piC5qJFU82wfvJPqyr7RLkDUEV9D4t6&index=15
https://www.youtube.com/watch?v=qwUwF_0A2u0&list=PL9piC5qJFU82wfvJPqyr7RLkDUEV9D4t6&index=17
============================================================================
Create a Mail server |> edit .env file|| >>> vir-za.com = https://mailtrap.io/inboxes/1649732/messages {
MAIL_MAILER=smtp
MAIL_HOST=smtp.mailtrap.io
MAIL_PORT=2525
MAIL_USERNAME=b4b806696d02e8
MAIL_PASSWORD=c34b40710bb09c
MAIL_ENCRYPTION=tls
}
# php artisan make:mail ForgetPassword => for create Mail
# npm install laravel-vue-pagination => https://github.com/gilbitron/laravel-vue-pagination



# php artisan make:model TaskList -a => for new table in database

# php artisan migrate =>

// yM$a;~ToT9(g

/*
Username:	tanvir@vir-za.com
Password:	Use the email account’s password.
Incoming Server:	mail.vir-za.com
IMAP Port: 143 POP3 Port: 110
Outgoing Server:	mail.vir-za.com
SMTP Port: 587
_____________________________________________
MAIL_MAILER=smtp
MAIL_HOST=mail.vir-za.com
MAIL_PORT=587
MAIL_USERNAME=tanvir@vir-za.com
MAIL_PASSWORD=yM$a;~ToT9(g
MAIL_ENCRYPTION=null
----------------------
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=kleauia_apilaravelvue
DB_USERNAME=kleauia_apilaravelvue
DB_PASSWORD=9qG?O,gL^6U2
______________________________________________________________

Thanks for contacting us! We will get in touch with you shortly.

email body {
Hello Tanvir,

This is an automated reply to let you know that your ticket has been received.

Note, our standard office hours are 9am to 4pm Bangladesh Standard Time (UTC/GMT +6 hours
Time Zone in Dhaka, Bangladesh), Monday through Friday.

We will be with you as soon as we are able.

Thanks!
}





https://laravel.com/docs/8.x/eloquent-resources

#  php artisan serve --port=8001 |=> for change










 i wont cart state save localstorage when user reload or back cart state fell from localStorage if localStorage data exist else blank in nuxt.js


 To save the cart state to localStorage and retrieve it when the user reloads the page or returns to the cart page, you can use the localStorage API in combination with a Vuex store plugin.

First, create a Vuex store plugin that listens to mutations on the cart state and saves the updated cart state to localStorage:

javascript
Copy code
const cartPlugin = store => {
  // Watch for cart state changes
  store.watch(
    (state) => state.cart,
    (newCart) => {
      // Save cart state to localStorage
      localStorage.setItem('cart', JSON.stringify(newCart));
    },
    // Deep watch to ensure nested objects are watched
    { deep: true }
  );

  // On store initialization, check if cart state exists in localStorage and set it
  if (localStorage.cart) {
    store.commit('setCart', JSON.parse(localStorage.cart));
  }
};
In this plugin, we use the store.watch() method to listen for changes to the cart state. Whenever the cart state changes, we save the updated cart state to localStorage using the localStorage.setItem() method. We also use a deep watch option to ensure that nested objects are watched for changes.

In addition, we check if the cart state exists in localStorage when the store is initialized, and if it does, we set the cart state using the store.commit() method.

Next, add this plugin to your Vuex store:

php
Copy code
import Vue from 'vue';
import Vuex from 'vuex';

Vue.use(Vuex);

const store = new Vuex.Store({
  state: {
    products: [],
    cart: [],
    checkoutStatus: '',
    modalData: {
      product: [],
      modal: false
    },
  },
  mutations: {
    setCart(state, cart) {
      state.cart = cart;
    },
    // Other mutations...
  },
  plugins: [cartPlugin],
});

export default store;
In this example, we have added the cartPlugin to the plugins array in our Vuex store configuration.

With this setup, whenever the user adds or removes items from their cart, the cart state will be saved to localStorage. When the user returns to the cart page or reloads the page, the cart state will be retrieved from localStorage if it exists. If there is no cart state in localStorage, the cart state will be initialized as an empty array.

 */