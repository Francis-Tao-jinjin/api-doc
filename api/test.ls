/**
 * @api {get} /api/test 获取测试列表
 * @apiDescription tester（只显示用户自己创建的测试）
 * @apiVersion 0.2.0
 *
 * @apiName retrieveTestList
 * @apiGroup Test
 *
 * @apiSuccessExample {json} SUCCESS
 *  {
 *    data: [{
 *      testId: '584a0a169eb43406b39a7520',
 *      testName: '高速洗涤测试',
 *      boxId: 1,
 *      boxName: '测试盒1',
 *      result: null,             // null | 'pass' | 'fail'
 *      reason: null,          // null | '已取消' | '已手动终止' | '超时'
 *      status: 'waiting'           // 'waiting' | 'executing' | 'ended'
 *      startTime: 1480244308130,
 *      endTime: 1480244308146,   // 如果测试执行状态为进行时，endTime记录的是预计结束时间
 *      remain: 2                 // 等待队列中剩余 2个 测试待执行
 *    }, {...}],
 *    status: 'SUCCESS',
 *    msg: '获取测试执行列表成功',
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


/**
 *
 * @api {get} /api/test/:testId 获取测试执行详情
 * @apiDescription tester
 * @apiVersion 0.2.0
 *
 * @apiName retrieveTestDetail
 * @apiGroup Test
 *
 * @apiSuccessExample {json} SUCCESS
 *  {
 *    data: {
 *      testId: '584a0a169eb43406b39a7520',
 *      testName: '高速洗涤-第一次测试',
 *      boxId: '584a0a169eb43406b39a7511',
 *      boxName: '测试盒1',
 *      comment: '这是一个备注。。。',
 *      result: null,
 *      reason: null,
 *      startTime: 1480244308146,
 *      endTime: 1480244308146,   // 如果测试执行状态为进行时，endTime记录的是预计结束时间
 *      detail: {
 *        stepData: [{
 *          stepId: 1,
 *          startTime: 1480244308146,
 *          endTime: 8024436121212
 *        }, {...}],
 *        pinData: [{
 *          pin: "DI1",
 *          time: 1467167969775,
 *          value: false
 *        }, {...}]
 *      },
 *      steps: [{
 *        id: '584a0a169eb43406b39a7520',
 *        name: '进水',
 *        estimatedTime: 34000    // 单位：ms
 *      }, {...}],
 *      pins: [{
 *        pin: 'DI1'
 *        name: '排水阀',
 *        mode: 0,                //  0 代表ATS板输入，1 代表ATS板输出
 *        type: 1,                //  0 代表模拟信号引脚，1 代表数字信号引脚
 *        unit: {                 // 数字信号引脚返回一个对象, 模拟信号返回一个字符串如'C'
 *          'false': '关',
 *          'true' : '开'
 *        },
 *        initial: true           // 数字信号引脚的初始值只有true和false, 模拟信号引脚初始值为一个具体的数字
 *      }, {
 *        pin: 'AO1'
 *        name: '温度',
 *        type: 0,
 *        unit: '°C'，
 *        mode: 0,
 *        initial: 25
 *      }, {...}]
 *    },
 *    status: 'SUCCESS',
 *    msg: '获取测试执行详情成功',
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



/**
 * @api {post} /api/test 新建测试
 * @apiDescription tester
 * @apiVersion 0.2.0
 *
 * @apiName createTest
 * @apiGroup Test
 *
 * @apiParam {String} testName 测试名称
 * @apiParam {String} boxId 测试盒id
 * @apiParam {File}   excel 测试表格
 * @apiParam {String} [comment=空字符串] 备注
 *
 * @apiSuccessExample {json} SUCCESS_LEGAL_EXCEL
 * {
 *   data: {
 *     testId: '584a0a169eb43406b39a75ba',
 *     testName: '自动洗测试',
 *     boxId: '584a0a169eb43406b39a7511',
 *     script: {
 *       name: 1.js,
 *       url: 'static/public/test-scripts/zhaowu/1.js'
 *     },
 *     pins: [{
 *       pin: "DI1",
 *       name: "进水阀",
 *       type: 1,
 *       unit: {
 *         'true': '开',
 *         'false': '关'
 *       },
 *       mode: 0
 *     }, {
 *       pin: "DI2",
 *       name: "排水阀",
 *       type: 1,
 *       unit: {
 *         'true': '开',
 *         'false': '关'
 *       },
 *       mode: 0
 *     }, {
 *       pin: "AO3",
 *       name: "温度",
 *       type: 0,
 *       unit: "°C",
 *       mode: 1
 *     }, {...}]
 *   },
 *   status: 'SUCCESS_LEGAL_EXCEL',
 *   msg: '创建测试成功',
 *   timestamp: 1480244308146
 * }
 *
 * @apiSuccessExample {json} SUCCESS_ILLEGAL_EXCEL
 * {
 *   data: null,
 *   status: 'SUCCESS_ILLEGAL_EXCEL',
 *   msg: '进水步骤未定义',
 *   timestamp: 1480244308146
 * }
 *
 * @apiErrorExample {json} ERROR
 * {
 *   data: null,
 *   status: 'ERROR',
 *   msg: '新建测试执行失败',
 *   timestamp: 1480244308146
 * }
 *
 */
