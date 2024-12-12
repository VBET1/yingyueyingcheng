import request from '@/utils/request'

// 定义公共的api
const BASE_URL = `/admin/system/sysUser`

export default {
  getUserPageInfo(page, limit, searchObj) {
    return request({
      url: `${BASE_URL}/${page}/${limit}`,
      method: 'get',
      params: searchObj
    })
  },
  // 添加用户
  saveUser(sysUser) {
    return request({
      url: `${BASE_URL}/saveUser`,
      method: 'post',
      data: sysUser
    })
  },
  updateUser(sysUser) {
    return request({
      url: `${BASE_URL}/updateUser`,
      method: 'post',
      data: sysUser
    })
  },
  // 根据id去得到一个用户
  getUserById(id) {
    return request({
      url: `${BASE_URL}/findUserById/${id}`,
      method: 'get'
    })
  },
  removeUserById(id) {
    return request({
      url: `${BASE_URL}/removeUserById/${id}`,
      method: 'delete'
    })
  },
  // 批量 删除
  bactchremoveId(ids) {
    return request({
      url: `${BASE_URL}/removeBatchUserByIds`,
      method: 'delete', // 提交方式
      data: ids
    })
  },
  // 修改状态
  updateStatus(id, status) {
    return request({
      url: `${BASE_URL}/updateStatus/${id}/${status}`,
      method: 'get'
    })
  }
}
