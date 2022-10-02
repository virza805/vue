<template>
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-12">
          <h5 class="text-left">{{ msg }}</h5>
        </div>
      </div>
      <div class="count-box-wrap">
        <div class="count-box">
          <div class="count-left">
            <p>Total revenue</p>
            <h6><b>5468.37 $</b></h6>
          </div>
          <div class="count-right">
            <img src="../assets/1.png" alt="dollar" />
          </div>
        </div>
        <div class="count-box">
          <div class="count-left">
            <p>Total user</p>
            <h6><b>5436</b></h6>
          </div>
          <div class="count-right">
            <img src="img/2.png" alt="dollar" />
          </div>
        </div>
        <div class="count-box">
          <div class="count-left">
            <p>Active user</p>
            <h6><b>1730</b></h6>
          </div>
          <div class="count-right">
            <img src="img/3.png" alt="dollar" />
          </div>
        </div>
        <div class="count-box">
          <div class="count-left">
            <p>In room</p>
            <h6><b>720</b></h6>
          </div>
          <div class="count-right">
            <img src="img/4.png" alt="dollar" />
          </div>
        </div>
      </div>
    </div>
    <!-- /.container-fluid -->
  </section>
</template>

<script>
export default {
  name: "HelloWorld",
  props: {
    msg: String,
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped></style>
