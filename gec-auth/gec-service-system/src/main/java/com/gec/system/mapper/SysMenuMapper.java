package com.gec.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.gec.model.system.SysMenu;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 菜单表 Mapper 接口
 * </p>
 *
 * @author dafei
 * @since 2024-09-21
 */
public interface SysMenuMapper extends BaseMapper<SysMenu> {
    List<SysMenu> findMenuListByUserId(@Param("userId") Long userId);


}
