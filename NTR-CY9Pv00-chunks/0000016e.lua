if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 and _util.GetVar("LockedIn") == 1 and _util.GetVar("SearchForExit") == 0 then
    _util.AddNPCText(_text.M11_HQ3_JPG_4, _const.CHANGE_NPC, _id.M11_HQRookieEscape, 9)
  elseif _util.GetConversationCount() == 0 and _util.GetVar("LockedIn") == 1 and _util.GetVar("SearchForExit") == 1 then
    _util.AddNPCText(_text.M11_HQ3_JPG_4, _const.END_DIALOG, -1, 0)
  elseif _util.GetConversationCount() == 0 and _util.GetVar("StopBroadcast") == 1 then
    _util.AddNPCText(_text.M11_HQ2_JPG_LEAVE)
  end
end
