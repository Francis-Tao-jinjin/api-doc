/**
 * @api {post} Socket.emit('join-room',boxId) 添加测试盒到通信房间
 * @apiVersion 0.2.0
 *
 * @apiName join-room
 * @apiDescription 当进入某个测试的详情页面，以测试盒id作为标识符，监听该测试盒上的测试。
 * @apiGroup Control Socket
 *
 * @apiParam {String} id 测试盒id
 */

/**
 * @api {post} Socket.emit('leave-room',boxId) 从通信房间移除测试盒
 * @apiVersion 0.2.0
 *
 * @apiName leave-room
 * @apiDescription 当退出某个测试的详情页面，以测试盒id作为标识符，撤销该测试盒的监听事件。
 * @apiGroup Control Socket
 *
 * @apiParam {String} id 测试盒id
 */

/**
 * @api {post} Socket.emit('start-test',data) 开始测试
 * @apiVersion 0.2.0
 *
 * @apiName start-test
 * @apiDescription 下发某个测试盒开始测试的通知
 * @apiGroup Control Socket
 * 
 * @apiParamExample {json} data
 * {
 *   boxId: 2,
 *   testId: 14,
 *   scriptUrl: 'https://ats.com/public/script/自动洗碗机v0.js'
 * }
 */

/**
 * @api {post} Socket.emit('stop-test',data) 终止测试
 * @apiVersion 0.2.0
 *
 * @apiName stop-test
 * @apiDescription 下发某个测试盒终止测试的通知
 * @apiGroup Control Socket
 * 
 * @apiParamExample {json} data
 * {
 *   boxId: 2,
 *   testId: 14
 * }
 */

/**
 * @api {get} Socket.on('pin-change',fn) 获取测试的引脚数据
 * @apiVersion 0.2.0
 * 
 * @apiName pin-change
 * @apiGroup Control Socket
 * 
 * @apiExample 例子
 * Socket.on('pin-change', function(data) {
 *   // ...
 * })
 *
 * @apiSuccessExample {json} data
 * {
 *   pin: 'DI2',
 *   value: true,
 *   timestamp: 1467167969775
 * }
 */

/**
 * @api {get} Socket.on('step-change',fn) 获取测试的步骤数据
 * @apiVersion 0.2.0
 * 
 * @apiName step-change
 * @apiGroup Control Socket
 *
 * @apiExample 例子
 * Socket.on('step-change', function(data) {
 *   // ..
 * })
 * 
 * @apiSuccessExample {json} data
 * {
 *   boxId: 1,
 *   testId: 1,
 *   stepId: 2,
 *   status: 'active',
 *   timestamp: 1467167969775
 * }
 */

/**
 * @api {get} Socket.on('test-change',fn) 获取测试的状态数据
 * @apiVersion 0.2.0
 *
 * @apiName test-change
 * @apiGroup Control Socket
 *
 * @apiExample 例子
 * Socket.on('step-change', function(data) {
 *   // ..
 * })
 * 
 * @apiSuccessExample {json} pending, active or pass
 * {
 *   boxId: 8,
 *   testId: 15,
 *   status: 'active',
 *   error: null,
 *   timestamp: 1467167969775
 * }
 *
 * @apiSuccessExample {json} fail
 * {
 *   boxId: 8,
 *   testId: 15,
 *   status: 'fail',
 *   error:
 *   {
 *     stepId: 10,
 *     reason: '超时'
 *   },
 *   timestamp: 1467167969775
 * }
 *
 * @apiSuccessExample {json} suspended
 * {
 *   boxId: 8,
 *   testId: 15,
 *   status: 'suspended',
 *   error:
 *   {
 *     reason: '测试盒与服务器的网络连接中断'
 *   },
 *   timestamp: 1467167969775
 * }
 */