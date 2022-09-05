<template>
  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <!-- LINE CHART -->
      <div class="card card-info">
        <div class="card-header">
          <div class="chart-menu">
            <div class="chart-menu-left">
              <p><b>User activity</b></p>
            </div>
            <div class="chart-menu-right">
              <ul>
                <li class="active">
                  <router-link to="#">Daily</router-link>
                </li>
                <li>
                  <router-link to="#">Weekly</router-link>
                </li>
                <li>
                  <router-link to="#">Monthly</router-link>
                </li>
              </ul>
            </div>
          </div>
          <div class="chart-menu-after">
            <div class="chart-menu-after-left">
              <h2>1730</h2>
            </div>
            <div class="chart-menu-after-right">
              <img src="img/up.png" alt="" />
              <div class="persent">
                <p><span>0.8%</span></p>
                <p>Than last Day</p>
              </div>
            </div>
          </div>

          <div class="card-tools">
            <button
              type="button"
              class="btn btn-tool"
              data-card-widget="collapse"
            >
              <i class="fas fa-minus"></i>
            </button>
            <button
              type="button"
              class="btn btn-tool"
              data-card-widget="remove"
            >
              <i class="fas fa-times"></i>
            </button>
          </div>
        </div>
        <div class="card-body">
          <div class="chart">
            <div
              id="lineChart"
              style="
                min-height: 250px;
                height: 250px;
                max-height: 250px;
                max-width: 100%;
              "
            ></div>
          </div>
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->
    </div>
    <!-- /.container-fluid -->
  </section>
  <!-- /.content -->
</template>
<script>
export default {};
</script>
<style></style>
