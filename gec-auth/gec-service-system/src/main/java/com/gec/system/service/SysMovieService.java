package com.gec.system.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.gec.model.system.SysMovie;
import com.gec.model.vo.SysMovieQueryVo;

import java.util.List;

public interface SysMovieService extends IService<SysMovie> {
    IPage<SysMovie> selectPage(IPage<SysMovie> p1, SysMovieQueryVo sysMovieQueryVo);
    List<SysMovie> getPlayAuthAndNameLike(String name);

    // 根据影视分类名称 获取影视信息
    List<SysMovie> getPlayAuthByNameSort(String name);
}
