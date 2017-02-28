/**
 * @api {post} Socket.emit('join-room',boxId) 添加测试盒到通信房间
 * @apiVersion 0.2.0
 *
 * @apiName join-room
 * @apiDescription 以测试盒id作为标识符，将测试盒添加到对应的通信房间中。
 * @apiGroup Tester Socket
 *
 * @apiParam {String} boxId 测试盒id
 */

/**
 * @api {post} Socket.emit('leave-room',boxId) 从通信房间移除测试盒
 * @apiVersion 0.2.0
 *
 * @apiName leave-room
 * @apiDescription 以测试盒id作为标识符，退出该测试盒的通信信道。
 * @apiGroup Tester Socket
 *
 * @apiParam {String} boxId 测试盒id
 */

/**
 * @api {post} Socket.emit('pin-change',data) 发送测试的引脚数据
 * @apiVersion 0.2.0
 *
 * @apiName pin-change
 * @apiDescription 当测试盒引脚信息变化，发送数据给服务器.
 * @apiGroup Tester Socket
 *
 * @apiParam {Object} data 引脚数据
 * @apiParamExample {json} data
 * {
 *   pin: 'DI2',
 *   value: true,
 *   timestamp: 1467167969775
 * }
 */

/**
 * @api {post} Socket.emit('step-change',data) 发送测试的步骤数据
 * @apiVersion 0.2.0
 *
 * @apiName step-change
 * @apiDescription 当测试步骤的状态发生改变，发送数据给服务器.
 * @apiGroup Tester Socket
 *
 * @apiParam {Object} data 测试步骤的状态
 * @apiParamExample {json} data
 * {
 *   stepId: 2,
 *   status: 'active',
 *   timestamp: 1467167969775
 * }
 *
 */

/**
 * @api {post} Socket.emit('test-change',data) 发送测试的状态数据
 * @apiVersion 0.2.0
 *
 * @apiName test-change
 * @apiDescription 当测试的状态发生改变，发送数据给服务器.
 * @apiGroup Tester Socket
 *
 * @apiParam {Object} data 测试的状态
 * @apiParamExample {json} pending, active or pass
 * { 
 *   status: 'active',
 *   error: null,
 *   timestamp: 1467167969775
 * }
 *
 * @apiParamExample {json} fail
 * { 
 *   status: 'fail',
 *   error:
 *   {
 *     stepId: 10,
 *     reason: '超时'
 *   },
 *   timestamp: 1467167969775
 * }
 */

/**
 * @api {get} Socket.on('start-test',fn) 测试开始
 * @apiVersion 0.2.0
 *
 * @apiName start-test
 * @apiDescription 当服务器下发开始测试的通知，获取测试脚本并开始。
 * @apiGroup Tester Socket
 *
 * @apiParam {Object} scriptUrl 测试脚本的URL
 * @apiExample 例子
 * Socket.on('start-test', function(scriptUrl) {
 *   // 下载测试脚本，再动态获取
 * })
 */

/**
 * @api {get} Socket.on('stop-test',fn) 测试终止
 * @apiVersion 0.2.0
 *
 * @apiName stop-test
 * @apiDescription 当服务器下发终止测试的通知，测试盒终止当前测试
 * @apiGroup Tester Socket
 *
 * @apiExample 例子
 * Socket.on('stop-test', function() {
 *   // 终止当前测试
 * })
 */
