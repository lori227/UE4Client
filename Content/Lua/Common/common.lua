print( _VERSION )

require "../Common/class"
require "../Common/table"


_define = require "../Common/define"

local CJson = require "../Common/json"
_json = CJson.new()

local CUtility = require "../Common/utility"
_utility = CUtility.new()

local CCoroutine = require "../Common/coroutine"
_coroutine = CCoroutine.new()

local CMessage = require "../Common/message"
_message = CMessage.new()

local CNetClient = require "../Common/netclient"
_net_client = CNetClient.new()

CKernel = require "../Common/kernel"

local CLog = require "../Common/log"
_log = CLog.new()

local CProtobuf = require "../Common/protobuf"

local CHttpClient = require "../Common/httpclient"
_http_client = CHttpClient.new()

local CProtobuf = require "../Common/protobuf"
_protobuf = CProtobuf.new()

local CTimer = require "../Common/timer"
_timer = CTimer.new()


