package com.gec.system.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gec.model.system.SysMovie;
import com.gec.model.vo.SysMovieQueryVo;
import com.gec.system.common.Result;
import com.gec.system.service.SysMovieService;
import com.gec.system.util.VodTemplate;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;

@RestController
@Api(tags = "影视管理控制器")
@RequestMapping("/admin/system/sysMovie")
public class SysMovieController {

    @Autowired
    private SysMovieService sysMovieService;
    @Autowired
    private VodTemplate vodTemplate;

    @PreAuthorize("hasAuthority('bnt.sysMovie.list')")
    @ApiOperation("获取全部影视列表")
    @GetMapping("/findAll")
    public Result findAll()
    {
        List<SysMovie> list = this.sysMovieService.list();
        return Result.ok(list);
    }
    @PreAuthorize("hasAuthority('bnt.sysMovie.remove')")
    @ApiOperation("根据id去移除一个影视")
    // 测试删除
    @DeleteMapping("/removeMovie/{id}")
    public Result removeMovie(@PathVariable Long id)
    {
        boolean b = this.sysMovieService.removeById(id);
        if (b)
        {
            return Result.ok();
        }
        else
        {
            return Result.fail();
        }
    }

    // 分页和条件查询
    @GetMapping("/{page}/{limit}")
    public Result findMovieByPageQuery(@PathVariable Long page,
                                       @PathVariable Long limit,
                                       SysMovieQueryVo sysMovieQueryVo)
    {
        //1.创建分页对象
        IPage<SysMovie> p1 = new Page<SysMovie>(page,limit);
        //2.调用方法
        p1 =    this.sysMovieService.selectPage(p1,sysMovieQueryVo);
        //3.返回
        return Result.ok(p1);
    }

    // 添加影视
    @PreAuthorize("hasAuthority('bnt.sysMovie.addMovie')")
    @PostMapping("/addMovie")
    public Result addRole(@RequestBody SysMovie sysMovie)
    {
        System.out.println("sysMovie = " + sysMovie);
        boolean res = this.sysMovieService.save(sysMovie);
        if (res)
        {
            return Result.ok();
        }
        else
        {
            return Result.fail();
        }
    }
    // 修改
    //1.根据id 去得到当前影视
    @PreAuthorize("hasAuthority('bnt.sysMovie.updateMovie')")
    @GetMapping("/findMovieById/{id}")
    public Result findMovieById(@PathVariable Long id)
    {
        SysMovie sysMovie = this.sysMovieService.getById(id);
        return Result.ok(sysMovie);
    }

    // 实现修改
    @PreAuthorize("hasAuthority('bnt.sysMovie.updateMovie')")
    @PostMapping("/updateMovie")
    public Result updateRole(@RequestBody SysMovie sysMovie)
    {
        boolean b = this.sysMovieService.updateById(sysMovie);
        if (b)
        {
            return Result.ok();
        }
        else
        {
            return Result.fail();
        }
    }
    // 批量删除
    @PreAuthorize("hasAuthority('bnt.sysMovie.remove')")
    @DeleteMapping("/removeMovieByIds")
    public Result removeMovieByIds(@RequestBody List<Long> ids)
    {
        boolean b = this.sysMovieService.removeByIds(ids);
        if (b)
        {
            return Result.ok();
        }
        else
        {
            return Result.fail();
        }
    }

    // 播放视频   根据id 和 播放秘钥
    @PreAuthorize("hasAuthority('bnt.sysMovie.assignVideo')")
    @RequestMapping(value = "/getPlayAuth/{id}")
    public Result playVideoByAuth(@PathVariable Long id) throws Exception {
        //1.根据id 获取 到 SysMovie
        SysMovie sysMovie = this.sysMovieService.getById(id);
        //2. 从  SysMovie 中获取到 image  playId  Auth
        String image = sysMovie.getImage();
        String playId = sysMovie.getPlayId();
        System.out.println("playId = " + playId);
        //  获取 播放秘钥
        // 根据playId 去阿里云服务器获取播放秘钥
        String playAuth = this.vodTemplate.getVideoPlayAuth(playId).getPlayAuth();
        // 封装map 集合
        HashMap<String, Object> map = new HashMap<>();
        // 分别封装三个参数  参数的key 要和前端对应
        map.put("image", image);
        map.put("playId",playId);
        map.put("playAuth",playAuth);
        return Result.ok(map);

    }



}

