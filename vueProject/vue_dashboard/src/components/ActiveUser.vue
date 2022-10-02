<template>
  <div class="man_box">
    <h4>{{ msg }}</h4>
    <div class="single_man">
      <img src="img/m1.jpg" alt="p.pick" />
      <div>
        <b>Benny Chagur</b>
        <p>16 hrs</p>
      </div>
    </div>
    <div class="single_man">
      <img src="img/m2.jpg" alt="p.pick" />
      <div>
        <b>Benny Chagur</b>
        <p>16 hrs</p>
      </div>
    </div>
    <div class="single_man">
      <img src="img/m3.jpg" alt="p.pick" />
      <div>
        <b>Benny Chagur</b>
        <p>16 hrs</p>
      </div>
    </div>
    <div class="single_man">
      <img src="img/m4.jpg" alt="p.pick" />
      <div>
        <b>Benny Chagur</b>
        <p>16 hrs</p>
      </div>
    </div>
    <div class="single_man">
      <img src="img/m5.jpg" alt="p.pick" />
      <div>
        <b>Benny Chagur</b>
        <p>16 hrs</p>
      </div>
    </div>
  </div>
  <!-- Content Header (Page header) -->
</template>

<script>
export default {
  name: "ActiveUser",
  props: {
    msg: String,
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.man_box {
  border: 1px solid #e1dfdf;
  border-radius: 4px;
  padding: 15px 20px;
}

.single_man img {
  width: 40px;
  border: 1px solid #e1dfdf;
  border-radius: 30px;
  height: 40px;
  margin-right: 15px;
}

.single_man {
  display: flex;
  align-content: center;
  align-items: center;
  justify-content: flex-start;
  margin-bottom: 16px;
}
.single_man p {
  margin: 0;
  font-size: 12px;
}

.single_man b {
  font-size: 14px;
}
</style>
