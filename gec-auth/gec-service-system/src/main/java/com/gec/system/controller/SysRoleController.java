package com.gec.system.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gec.model.system.SysRole;
import com.gec.model.vo.AssginRoleVo;
import com.gec.model.vo.SysRoleQueryVo;
import com.gec.system.common.Result;
import com.gec.system.service.SysRoleService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;
@RestController
@Api(tags = "角色管理控制器")

@RequestMapping("/admin/system/sysRole")
public class SysRoleController {

    @Autowired
    private SysRoleService sysRoleService;
    @ApiOperation("查询全部角色")
    @GetMapping("/findAll")
    public Result findAll()
    {

        List<SysRole> list = this.sysRoleService.list();
        return Result.ok(list);
    }
    // 根据id 去逻辑删除
    @PreAuthorize("hasAuthority('bnt.sysRole.remove')")
    @ApiOperation("逻辑删除接口")
    @DeleteMapping("/removeRoleById/{id}")
    public Result removeRole(@PathVariable Long id)
    {
        boolean b = this.sysRoleService.removeById(id);
        if (b)
        {
            return Result.ok();
        }
        else
        {
            return Result.fail();
        }
    }
    // 分页 + 查询
    @PreAuthorize("hasAuthority('bnt.sysRole.list')")
    @ApiOperation("角色分页查询")
    @GetMapping("/{page}/{limit}")
    public Result findRoleByPageQuery(@PathVariable Long page,
                                      @PathVariable Long limit,
                                      SysRoleQueryVo sysRoleQueryVo)
    {
        //1.创建分页对象
        IPage<SysRole> p1 = new Page<SysRole>(page,limit);
        //2.调用方法
        p1 =    this.sysRoleService.selectPage(p1,sysRoleQueryVo);
        //3.返回
        return Result.ok(p1);
    }


    // 添加
    @PreAuthorize("hasAuthority('bnt.sysRole.add')")
    @ApiOperation("添加角色")
    @PostMapping("saveRole")
    public Result addRole(@RequestBody SysRole sysRole)
    {
        boolean res = this.sysRoleService.save(sysRole);
        if (res)
        {
            return Result.ok();
        }
        else
        {
            return Result.fail();
        }
    }


    // 根据id 去获取一个role
    @PreAuthorize("hasAuthority('bnt.sysRole.list')")
    @GetMapping("getRoleById/{id}")
    @ApiOperation("根据id查询")
    public Result findRoleById(@PathVariable Long id)
    {
        SysRole sysRole = this.sysRoleService.getById(id);
        return Result.ok(sysRole);
    }
    // 修改
    @PreAuthorize("hasAuthority('bnt.sysRole.update')")
    @ApiOperation("修改角色")
    @PostMapping("updateRole")
    public Result updateRole(@RequestBody SysRole sysRole)
    {
        boolean b = this.sysRoleService.updateById(sysRole);
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
    @PreAuthorize("hasAuthority('bnt.sysRole.remove')")
    @ApiOperation("批量删除")
    @DeleteMapping("bactchremoveId")
    public Result batchRemove(@RequestBody List<Long> ids)
    {
        boolean b = this.sysRoleService.removeByIds(ids);
        if (b)
        {
            return Result.ok();
        }
        else
        {
            return Result.fail();
        }
    }


    @ApiOperation(value = "根据用户获取角色数据")
    @GetMapping("/toAssign/{userId}")
    public Result toAssign(@PathVariable Long userId) {
        Map<String, Object> roleMap = sysRoleService.getRolesByUserId(userId);
        return Result.ok(roleMap);
    }

    @PreAuthorize("hasAuthority('bnt.sysUser.assignRole')")
    @ApiOperation(value = "根据用户分配角色")
    @PostMapping("/doAssign")
    public Result doAssign(@RequestBody AssginRoleVo assginRoleVo) {
        sysRoleService.doAssign(assginRoleVo);
        return Result.ok();
    }
}

