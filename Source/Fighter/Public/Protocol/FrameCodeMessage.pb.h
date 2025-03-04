// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: FrameCodeMessage.proto

#ifndef PROTOBUF_INCLUDED_FrameCodeMessage_2eproto
#define PROTOBUF_INCLUDED_FrameCodeMessage_2eproto

#ifdef _MSC_VER
	#pragma warning(push)
	#pragma warning(disable : 4946)
#endif

#include <string>

#include <google/protobuf/stubs/common.h>

#if GOOGLE_PROTOBUF_VERSION < 3006001
#error This file was generated by a newer version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please update
#error your headers.
#endif
#if 3006001 < GOOGLE_PROTOBUF_MIN_PROTOC_VERSION
#error This file was generated by an older version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please
#error regenerate this file with a newer version of protoc.
#endif

#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/arena.h>
#include <google/protobuf/arenastring.h>
#include <google/protobuf/generated_message_table_driven.h>
#include <google/protobuf/generated_message_util.h>
#include <google/protobuf/inlined_string_field.h>
#include <google/protobuf/metadata.h>
#include <google/protobuf/repeated_field.h>  // IWYU pragma: export
#include <google/protobuf/extension_set.h>  // IWYU pragma: export
#include <google/protobuf/generated_enum_reflection.h>
// @@protoc_insertion_point(includes)
#define PROTOBUF_INTERNAL_EXPORT_protobuf_FrameCodeMessage_2eproto LIBPROTOC_EXPORT

