if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMMUNICATOR)
  _util.AddInterest(_const.AFTER_DIALOG)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.SetVar("C4_SkiVillage_JPG_Had_Conv_Part", 1)
    _util.SetVar("C4_SkiJPGFound", 1)
    _util.AddNPCText(_text.C4_SV_JPG_3, _const.CHANGE_DIALOG, -1, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddNPCText(_text.C4_SV_JPG_4)
    _util.AddPlayerOption(_text.C4_SV_JPG_4A, _const.CHANGE_DIALOG, -1, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddNPCText(_text.C4_SV_JPG_5, _const.END_DIALOG, -1, 2)
  elseif _util.GetConversationCount() == 3 then
    _util.SetVar("C4_SkiVillage_JPG_Had_Conv_Part", 2)
    _util.SetVar("C4_SkiJPGFound", 1)
    _util.AddNPCText(_text.C4_SV_JPG_6)
    _util.AddPlayerOption(_text.C4_SV_JPG_6A, _const.CHANGE_DIALOG, -1, 4)
    _util.AddPlayerOption(_text.C4_SV_JPG_6B, _const.CHANGE_DIALOG, -1, 4)
  elseif _util.GetConversationCount() == 4 then
    _util.AddNPCText(_text.C4_SV_JPG_7)
    _util.AddPlayerOption(_text.C4_SV_JPG_7A, _const.CHANGE_DIALOG, -1, 5)
    _util.AddPlayerOption(_text.C4_SV_JPG_7B, _const.CHANGE_DIALOG, -1, 5)
  elseif _util.GetConversationCount() == 5 then
    _util.AddNPCText(_text.C4_SV_JPG_8, _const.CHANGE_DIALOG, -1, 6)
  elseif _util.GetConversationCount() == 6 then
    _util.AddNPCText(_text.C4_SV_JPG_9)
    _util.AddPlayerOption(_text.C4_SV_JPG_9A, _const.CHANGE_DIALOG, -1, 7)
    _util.AddPlayerOption(_text.C4_SV_JPG_9B, _const.CHANGE_DIALOG, -1, 7)
  elseif _util.GetConversationCount() == 7 then
    _util.AddNPCText(_text.C4_SV_JPG_10)
    _util.AddPlayerOption(_text.C4_SV_JPG_10A, _const.CHANGE_DIALOG, -1, 8)
    _util.AddPlayerOption(_text.C4_SV_JPG_10B, _const.CHANGE_DIALOG, -1, 8)
  elseif _util.GetConversationCount() == 8 then
    _util.AddNPCText(_text.C4_SV_JPG_11, _const.CHANGE_DIALOG, -1, 9)
  elseif _util.GetConversationCount() == 9 then
    _util.AddNPCText(_text.C4_SV_JPG_12, _const.END_DIALOG, -1, 9)
  elseif _util.GetConversationCount() == 10 then
    _util.SetVar("C4_SkiJPGFound", 1)
    _util.AddNPCText(_text.C4_SV_JPG_13, _const.CHANGE_NPC, _id.C4_SkiVillage_HerbTrapped, 35)
  elseif _util.GetConversationCount() == 11 then
    _util.AddNPCText(_text.C4_SV_JPG_14)
    _util.AddPlayerOption(_text.C4_SV_JPG_14A, _const.CHANGE_NPC, _id.C4_SkiVillage_HerbTrapped, 3601)
  elseif _util.GetConversationCount() == 12 then
    _util.AddNPCText(_text.C4_SV_JPG_15, _const.END_DIALOG, -1, 12)
  elseif _util.GetConversationCount() == 13 then
    _util.PopCamera(_id.C4_SkiVillage_Herb)
    _util.AddNPCText(_text.C4_SV_JPG_16, _const.CHANGE_NPC, _id.C4_SkiVillage_Herb, 39)
  elseif _util.GetConversationCount() == 40 then
    _util.AddNPCText(_text.C4_SV_JPG_7)
    _util.AddPlayerOption(_text.C4_SV_JPG_7A, _const.CHANGE_DIALOG, -1, 50)
    _util.AddPlayerOption(_text.C4_SV_JPG_7B, _const.CHANGE_DIALOG, -1, 50)
  elseif _util.GetConversationCount() == 50 then
    _util.AddNPCText(_text.C4_SV_JPG_8, _const.CHANGE_DIALOG, -1, 60)
  elseif _util.GetConversationCount() == 60 then
    _util.AddNPCText(_text.C4_SV_JPG_9)
    _util.AddPlayerOption(_text.C4_SV_JPG_9A, _const.CHANGE_DIALOG, -1, 70)
    _util.AddPlayerOption(_text.C4_SV_JPG_9B, _const.CHANGE_DIALOG, -1, 70)
  elseif _util.GetConversationCount() == 70 then
    _util.SetVar("C4_SkiVillage_JPG_Had_Conv_Part", 2)
    _util.AddNPCText(_text.C4_SV_JPG_10)
    _util.AddPlayerOption(_text.C4_SV_JPG_10A, _const.CHANGE_DIALOG, -1, 80)
    _util.AddPlayerOption(_text.C4_SV_JPG_10B, _const.CHANGE_DIALOG, -1, 80)
  elseif _util.GetConversationCount() == 80 then
    _util.AddNPCText(_text.C4_SV_JPG_11, _const.CHANGE_DIALOG, -1, 90)
  elseif _util.GetConversationCount() == 90 then
    _util.AddNPCText(_text.C4_SV_JPG_12, _const.CHANGE_NPC, _id.C4_SkiVillage_HerbTrapped, 300)
  end
end
if _util.GetReason() == _const.COMMUNICATOR then
  if _util.GetComCount() == 0 then
    _util.AddNPCTextComm(_text.C4_SV_JPG_1)
    _util.AddPlayerOptionComm(_text.C4_SV_JPG_1A, _const.CHANGE_DIALOG, -1, 1)
  elseif _util.GetComCount() == 1 then
    _util.AddNPCTextComm(_text.C4_SV_JPG_2, _const.END_DIALOG, -1, 0)
  end
end
if _util.GetReason() == _const.AFTER_DIALOG and _util.GetConversationCount() == 9 and _util.GetVar("C4_Gary_SkiCall") == 0 then
  _util.SetVar("C4_Gary_SkiCall", 1)
  _util.SetConversationCount(28, _id.C4_SkiVillage_HerbTrapped)
end
