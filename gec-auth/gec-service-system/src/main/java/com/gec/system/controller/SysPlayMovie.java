package com.gec.system.controller;

import com.gec.model.system.SysMovie;
import com.gec.system.common.Result;
import com.gec.system.service.SysMovieService;
import com.gec.system.util.VodTemplate;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Yn
 * @date 2023/4/21
 */

@CrossOrigin(origins = "*",maxAge = 3600)// 跨域问题
@RestController
@RequestMapping("/admin/system/sysPlay")
public class SysPlayMovie {

    @Autowired
    private SysMovieService sysMovieService;

    @Autowired
    private VodTemplate vodTemplate;


    @RequestMapping("/getAllPlayAuth")
    public Result getAllPlayAuth(String name) {

        if (name==null){
            name = "";
        }
        List<SysMovie> sysMovieList = this.sysMovieService.getPlayAuthAndNameLike(name);
        // 封装数据
        Map<String,Object> map = new HashMap<>();
        map.put("sysMovieList",sysMovieList);
        return Result.ok(map);
    }


    @ApiOperation("根据id获取播放凭证")
    @RequestMapping("/getPlayAuthById")
    public Result getPlayAuth(Long id) throws Exception {

        // 1.根据id获取movie
        SysMovie sysMovie = this.sysMovieService.getById(id);

        //2.根据movie获取播放id
        String playId = sysMovie.getPlayId();

        //3.获取 封面
        String image =  sysMovie.getImage();

        String playAuth = this.vodTemplate.getVideoPlayAuth(playId).getPlayAuth();

        // 封装数据
        Map<String,Object> map = new HashMap<>();
        map.put("image", image);
        map.put("playId",playId);
        map.put("sysMovie",sysMovie);
        map.put("playAuth",playAuth);
        return Result.ok(map);
    }



    // 根据影视分类名称 获取影视信息
    @RequestMapping("/getPlayAuthByNameSort")
    public Result getPlayAuthByNameSort(String name) {

        List<SysMovie> sysMovieList = this.sysMovieService.getPlayAuthByNameSort(name);
        // 封装数据
        Map<String,Object> map = new HashMap<>();
        map.put("sysMovieList",sysMovieList);
        return Result.ok(map);
    }

}
