<template>
  <div id="app">
    <el-container>
      <el-header id="header" style="height: 100px">
        <el-col :span="3" id="col1"
          ><img src="../assets/images/爱影视logo.png" alt=""
        /></el-col>
        <el-col :span="3" style="margin-left: 100px">
          <el-button type="text" id="a1" @click="findAllMovieList">首页</el-button>
        </el-col>
        <el-col :span="3">
          <el-button id="button"  type="text" @click="getPlayAuthBySort('电视剧')">电视剧</el-button>
        </el-col>
        <el-col :span="3">
          <el-button id="button"  type="text" @click="getPlayAuthBySort('电影')">电影</el-button>
        </el-col>
        <el-col :span="3">
          <el-popover
            placement="top-start"
            width="200"
            trigger="hover">
            <!-- 菜单 -->
            <el-row>
              <el-col :span="8"><div class="grid-content bg-purple">
                <el-button  type="text" slot="reference" @click="getPlayAuthBySort('综艺')">综艺</el-button>
              </div></el-col>
              <el-col :span="8"><div class="grid-content bg-purple-light">
                <el-button  type="text" slot="reference" @click="getPlayAuthBySort('动漫')">动漫</el-button>
              </div></el-col>
              <el-col :span="8"><div class="grid-content bg-purple">
                <el-button  type="text" slot="reference" @click="getPlayAuthBySort('网剧')">网剧</el-button>
              </div></el-col>
            </el-row>  
            <el-row>
              <el-col :span="8"><div class="grid-content bg-purple">
                <el-button  type="text" slot="reference" @click="getPlayAuthBySort('纪录片')">纪录片</el-button>
              </div></el-col>
              <el-col :span="8"><div class="grid-content bg-purple-light">
                <el-button  type="text" slot="reference" @click="getPlayAuthBySort('肥皂剧')">肥皂剧</el-button>
              </div></el-col>
              <el-col :span="8"><div class="grid-content bg-purple">
                <el-button  type="text" slot="reference" @click="getPlayAuthBySort('短视频')">短视频</el-button>
              </div></el-col>
            </el-row>

            <el-button id="button" type="text" slot="reference">菜单</el-button>
          </el-popover>
        </el-col>
        <el-col :span="5">
          <el-input
            placeholder="请输入内容"
            v-model="movieName"
            class="input-with-select"
          >
            <el-button slot="append" icon="el-icon-search" @click="findAllMovieList"></el-button>
          </el-input>
        </el-col>
        <el-col :span="2" style="margin-left:50px;margin-top:30px">
            <el-avatar src="https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png"></el-avatar>
         </el-col>
       
      </el-header>

      <el-main>
        <!-- 轮播图 -->
        <div id="carousel">
          <el-carousel :interval="4000" type="card" height="400px">
            <el-carousel-item v-for="item in items" :key="item.values">
              <h3 class="medium">{{ item.itemname }}</h3>
              <img :src="item.url" />
            </el-carousel-item>
          </el-carousel>
        </div>

       <h2>影视列表</h2>
        <hr>
        <!-- 影视列表 -->
        <el-row id=movieRow :gutter="20">
          
          <el-col :span="6" v-for="item in list">
            <div class="grid-content bg-purple" >
                 <div class="demo-image__placeholder">
                    <div class="block">
                    <el-image :src="item.image"></el-image>
               
                    </div>
                </div>
            </div>      
            <router-link :to="{path:'/toplayMovie?id='+item.id+''}">{{item.name}}</router-link> 
          </el-col>
        </el-row>
      </el-main>
    </el-container>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {

      
      list: [],

      //轮播图
      items: [
        {
          itemid: 1,
          itemname: "扫黑风暴",
          url: "https://yn-movie.oss-cn-guangzhou.aliyuncs.com/image/2023/04/19/610d26eee4b0f21d73864eac.png",
        },
        {
          itemid: 2,
          itemname: "古墓丽影",
          url: "https://yn-movie.oss-cn-guangzhou.aliyuncs.com/image/aa/R-C.png",
        },
        {
          itemid: 3,
          itemname: "盗墓笔记之重启",
          url: "https://yn-movie.oss-cn-guangzhou.aliyuncs.com/image/aa/01222e5f3e4d56a801215aa0802131.jpg%401280w_1l_2o_100sh.png",
        },
        {
          itemid: 4,
          itemname: "流浪地球",
          url: "https://yn-movie.oss-cn-guangzhou.aliyuncs.com/image/aa/012cf05cf8a500a801205e4b534e97.jpg%402o.png",
        },
        {
          itemid: 5,
          itemname: "影",
          url: "https://yn-movie.oss-cn-guangzhou.aliyuncs.com/image/aa/0164cc5b9a2b25a8012099c81d2571.jpg%402o.png",
        },
      ],

      movieName: "",
      
    

    };
  },
  created() {
   
    this.findAllMovieList();
    
  },

  methods: {
   
    findAllMovieList() {
      axios({
        method: "get",
        url: "http://localhost:8085/admin/system/sysPlay/getAllPlayAuth",
        params:{'name':this.movieName}
      }).then((res) => {
        console.log(res);
        this.list = res.data.data.sysMovieList;
      });
    },

    // 根据影视分类获取影视信息
    getPlayAuthBySort(name){   
        //  alert(name)
          axios({
          method: "get",
          url: "http://localhost:8085/admin/system/sysPlay/getPlayAuthByNameSort",
          params:{'name':name}
          }).then((res) => {
          console.log(res);
          this.list = res.data.data.sysMovieList;
        })
    },

   
    handleClick(tab, event) {
      console.log(tab, event);
    },
  },
};
</script>

<style lang="less">


#header {
  background-color: #071b34;
  color: #eeeaea;
  line-height: 60px;
  font-family:'Microsoft YaHei';
  font-size: 20px;
}

.el-col {
  margin-top: 20px;
}

#col1 {
  margin-top: 5px;
  float: left;
}

#button{
    font-size: 20px;
   font-family:'Microsoft YaHei';
   color: #eeeaea;
}
#button:hover{
  color: #0ff375;
}

#a1 {
  text-decoration: none;
  font-size: 30px;
   font-family:'Microsoft YaHei';
  color: #0ff375;
}

.el-row{
  font-size: 30px;
  font-family:'Microsoft YaHei';
  background-color: #071b34;
 
}
#movieRow{
  font-size: 20px;
   font-family:'Microsoft YaHei';
  background-color: #071b34;
  
}
a{
  text-decoration: none;
  color: #eeeaea;
}
a:hover{
  color: #0ff375;
}

</style>