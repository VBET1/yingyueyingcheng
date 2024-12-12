<template>
  <div>
    <!-- 定义播放器dom -->
    <div id="J_prismPlayer" class="prism-player"></div>
  </div>
</template>

<script>
import api from '@/api/movie/movie.js'

export default {
  data() {
    return {
      playInfo: {
        image: '',
        playId: '',
        playAuth: ''
      }
    }
  },
  created() {
    this.fetchData()
  },
  methods: {
    fetchData() {
      const id = this.$route.query.id;
      // alert(id)
      api.getPlayAuthById(id).then((response) => {
        console.log(response)
        this.playInfo.image = response.data.image
        this.playInfo.playId = response.data.playId
        this.playInfo.playAuth = response.data.playAuth
        // 建议用这个播放器
        new Aliplayer({
          id: 'J_prismPlayer',
          width: '100%',
          height: '800px',
          // 播放方式二：加密视频的播放：首先获取播放凭证
          //  encryptType: '1', // 如果播放加密视频，则需设置encryptType=1，非加密视频无需设置此项
          vid: this.playInfo.playId,
          playauth: this.playInfo.playAuth
        },
        function(player) {
          console.log("播放器创建成功")
        }
        )
      })
    }
  },
  mounted() {
    console.log(this.playInfo.playId)

    console.log(this.playInfo.playAuth)

    /* eslint-disable no-undef */ // 忽略 no-undef 检测
  }
}
</script>

