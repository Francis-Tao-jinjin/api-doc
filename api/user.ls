/**
 * @api {post} /signin 用户登录
 * @apiDescription all（public API）
 * @apiVersion 0.2.0
 *
 * @apiName signin
 * @apiGroup User
 *
 * @apiParam {string} username 用户名
 * @apiParam {string} password 用户密码（加密）
 *
 * @apiSuccessExample {json} SUCCESS
 *  {
 *    data: {
 *      username: 'admin',
 *      fullname: 'eric',
 *      userId: 'fs3oijvsofieod',
 *      role: 'cAdmin',
 *      companyName: '美的',
 *      companyId: '23jflkdsjv9rwe0898vd0',
 *      departmentId: '23jflkdsjv9rwe0898fs2'
 *    },
 *    status: 'SUCCESS',
 *    msg: '登录成功',
 *    timestamp: 1480244308146
 *  }
 *
 * @apiErrorExample {json} ERROR
 *  {
 *    data: null,
 *    status: 'ERROR'
 *    msg: '数据库查询错误',
 *    timestamp: 1480244308146
 *  }
 *
 * @apiErrorExample {json} WRONG_PASSWORD
 *  {
 *    data: null,
 *    status: 'WRONG_PASSWORD',
 *    msg: '密码错误',
 *    timestamp: 1480244308146
 *  }
 *
 * @apiErrorExample {json} USER_NOT_FOUND
 *  {
 *    data: null,
 *    status: 'USER_NOT_FOUND',
 *    msg: '用户不存在',
 *    timestamp: 1480244308146
 *  }
 */

/**
 * @api {get} /api/user/signout 用户登出
 * @apiDescription all
 * @apiVersion 0.2.0
 *
 * @apiName signout
 * @apiGroup User
 */

/**
 * @api {get} /user 获取用户信息
 * @apiDescription all（public API）
 * @apiVersion 0.2.0
 *
 * @apiName getUser
 * @apiGroup User
 *
 *
 * @apiSuccessExample {json} 已登录
 *  {
 *    data: {
 *      username: 'admin',
 *      fullname: 'eric',
 *      userId: 'fs3oijvsofieod',
 *      role: 'cAdmin',
 *      companyName: '美的',
 *      companyId: '23jflkdsjv9rwe0898vd0',
 *      department: '洗碗机',
 *      departmentId: '23jflkdsjv9rwe0898fsd'
 *    },
 *    status: 'SUCCESS',
 *    msg: '获取用户信息成功',
 *    timestamp: 1480244308146
 *  }
 *
 * @apiSuccessExample {json} 未登录
 *  {
 *    data: null,
 *    status: 'SUCCESS'
 *    msg: '获取用户信息成功',
 *    timestamp: 1480244308146
 *  }
 */

