<template>
  <div>
    <el-container>
      <el-header id="header" style="height: 100px">
        <el-col :span="3" id="col1"
          ><img src="../toPlayMovie/爱影视logo.png" alt=""
        /></el-col>
        <el-col :span="3" style="margin-left: 100px">
          <router-link :to="{path:'/index'}" id="a1">首页</router-link>
          </el-col>
          <el-col :span="3">
          <el-button id="button"  type="text">电视剧</el-button>
        </el-col>
        <el-col :span="3">
          <el-button id="button"  type="text">电影</el-button>
        </el-col>
        <el-col :span="3">
          <el-popover
            placement="top-start"
            width="200"
            trigger="hover">
            <!-- 菜单 -->
            <el-row>
              <el-col :span="8"><div class="grid-content bg-purple">
                <el-button  type="text" slot="reference" >综艺</el-button>
              </div></el-col>
              <el-col :span="8"><div class="grid-content bg-purple-light">
                <el-button  type="text" slot="reference" >动漫</el-button>
              </div></el-col>
              <el-col :span="8"><div class="grid-content bg-purple">
                <el-button  type="text" slot="reference" >网剧</el-button>
              </div></el-col>
            </el-row>  
            <el-row>
              <el-col :span="8"><div class="grid-content bg-purple">
                <el-button  type="text" slot="reference" >纪录片</el-button>
              </div></el-col>
              <el-col :span="8"><div class="grid-content bg-purple-light">
                <el-button  type="text" slot="reference" >肥皂剧</el-button>
              </div></el-col>
              <el-col :span="8"><div class="grid-content bg-purple">
                <el-button  type="text" slot="reference" >短视频</el-button>
              </div></el-col>
            </el-row>

            <el-button id="button" type="text" slot="reference">菜单</el-button>
          </el-popover>
        </el-col>
        <el-col :span="5">
          <el-input
            placeholder="请输入内容"
            v-model="input3"
            class="input-with-select"
          >
            <el-button slot="append" icon="el-icon-search"></el-button>
          </el-input>
          
        </el-col>
         <el-col :span="2" style="margin-left:50px;margin-top:30px">
            <el-avatar src="https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png"></el-avatar>
         </el-col>
      </el-header>
      <el-container>
      <el-aside width="800px" style="margin-top:20px">
            <!-- 定义播放器dom -->
            <div id="J_prismPlayer" class="prism-player"></div>
        </el-aside>
        <el-main>
            <el-tabs type="border-card" style="height:500px">
            <el-tab-pane label="留言">  
                <el-input type="textarea" :rows="10" v-model="message"></el-input>  
                  <el-button plain style="margin-left:400px;margin-top:10px" @click="admin">提交留言</el-button>
                    <el-button plain @click="clear">清空留言</el-button>
                    <hr style="margin-top:50px">
                    <el-button plain style="margin-left:300px;margin-top:40px" icon="el-icon-star-off">收藏视频</el-button>
                    <el-button plain style="margin-left:200px" icon="el-icon-download">视频下载</el-button>
                    
            </el-tab-pane>
            <el-tab-pane label="视频详情">
              <el-descriptions title="视频详情">
                  <el-descriptions-item label="剧名">{{sysMovie.name}}</el-descriptions-item>
                  <el-descriptions-item label="导演">{{sysMovie.director}}</el-descriptions-item>
                  <el-descriptions-item label="演员">{{sysMovie.actor }}</el-descriptions-item>
                  <el-descriptions-item label="描述">
                    <el-input type="textarea" :rows="10" v-model="sysMovie.description" style="font-size: 20px;color: black;"></el-input> 
                  </el-descriptions-item>
                  
              </el-descriptions>
            </el-tab-pane>
            </el-tabs>
        </el-main>
      </el-container>
    </el-container>
      <el-container>
        <el-footer style="height:300px">
            <el-form ref="form" label-width="80px">
                <el-form-item label="视频评论">
                    <el-input v-model="comment" placeholder="请输入你的评论.."></el-input>
                </el-form-item>
                <el-form-item style="float:left">
                    <el-button plain>提交评论</el-button>
                </el-form-item>
            </el-form>
        </el-footer>
        </el-container>
  </div>
</template>

<script>
import axios from "axios";
export default {
  data() {
    return {
      playInfo: {
        image: "",
        playId: "",
        playAuth: "",
      },
    
      sysMovie:{

      },
       input3: "",
       message:"欢迎留言。。",
       comment:''
    };
  },
  created() {
    this.getPlayAuthById();
  },
  methods: {
    // 根据播放id 获取播放凭证
    getPlayAuthById() {
      // 获取路由传过来的的id
      const id = this.$route.query.id;
      axios({
        method: "get",
        url: "http://localhost:8085/admin/system/sysPlay/getPlayAuthById",
        params: { id: id },
      }).then((response) => {
        console.log(response);
        this.playInfo.image = response.data.data.image;
        this.playInfo.playId = response.data.data.playId;
        this.playInfo.playAuth = response.data.data.playAuth;
        this.sysMovie = response.data.data.sysMovie;
       

        let player = new Aliplayer(
          {
            id: "J_prismPlayer",
            width: "700px",
            height: "500px",
            autoplay: false,
            controlBarVisibility: "hover",
            isLive: false,
            cover: this.playInfo.image, //图片
            vid: this.playInfo.playId, //视频id
            playauth: this.playInfo.playAuth, //视频播放秘钥
            //encryptType: 1, //是否加密播放
          },
          function (player) {
            console.log("播放器创建好了。");
          }
        );
      });
    },
    // 提交留言
    admin(){
       let message = this.message;
        // alert(message)
        this.$message({type:'success',message:'留言成功！！'})
        this.message = message;
    },
    // 清空留言
    clear(){
        this.message='';
    }
    
  },
};
</script>

<style lang="less">
.el-image {
  width: 300px;
  height: 200px;
}
    #header {
  background-color: #071b34;
  color: #f5ebeb;
  line-height: 60px;
}

.el-col {
  margin-top: 20px;
}

#col1 {
  margin-top: 5px;
}

#a1 {
  text-decoration: none;
  font-size: 20px;
  color: #0ff375;
}
   .el-footer {
    border: rgb(174, 168, 168) solid 0.5px;
    width: 2220px;
    background-color: #fff;
    text-align: center;
    line-height: 60px;
    
  }
  .el-form{
    margin-top:50px;
    width:500px
  }
  .el-descriptions-item{
    color: black;
    font-size: 20px;
    font-family:' Microsoft YaHei';
  }


</style>