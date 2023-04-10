<?php

// add_action( 'wp_enqueue_scripts', 'enqueue_child_theme_styles');
// function enqueue_child_theme_styles() {
//   wp_enqueue_style( 'Parents_theme_style', get_template_directory_uri().'/style.css' );
// }

// add_filter( 'site_transient_update_plugins', 'remove_update_notifications' );
// function remove_update_notifications( $value ) {

//     if ( isset( $value ) && is_object( $value ) ) {
//         unset( $value->response[ 'elementor-pro/elementor-pro.php' ] );
//     }

//     return $value;
// }

# yarn install => For running
# yarn dev => For running
# https://github.com/raselupm/bengal-shop-frontend =>
# https://www.figma.com/file/dGnV13M0DEXrcPYbpzgsjL/Bengal-Shop => Desight
# => https://heroicons.com/
# yarn add v-click-outside =>
# Accordion => https://codesandbox.io/s/yvq8z580qv
# =>
#  yarn add vue-toastification => for Notification
# =>





# 10:52s / 1:17:56 |=> https://www.youtube.com/watch?v=mVIth8lmL80&list=PL03GdZZs-POWoSFFxqf15M-08tsY2fDiN&index=8
# 15:12s / 00:12 |=> Contact From <=| https://www.youtube.com/

#========== => Satrt Backend <= ==========#
/*
yarn add --dev sass sass-loader@10 |=> for sass install https://nuxtjs.org/pt/docs/configuration-glossary/configuration-css#a-propriedade-css
yarn install -D tailwindcss postcss@latest autoprefixer@latest @nuxt/postcss8 npx tailwindcss init |=> https://tailwindcss.com/docs/guides/nuxtjs

yarn add @nuxtjs/axios |=> https://axios.nuxtjs.org/setup
yarn add --exact @nuxtjs/auth-next |=> https://auth.nuxtjs.org/guide/setup

go to nuxt.config.js |=> https://auth.nuxtjs.org/schemes/local

#========== => ## Send mail from Laravel to user with quee Backend <= ==========#

php artisan make:model Contact -mc
php artisan migrate || php artisan migrate:fresh --seed

|-> .env file config then
php artisan make:mail ContactMail |-> set mail connect
|-> views/emails/contact-mail.blade.php for mail body create must be use html table
|-> ContactController.php to control mail

## Send mail from Laravel to user via Queue

php artisan queue:table
php artisan migrate
go to .env |-> QUEUE_CONNECTION=database


# php artisan passport:keys => if download github file then run this
# php artisan passport:client --personal => if some error show like this {
    “RuntimeException: Personal access client not found. Please create one. in file D:\Wynch\vendor\laravel\passport\src\ClientRepository.php on line 122”
}

php artisan make:job ProcessContactMail
php artisan queue:listen => must be run  if not run this|| php artisan queue:work


#   |=> https://feathericons.com/

# php artisan make:model TaskList -a => for new table in database

# php artisan migrate =>

yarn add vue-pagination-2 => https://github.com/matfish2/vue-pagination-2

npm install --save vue-pagination-2

yarn add vue-feather-icons |=> https://www.npmjs.com/package/vue-feather-icons
https://vue-feather-icons.egoist.sh/


#========== => ## Footer Backend <= ==========#

php artisan make:model Footer -mc
php artisan make:model FooterTop -mc
php artisan make:model Categories -mc
php artisan make:model SubCategories -mc
php artisan make:model Slider -mc
php artisan make:model Product -mc
php artisan migrate || php artisan migrate:fresh --seed

Hero Slider .....https://github.com/gs-shop/vue-slick-carousel/issues/125 | <VueSlickCarousel v-bind="slideSettings" v-if="myData.length > 0">

php artisan make:model AdminUser -c
php artisan make:seeder Footer
php artisan make:seeder FooterTop
php artisan db:seed =>
php artisan make:seeder Slider
php artisan make:seeder Categories
php artisan db:seed =>




api.vir-za.com

backendLaravel

You have successfully created a MySQL | info.

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=pkleauia_backendLaravel
DB_USERNAME=pkleauia_backendLaravel
DB_PASSWORD=.7n26{fztE~q


MAIL_MAILER=smtp
MAIL_HOST=mail.vir-za.com
MAIL_PORT=587
MAIL_USERNAME=tanvir@vir-za.com
MAIL_PASSWORD=yM$a;~ToT9(g
MAIL_ENCRYPTION=null
MAIL_FROM_ADDRESS="support@vir-za.com"
MAIL_FROM_NAME="${APP_NAME}"



.htaccess

<IfModule mod_rewrite.c>
RewriteEngine On
RewriteCond %{REQUEST_URI} !^public
RewriteRule ^(.*)$ public/$1 [L]
</IfModule>

# php -- BEGIN cPanel-generated handler, do not edit
# Set the “ea-php80” package as the default “PHP” programming language.
<IfModule mime_module>
  AddHandler application/x-httpd-ea-php80___lsphp .php .php8 .phtml
</IfModule>
# php -- END cPanel-generated handler, do not edit

_______________________________The end Backend Laravel_________________________________________________
https://raw.githubusercontent.com/mantrabrain/yatra/master/sample-data/sample-data.json

.htaccess

RewriteEngine On
RewriteCond %{DOCUMENT_ROOT}%{REQUEST_URI} -f [OR]
RewriteCond %{DOCUMENT_ROOT}%{REQUEST_URI} -d
RewriteRule ^ - [L]
RewriteRule ^ /index.html [L]

# php -- BEGIN cPanel-generated handler, do not edit
# Set the “ea-php80” package as the default “PHP” programming language.
<IfModule mime_module>
  AddHandler application/x-httpd-ea-php80___lsphp .php .php8 .phtml
</IfModule>
# php -- END cPanel-generated handler, do not edit

yarn build |=> https://nuxtjs.org/docs/get-started/commands/
yarn generate |=>

https://serversideup.net/uploading-files-vuejs-axios/

 |=> https://www.begueradj.com/file-upload-from-a-nuxt.js-client-to-an-adonisjs-restful-api-server-using-axios/

 |=> https://blog.quickadminpanel.com/laravel-api-how-to-upload-file-from-vue-js/

 |=> https://www.codegrepper.com/code-examples/javascript/axios+file+upload

 https://stackoverflow.com/questions/33507566/mixed-content-blocked-when-running-an-http-ajax-operation-in-an-https-page |=> <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">

 npx browserslist@latest --update-db

 https://laravel.com/docs/8.x/eloquent-resources


 blog_recipes

 npm install -g @vue/cli || search on google } vue cli |-> https://cli.vuejs.org/guide/installation.html

vue create project_dashboard |-> go to create project
cd project_dashboard
npm install vuex@next --save =>
npm install vue-router@4 =>
npm install =>
npm run serve =>

yarn dev
*/