namespace protobuf_FrameCodeMessage_2eproto {
// Internal implementation detail -- do not use these members.
struct LIBPROTOC_EXPORT TableStruct {
  static const ::google::protobuf::internal::ParseTableField entries[];
  static const ::google::protobuf::internal::AuxillaryParseTableField aux[];
  static const ::google::protobuf::internal::ParseTable schema[1];
  static const ::google::protobuf::internal::FieldMetadata field_metadata[];
  static const ::google::protobuf::internal::SerializationTable serialization_table[];
  static const ::google::protobuf::uint32 offsets[];
};
void LIBPROTOC_EXPORT AddDescriptors();
}  // namespace protobuf_FrameCodeMessage_2eproto
namespace KFMsg {
}  // namespace KFMsg
namespace KFMsg {

enum FrameCodeEnum {
  Error = 0,
  Ok = 1,
  HttpDataError = 10000,
  AuthDatabaseBusy = 10001,
  AuthServerBusy = 10002,
  ZoneServerBusy = 10003,
  ZoneDatabaseBusy = 10004,
  NameDatabaseBusy = 10005,
  DataServerBusy = 10006,
  MailServerBusy = 10007,
  RankServerBusy = 10008,
  PublicDatabaseBusy = 10009,
  RelationServerBusy = 10010,
  MatchServerBusy = 10011,
  LoginDatabaseBusy = 10012,
  PublicServerBusy = 10013,
  AccountIsEmpty = 11001,
  ActivationAccount = 11002,
  InvalidActivationCode = 11003,
  ActivationCodeError = 11004,
  LoginTokenError = 11005,
  BanForbidLogin = 11006,
  ChannelNotSupport = 11007,
  ChannelNotOpen = 11008,
  ChannelError = 11009,
  WeiXinError = 11010,
  WeiXinUserError = 11011,
  WeiXinTokenError = 11012,
  WeiXinCodeError = 11013,
  WeiXinTokenTimeout = 11014,
  SteamError = 11015,
  SteamDataError = 11016,
  SteamAuthError = 11017,
  VersionNotCompatibility = 12001,
  LoginIsClose = 12002,
  LoginNoLoginServer = 12003,
  LoginSystemBusy = 12004,
  LoginWorldSystemBusy = 12005,
  LoginNoGameServer = 12006,
  LoginGameServerBusy = 12007,
  LoginBindPlayerError = 12008,
  LoginLoadDataFailed = 12009,
  LoginAlreadyOnline = 12010,
  QueryPlayerFailed = 12101,
  NameAlreadyExist = 12102,
  NameSetOk = 12103,
  NameLengthError = 12104,
  NameFilterError = 12105,
  NameEmpty = 12106,
  NameAlreadySet = 12107,
  SexSetOK = 12108,
  DataNotEnough = 12109,
  DataIsFull = 12110,
  AchieveCanNotFind = 12200,
  AchieveCanNotFindData = 12201,
  AchieveNotDone = 12202,
  AchieveAlreadyReceived = 12203,
  AchieveReceiveOk = 12204,
  TaskCanNotFind = 12300,
  TaskCanNotFindData = 12301,
  TaskNotDone = 12302,
  TaskAlreadyReceived = 12303,
  TaskRewardOk = 12304,
  ActivityCanNotFind = 12400,
  ActivityCanNotFindData = 12401,
  ActivityAlreadyReceived = 12402,
  ActivityNotDone = 12403,
  ActivityRewardOk = 12404,
  CompoundNotExist = 12500,
  CompoundOk = 12501,
  ItemCanNotFind = 12600,
  ItemCanNotFindData = 12601,
  ItemCanNotUse = 12602,
  SignInNotDay = 12700,
  SignInCanNotFind = 12701,
  SignInRewardAlready = 12702,
  SignInRewardOk = 12703,
  MailNotExist = 12800,
  MailTimeOut = 12801,
  MailDeleteFailed = 12802,
  MailAlreadyReceived = 12803,
  MailNotHaveReward = 12804,
  StoreNotFind = 12900,
  StoreBuyCountError = 12901,
  StoreOutOfLimitOwm = 12902,
  StoreOutOfLimits = 12903,
  StoreLackCost = 12904,
  StoreBuyTypeError = 12905,
  StoreBuyOK = 12906,
  PayIdError = 13000,
  PayDataError = 13001,
  RankNotExist = 13100,
  QueryBasicNotExist = 13200,
  MessageFilterError = 13300,
  RelationAlready = 13301,
  RelationSelfLimit = 13302,
  RelationInviteReq = 13303,
  RelationRefuseYourInvite = 13304,
  RelationAddOk = 13305,
  RelationNotExist = 13306,
  RelationDelOk = 13307,
  RelationRefuseInvite = 13308,
  RelationTargetLimit = 13309,
  RelationInviteAlready = 13310,
  RelationInviteLimit = 13311,
  RelationInviteOk = 13312,
  RelationInviteNotExist = 13313,
  RelationSettingError = 13314,
  RelationDataError = 13315,
  FriendLinessAdd = 13316,
  FrameCodeEnum_INT_MIN_SENTINEL_DO_NOT_USE_ = ::google::protobuf::kint32min,
  FrameCodeEnum_INT_MAX_SENTINEL_DO_NOT_USE_ = ::google::protobuf::kint32max
};
LIBPROTOC_EXPORT bool FrameCodeEnum_IsValid(int value);
const FrameCodeEnum FrameCodeEnum_MIN = Error;
const FrameCodeEnum FrameCodeEnum_MAX = FriendLinessAdd;
const int FrameCodeEnum_ARRAYSIZE = FrameCodeEnum_MAX + 1;

LIBPROTOC_EXPORT const ::google::protobuf::EnumDescriptor* FrameCodeEnum_descriptor();
inline const ::std::string& FrameCodeEnum_Name(FrameCodeEnum value) {
  return ::google::protobuf::internal::NameOfEnum(
    FrameCodeEnum_descriptor(), value);
}
inline bool FrameCodeEnum_Parse(
    const ::std::string& name, FrameCodeEnum* value) {
  return ::google::protobuf::internal::ParseNamedEnum<FrameCodeEnum>(
    FrameCodeEnum_descriptor(), name, value);
}
// ===================================================================


// ===================================================================


// ===================================================================

#ifdef __GNUC__
  #pragma GCC diagnostic push
  #pragma GCC diagnostic ignored "-Wstrict-aliasing"
#endif  // __GNUC__
#ifdef __GNUC__
  #pragma GCC diagnostic pop
#endif  // __GNUC__

// @@protoc_insertion_point(namespace_scope)

}  // namespace KFMsg

namespace google {
namespace protobuf {

template <> struct is_proto_enum< ::KFMsg::FrameCodeEnum> : ::std::true_type {};
template <>
inline const EnumDescriptor* GetEnumDescriptor< ::KFMsg::FrameCodeEnum>() {
  return ::KFMsg::FrameCodeEnum_descriptor();
}

}  // namespace protobuf
}  // namespace google

// @@protoc_insertion_point(global_scope)


#ifdef _MSC_VER
	#pragma warning(  pop  )
#endif
#endif  // PROTOBUF_INCLUDED_FrameCodeMessage_2eproto
