<template>
  <div class="page-sidebar custom-scrollbar">
    <div class="sidebar-user text-center">
      <div>
        <img
          v-if="get_auth_info.image"
          alt=""
          class="img-50 rounded-circle"
          :src="get_profile_image_url"
        /> 
        <img
          v-else
          class="img-50 rounded-circle"
          src="/assets/images/email/2.jpg"
          alt="#"
        />
        
      </div>
      <h6 class="mt-3 f-12">{{ get_auth_info.username }}</h6>
      <!-- <h6 class="mt-3 f-12">Tanvir Md. Al-Amin</h6> -->
    </div>
    <ul class="sidebar-menu">
      <li v-if="get_auth_role_name == 'admin'">
        <div class="sidebar-title">Admin</div>
        <a href="#" class="sidebar-header">
          <i class="fa fa-cubes" aria-hidden="true"></i><span>Links</span>
          <i class="fa fa-angle-right pull-right"></i>
        </a>
        <ul class="sidebar-submenu">
          <li>
            <router-link :to="{ name: 'admin' }">
              <i class="fa fa-angle-right"></i>Home
            </router-link>
          </li>
          <li>
            <router-link :to="{ name: 'adminProfile' }">
              <i class="fa fa-angle-right"></i>Profile Edit
            </router-link>
          </li>
          <li>
            <router-link :to="{ name: 'userList' }">
              <i class="fa fa-angle-right"></i>Users
            </router-link>
          </li>
          <li>
            <router-link :to="{ name: 'bookList' }">
              <i class="fa fa-angle-right"></i>Book List
            </router-link>
          </li>
          <li>
            <router-link :to="{ name: 'bookEntry' }">
              <i class="fa fa-angle-right"></i>Book Entry
            </router-link>
          </li>
          <li>
            <router-link :to="{ name: 'entryList' }">
              <i class="fa fa-angle-right"></i>Entry List
            </router-link>
          </li>
          <li>
            <router-link :to="{ name: 'newEntry' }">
              <i class="fa fa-angle-right"></i>New Entry
            </router-link>
          </li>
        </ul>
      </li>
      
      <!-- end admin Links -->

      <li v-if="get_auth_role_name == 'admin'">
        <a href="#" class="sidebar-header">
          <i class="fa fa-sitemap"></i><span>Management</span>
          <i class="fa fa-angle-right pull-right"></i>
        </a>
        <ul class="sidebar-submenu">
          <li>
            <router-link :to="{ name: 'adminProfile' }">
              <i class="fa fa-angle-right"></i>Home
            </router-link>
          </li>
          <li>
            <router-link :to="{ name: 'userList' }">
              <i class="fa fa-angle-right"></i>Users
            </router-link>
          </li>
        </ul>
      </li>
      <!-- end admin management -->

      <li v-if="get_auth_role_name == 'admin'">
        <a href="#" class="sidebar-header">
          <i class="fa fa-graduation-cap"></i><span>Students</span>
          <i class="fa fa-angle-right pull-right"></i>
        </a>
        <ul class="sidebar-submenu">
          <li>
            <router-link :to="{ name: 'adminProfile' }">
              <i class="fa fa-angle-right"></i>Home
            </router-link>
          </li>
          <li>
            <router-link :to="{ name: 'userList' }">
              <i class="fa fa-angle-right"></i>Users
            </router-link>
          </li>
        </ul>
      </li>
      <!-- end admin Student -->

      <li v-if="get_auth_role_name == 'admin'">
        <a href="#" class="sidebar-header">
          <i class="fa fa-pagelines" aria-hidden="true"></i><span>Corse Plan</span>
          <i class="fa fa-angle-right pull-right"></i>
        </a>
        <ul class="sidebar-submenu">
          <li>
            <router-link :to="{ name: 'userList' }">
              <i class="fa fa-angle-right"></i>All Users
            </router-link>
          </li>

          <li>
            <router-link :to="{ name: 'adminAddNewUser' }">
              <i class="fa fa-angle-right"></i>Add New User
            </router-link> 
          </li>
        </ul>
      </li>
      <!-- end admin PLAN https://fontawesome.com/v4/icons/ -->
    
      <li v-if="get_auth_role_name == 'student'">
        <div class="sidebar-title">Student</div>
        <router-link  :to="{ name: 'student' }" class="sidebar-header">
          <i class="fa fa-diamond" aria-hidden="true"></i><span>Home</span>
          <i class="fa fa-angle-right pull-right"></i>
        </router-link>
        <router-link  :to="{ name: 'studentBookList' }" class="sidebar-header">
          <i class="fa fa-book"></i><span>Book List</span>
          <i class="fa fa-angle-right pull-right"></i>
        </router-link>
        <router-link  :to="{ name: 'studentProfile' }" class="sidebar-header">
          <i class="fa fa-edit"></i><span>Profile Edit</span>
          <i class="fa fa-angle-right pull-right"></i>
        </router-link>
        
      </li>
      
      <li v-if="get_auth_role_name == 'management'">
        <div class="sidebar-title">Management</div>
        <router-link  :to="{ name: 'management' }" class="sidebar-header">
          <i class="fa fa-home" aria-hidden="true"></i><span>Home</span>
          <i class="fa fa-angle-right pull-right"></i>
        </router-link>
        <router-link  :to="{ name: 'managementProfile' }" class="sidebar-header">
          <i class="fa fa-edit"></i><span>Profile Edit</span>
          <i class="fa fa-angle-right pull-right"></i>
        </router-link>
        <router-link  :to="{ name: 'managementBookList' }" class="sidebar-header">
          <i class="fa fa-book"></i><span>Book List</span>
          <i class="fa fa-angle-right pull-right"></i>
        </router-link>
        <router-link  :to="{ name: 'managementEntryList' }" class="sidebar-header">
          <i class="fa fa-list-ol"></i><span>Entry List</span>
          <i class="fa fa-angle-right pull-right"></i>
        </router-link>
        <router-link  :to="{ name: 'managementNewEntry' }" class="sidebar-header">
          <i class="icon-desktop"></i><span>New Entry</span>
          <i class="fa fa-angle-right pull-right"></i>
        </router-link>
        
      </li>
      
      <li>
        <a href="#" @click="get_logout()" class="sidebar-header">
          <i class="fa fa-sign-out"></i> <span>Logout</span>
        </a>
      </li>
    </ul>
  </div>
