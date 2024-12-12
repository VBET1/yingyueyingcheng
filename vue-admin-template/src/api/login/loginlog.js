import request from '@/utils/request'

// 定义公共的api
const BASE_URL = '/admin/system/sysLoginLog'

export default {
  // 查询用户和分页
  getLoginLogPageInfo(page, limit, searchObj) {
    return request({
      url: `${BASE_URL}/${page}/${limit}`,
      method: 'get',
      params: searchObj
    })
  },
  // 删除用户
  removeById(id) {
    return request({
      url: `${BASE_URL}/remove/${id}`,
      method: 'delete'
    })
  }
}
