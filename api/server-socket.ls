/**
 * @api {get} Socket.on('connect',fn) 测试盒建立连接
 * @apiVersion 0.2.0
 *
 * @apiName connect
 * @apiDescription 当测试盒连接到服务器，更新测试盒状态
 * @apiGroup Server Socket
 *
 * @apiExample 例子
 * Socket.on('connect', function(boxId) {
 *   // ...
 * })
 * 
 */

/**
 * @api {get} Socket.on('disconnect',fn) 测试盒断开连接
 * @apiVersion 0.2.0
 *
 * @apiName disconnect
 * @apiDescription 当测试盒断开连接，更新测试盒状态
 * @apiGroup Server Socket
 *
 * @apiExample 例子
 * Socket.on('disconnect', function(boxId) {
 *   // ...
 * })
 */

/**
 * @api {get} Socket.on('start-test',fn) 测试开始
 * @apiVersion 0.2.0
 *
 * @apiName start-test
 * @apiDescription 当客户端下发测试开始的通知，更新测试盒状态
 * @apiGroup Server Socket
 *
 * @apiExample 例子
 * Socket.on('start-test', function(data) {
 *   // ...
 * })
 *
 * @apiSuccessExample {json} data
 * {
 *   boxId: 5,
 *   testId: 13
 * }
 */

/**
 * @api {get} Socket.on('stop-test',fn) 测试终止
 * @apiVersion 0.2.0
 *
 * @apiName stop-test
 * @apiDescription 当客户端下发测试终止的通知，清除测试缓存数据并更新测试盒状态
 * @apiGroup Server Socket
 *
 * @apiExample 例子
 * Socket.on('stop-test', function(data) {
 *   // ...
 * })
 * 
 * @apiSuccessExample {json} data
 * {
 *   boxId: 5,
 *   testId: 13
 * }
 */


/**
 * @api {get} Socket.on('pin-change',fn) 获取测试的引脚数据
 * @apiVersion 0.2.0
 *
 * @apiName pin-change
 * @apiDescription 当测试盒引脚信息变化，获取引脚数据，缓存起来
 * @apiGroup Server Socket
 *
 * @apiExample 例子
 * Socket.on('pin-change', function(data) {
 *   // ...
 * })
 * 
 * @apiSuccessExample {json} data
 * {
 *   boxId: 1,
 *   testId: 1,
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
 * @apiDescription 当测试步骤状态变化，获取步骤变化数据，操作数据库
 * @apiGroup Server Socket
 *
 * @apiExample 例子
 * Socket.on('step-change', function(data) {
 *   // ...
 * })
 * 
 * @apiSuccessExample {json} data
 * {
 *   boxId: 1,
 *   testId: 1, 
 *   stepId: 1,
 *   status: 'active',
 *   timestamp: 1467167969775
 * }
 */

/**
 * @api {get} Socket.on('test-change',fn) 获取测试的状态数据
 * @apiVersion 0.2.0
 *
 * @apiName test-change
 * @apiDescription 当测试状态变化，获取状态变化数据，操作数据库
 * @apiGroup Server Socket
 *
 * @apiExample 例子
 * Socket.on('test-change', function(data) {
 *   // ...
 * })
 * 
 * @apiSuccessExample {json} pending, active or pass
 * {
 *    boxId: 1,
 *    testId: 1,
 *    status: 'active',
 *    error: null,
 *    timestamp: 1467167969775
 * }
 *
 * @apiSuccessExample {json} fail
 * {
 *    boxId: 1,
 *    testId: 1,
 *    status: 'fail',
 *    error:
 *    {
 *      stepId: 10,
 *      reason: '超时'
 *    },
 *    timestamp: 1467167969775
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
