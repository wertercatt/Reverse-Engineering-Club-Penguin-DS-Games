if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.AFTER_DIALOG)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddNPCText(_text.C3_TM_JPG_8)
    _util.AddPlayerOption(_text.C3_TM_JPG_8A, _const.CHANGE_NPC, _id.C3_MountainTop_Herbert, 0)
    _util.AddPlayerOption(_text.C3_TM_JPG_8B, _const.CHANGE_NPC, _id.C3_MountainTop_Herbert, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddNPCText(_text.C3_TM_JPG_9, _const.END_DIALOG, -1, 50)
    _util.SetConversationCount(50, _id.C3_MountainTop2_Dot)
    _util.SetConversationCount(50, _id.C3_MountainTop2_Rookie)
    _util.SetVar("lensTooStrong", 1)
    _util.SetVar("magnifyingOn", 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddNPCText(_text.C3_TM_JPG_10, _const.CHANGE_NPC, _id.C3_MountainTop_Rookie, 2)
  elseif _util.GetConversationCount() == 3 then
    _util.AddNPCText(_text.C3_TM_JPG_11, _const.CHANGE_NPC, _id.C3_MountainTop_Rookie, 4)
  elseif _util.GetConversationCount() == 50 then
    _util.AddNPCText(_text.C3_TM_JPG_50, _const.END_DIALOG, -1, 50)
  end
end
if _util.GetReason() == _const.AFTER_DIALOG and _util.GetVar("lensTooStrong") == 1 then
  _util.SetupComNpc(_const.COM_GARY, _id.C3_CR_Gary, 0)
  _util.LaunchCommunicator()
  _util.SetVar("lensTooStrong", 2)
end
