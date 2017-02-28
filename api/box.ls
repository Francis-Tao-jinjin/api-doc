/**
 *
 * @api {get} /api/box 获取在线测试盒名字与Id
 * @apiDescription tester
 * @apiVersion 0.2.0
 * 
 * @apiName retrieveOnlineBoxNameId
 * @apiGroup Box
 * 
 * @apiSuccessExample {json} SUCCESS
 *  {
 *    data: [{
 *      boxId: '23jflkdsjv9rwe0898vd0',
 *      boxName: '测试盒1',
 *      companyId: '23jflkdsjv9rwe0898das',
 *      companyName: '美的',
 *      departmentId: null        // null表示未分配部门
 *    }, {
 *      boxId: '23jflkdsjv9rwe0898fsd',
 *      boxName: '测试盒2',
 *      companyId: 23jflkdsjv9rwe0898vd0,
 *      companyName: '美的',
 *      departmentId: '23jflkdsjv9rwe089fsds'
 *    }],
 *    status:'SUCCESS',
 *    msg:'获取在线测试盒名字&ID成功',
 *    timestamp: 1480244308146
 *  }
 * 
 */