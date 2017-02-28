
/**
 * @api {get} / 各Model的状态信息
 * @apiVersion 0.2.0
 * 
 * @apiName configInfomation
 * @apiGroup Config
 * 
 * @apiSuccess {string} user-role tester: 公司测试员 | cAdmin: 公司管理员 | eaAdmin: 电控云管理员
 * @apiSuccess {string} box-status offline | idle | busy
 * @apiSuccess {string} test-result null（处于waiting/executing） | pass | fail
 * @apiSuccess {string} test-status waiting | executing | ended
 * @apiSuccess {string} step-status active | pass | fail
 * 
 */
