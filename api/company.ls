
/**
 *
 * @api {get} /api/member 获取公司用户列表
 * @apiDescription cAdmin
 * @apiVersion 0.2.0
 *
 * @apiName retrieveCompanyMemberList
 * @apiGroup Company
 *
 * @apiSuccessExample {json} SUCCESS
 *  {
 *    data: [{
 *      userId: '584a0a169eb43406b39a7520',
 *      username: 'yuxiang',
 *      fullname: '王宇翔',
 *      createdAt: 1480244308146,
 *      departmentId: '23jflkdsjv9rwe0898fs2',
 *      departmentName: '洗碗机'
 *    }, {...}],
 *    status: 'SUCCESS',
 *    msg: '获取公司用户信息成功',
 *    timestamp: 1480244308146
 *  }
 *
 * @apiErrorExample {json} ERROR
 *  {
 *    data: null,
 *    status: 'ERROR',
 *    msg: '数据库查询错误',
 *    timestamp: 1480244308146
 *  }
 *
 */
