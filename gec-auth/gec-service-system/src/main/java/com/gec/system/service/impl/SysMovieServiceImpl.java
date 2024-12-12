package com.gec.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gec.model.system.SysMovie;
import com.gec.model.vo.SysMovieQueryVo;
import com.gec.system.mapper.SysMovieMapper;
import com.gec.system.service.SysMovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysMovieServiceImpl extends ServiceImpl<SysMovieMapper, SysMovie> implements SysMovieService {

    @Autowired
    private SysMovieMapper sysMovieMapper;

    @Override
    public IPage<SysMovie> selectPage(IPage<SysMovie> p1, SysMovieQueryVo sysMovieQueryVo) {
        return this.baseMapper.selectPage(p1,sysMovieQueryVo);
    }
    // 模糊查询
    @Override
    public List<SysMovie> getPlayAuthAndNameLike(String name) {
        QueryWrapper<SysMovie> wrapper = new QueryWrapper<>();
        wrapper.like("name",name);
        return this.baseMapper.selectList(wrapper);
    }

    @Override
    public List<SysMovie> getPlayAuthByNameSort(String name) {
        return this.baseMapper.getPlayAuthByNameSort(name);
    }

}