</template>

<script>
import $ from "jquery";
import { mapGetters, mapMutations } from "vuex";

export default {
  name: "sidebar-nav",
  created: function () {
    this.init_jq();
  },
  methods: {
    ...mapMutations(["set_logout"]),
    get_logout: function () {
      window.axios.get("/user/logout").then((res) => {
        console.log(res.data);
      });
      this.$router.replace({ name: "login" });
      this.set_logout();
    },
    init_jq: function () {
      "use strict";
      setTimeout(() => {
        $.sidebarMenu = function (menu) {
          var animationSpeed = 300,
            subMenuSelector = ".sidebar-submenu";
          $(menu).on("click", "li a", function () {
            var $this = $(this);
            var checkElement = $this.next();
            if (
              checkElement.is(subMenuSelector) &&
              checkElement.is(":visible")
            ) {
              checkElement.slideUp(animationSpeed, function () {
                checkElement.removeClass("menu-open");
              });
              checkElement.parent("li").removeClass("active");
            } else if (
              checkElement.is(subMenuSelector) &&
              !checkElement.is(":visible")
            ) {
              var parent = $this.parents("ul").first();
              var ul = parent.find("ul:visible").slideUp(animationSpeed);
              ul.removeClass("menu-open");
              var parent_li = $this.parent("li");
              checkElement.slideDown(animationSpeed, function () {
                checkElement.addClass("menu-open");
                parent.find("li.active").removeClass("active");
                parent_li.addClass("active");
              });
            }
          });
        };
        $(".mobile-sidebar .switch-state").click(function () {
          $(".page-body-wrapper").toggleClass("sidebar-close");
        });
        $.sidebarMenu($(".sidebar-menu"));
      }, 300);
    },
  },
  computed: {
    ...mapGetters([
      "get_auth_role_name",
      "get_check_auth_status",
      "get_auth_info",
      "get_profile_image_url",
    ]),
  },
};
</script>

<style></style>
