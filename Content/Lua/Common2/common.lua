print( _VERSION )

require "../common/class"
require "../common/table"

local CJson = require "../common/json"
_json = CJson.new()

local CUtility = require "../common/utility"
_utility = CUtility.new()

local CCoroutine = require "../common/coroutine"
_coroutine = CCoroutine.new()

local CMessage = require "../common/message"
_message = CMessage.new()

local CNetClient = require "../common/netclient"
_net_client = CNetClient.new()

CKernel = require "../common/kernel"

local CLog = require "../common/log"
_log = CLog.new()

local CProtobuf = require "../common/protobuf"

local CHttpClient = require "../common/httpclient"
_http_client = CHttpClient.new()

local CProtobuf = require "../common/protobuf"
_protobuf = CProtobuf.new()

local CTimer = require "../common/timer"
_timer = CTimer.new()

local CEvent = require "../common/event"
_event = CEvent.new()

local CFSM = require "../common/fsm/fsm"
_fsm = CFSM.new()


