
�
FrameClientMessage.protoKFMsgFrameDefineMessage.proto"@
MsgResultDisplay
result (Rresult
param (Rparam"A
MsgCommandReq
command (Rcommand
params (Rparams"[
MsgLoginReq
token (Rtoken
	accountid (R	accountid
version (Rversion"z
MsgLoginAck
playerid (Rplayerid/

playerdata (2.KFMsg.PBObjectR
playerdata

servertime (R
servertime"
MsgLogoutReq"#
MsgTellBeKick
type (Rtype"<
MsgSyncUpdateData'
pbdata (2.KFMsg.PBObjectRpbdata"9
MsgSyncAddData'
pbdata (2.KFMsg.PBObjectRpbdata"<
MsgSyncRemoveData'
pbdata (2.KFMsg.PBObjectRpbdata"@
MsgShowElement.
element (2.KFMsg.PBShowElementRelement"V
MsgRemoveDataReq
dataname (Rdataname
key (Rkey
count (Rcount"&
MsgQueryBasicReq
name (Rname";
MsgQueryBasicAck'
player (2.KFMsg.PBObjectRplayer"/
MsgQueryPlayerReq
playerid (Rplayerid"<
MsgQueryPlayerAck'
player (2.KFMsg.PBObjectRplayer"#
MsgSetNameReq
name (Rname" 
MsgSetSexReq
sex (Rsex" 
MsgCompoundReq
id (Rid"%
MsgAchieveRewardReq
id (Rid""
MsgTaskRewardReq
id (Rid":
MsgActivityRewardReq
type (Rtype
id (Rid"#
MsgUseItemReq
uuid (Ruuid"+
MsgSevenSignInRewardReq
day (Rday" 
MsgViewMailReq
id (Rid""
MsgDeleteMailReq
id (Rid"
MsgQueryMailReq""
MsgMailRewardReq
id (Rid"j
MsgBuyStoreReq
version (Rversion
buytype (Rbuytype
id (Rid
count (Rcount",
MsgQueryStoreReq
version (Rversion"@
MsgQueryStoreAck
version (Rversion
data (Rdata"+
MsgApplyPayOrderReq
payid (	Rpayid"A
MsgApplyPayOrderAck
payid (	Rpayid
order (	Rorder"U
MsgPayResultReq
payid (	Rpayid
order (	Rorder
result (Rresult"
MsgQueryPayReq"-
MsgQueryRankListReq
rankid (Rrankid"_
MsgQueryRankListAck
rankid (Rrankid0
	rankdatas (2.KFMsg.PBRankDatasR	rankdatas"3
MsgQueryFriendRankListReq
rankid (Rrankid"e
MsgQueryFriendRankListAck
rankid (Rrankid0
	rankdatas (2.KFMsg.PBRankDatasR	rankdatas"�
MsgAddRelationReq
dataname (Rdataname

playername (R
playername
playerid (Rplayerid
message (Rmessage"K
MsgDelRelationReq
dataname (Rdataname
playerid (Rplayerid"m
MsgReplyRelationInviteReq
dataname (Rdataname
playerid (Rplayerid
operate (Roperate"S
MsgSetRefuseRelationInviteReq
dataname (Rdataname
refuse (Rrefuse*�	
FrameClientProtocol
MSG_FRAME_CLIENT_BEGIN 
MSG_RESULT_DISPLAY
MSG_COMMAND_REQ
MSG_LOGIN_REQd
MSG_LOGIN_ACKe
MSG_LOGOUT_REQf
MSG_TELL_BE_KICKg
MSG_SYNC_UPDATE_DATA�
MSG_SYNC_ADD_DATA�
MSG_SYNC_REMOVE_DATA�
MSG_REMOVE_DATA_REQ�
MSG_QUERY_PLAYER_REQ�
MSG_QUERY_PLAYER_ACK�
MSG_QUERY_BASIC_REQ�
MSG_QUERY_BASIC_ACK�
MSG_SHOW_ELEMENT�
MSG_SET_NAME_REQ�
MSG_SET_SEX_REQ�
MSG_ACHIEVE_REWARD_REQ�
MSG_TASK_REWARD_REQ�
MSG_ACTIVITY_REWARD_REQ�
MSG_COMPOUND_REQ�
MSG_USE_ITEM_REQ� 
MSG_SEVEN_SIGNIN_REWARD_REQ�
MSG_VIEW_MAIL_REQ�
MSG_DELETE_MAIL_REQ�
MSG_QUERY_MAIL_REQ�
MSG_MAIL_REWARD_REQ�
MSG_BUY_STORE_REQ�
MSG_QUERY_STORE_REQ�
MSG_QUERY_STORE_ACK�
MSG_APPLY_PAY_ORDER_REQ�
MSG_APPLY_PAY_ORDER_ACK�
MSG_PAY_RESULT_REQ�
MSG_QUERY_PAY_REQ�
MSG_ADD_RELATION_REQ�
MSG_DEL_RELATION_REQ�"
MSG_REPLY_RELATION_INVITE_REQ�'
"MSG_SET_REFUSE_RELATION_INVITE_REQ�
MSG_QUERY_RANK_LIST_REQ�
MSG_QUERY_RANK_LIST_ACK�#
MSG_QUERY_FRIEND_RANK_LIST_REQ�#
MSG_QUERY_FRIEND_RANK_LIST_ACK�bproto3