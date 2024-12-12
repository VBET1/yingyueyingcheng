<template>
  <div class="dashboard-container">
    <div class="dashboard-text">name: {{ name }}
    </div>
  </div>
</template>

<script>
import { mapGetters } from 'vuex'

export default {
  name: 'Dashboard',
  computed: {
    ...mapGetters([
      'name'
    ])
  }
}
</script>

<style lang="scss" scoped>

.dashboard {
  &-container {
    height: 90vh;
    background-image: url('https://hbimg.huaban.com/21abbdf543cac74bbf611fcce9d3d5df0024d47aee2f-Zr8vXT_fw658');
    background-size: cover;
    background-position: center;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  &-text {
    font-size: 30px;
    line-height: 46px;
  }

}
body{
}

</style>
