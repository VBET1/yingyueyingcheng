import request from '@/utils/request'
// 定义基本的url
const BASE_URL = '/admin/system/sysRole'

export default {
  getPageList(page, limit, searchObj) {
    return request({
      url: `${BASE_URL}/${page}/${limit}`,
      method: 'get',
      params: searchObj
    })
  },
  removeId(id) {
    return request({
      url: `${BASE_URL}/removeRoleById/${id}`,
      method: 'delete' // 提交方式
    })
  },
  updateRole(sysRole) {
    return request({
      //  url: '/admin/system/role/'+page+"/"+limit,
      url: `${BASE_URL}/updateRole`,
      method: 'post', // 提交方式
      data: sysRole
    })
  },
  getRoleById(id) {
    return request({
      //  url: '/admin/system/role/'+page+"/"+limit,
      url: `${BASE_URL}/getRoleById/${id}`,
      method: 'get' // 提交方式
    })
  },
  bactchremoveId(ids) {
    return request({
      //  url: '/admin/system/role/'+page+"/"+limit,
      url: `${BASE_URL}/bactchremoveId`,
      method: 'delete', // 提交方式
      data: ids
    })
  },
  saveRole(sysRole) {
    return request({
      //  url: '/admin/system/role/'+page+"/"+limit,
      url: `${BASE_URL}/saveRole`,
      method: 'post', // 提交方式
      data: sysRole
    })
  },
  // 根据用户id查询用户已分配的角色
  getRolesByUserId(userId) {
    return request({
      url: `${BASE_URL}/toAssign/${userId}`,
      method: 'get'
    })
  },
  // 分配角色
  assignRoles(assginRoleVo) {
    return request({
      url: `${BASE_URL}/doAssign`,
      method: 'post',
      data: assginRoleVo
    })
  }
}
