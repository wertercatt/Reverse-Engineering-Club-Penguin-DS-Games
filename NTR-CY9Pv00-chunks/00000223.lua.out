if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddDialog(_text.M2_VR_GARY_0, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.SetVar("Talked_VR_GARY", 1)
    _util.AddDialog(_text.M2_VR_GARY_1)
    _util.AddPlayerOption(_text.M2_VR_GARY_1A, _const.CHANGE_DIALOG, -1, 15)
    _util.AddPlayerOption(_text.M2_VR_GARY_1B, _const.CHANGE_DIALOG, -1, 15)
  elseif _util.GetConversationCount() == 15 then
    _util.AddDialog(_text.M2_VR_GARY_2, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(_text.M2_VR_GARY_3)
    _util.AddPlayerOption(_text.M2_VR_GARY_3A, _const.CHANGE_DIALOG, -1, 3)
    _util.AddPlayerOption(_text.M2_VR_GARY_3B, _const.CHANGE_DIALOG, -1, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(_text.M2_VR_GARY_4, _const.CHANGE_DIALOG, 4)
  elseif _util.GetConversationCount() == 4 then
    _util.AddDialog(_text.M2_VR_GARY_5, _const.CHANGE_DIALOG, 5)
  elseif _util.GetConversationCount() == 5 then
    _util.AddDialog(_text.M2_VR_GARY_6, _const.CHANGE_DIALOG, 6)
  elseif _util.GetConversationCount() == 6 then
    _util.AddObjective(_text.M5_VROBJ1)
    _util.SetObjective(_text.M5_VROBJ1)
    _util.AddDialog(_text.M2_VR_GARY_7, _const.END_DIALOG, 6)
  elseif _util.GetConversationCount() == 7 then
    _util.AddDialog(_text.M2_VR_GARY_8)
    _util.AddPlayerOption(_text.M2_VR_GARY_8A, _const.CHANGE_DIALOG, 8)
    _util.AddPlayerOption(_text.M2_VR_GARY_8B, _const.CHANGE_DIALOG, 8)
  elseif _util.GetConversationCount() == 8 then
    _util.ChangeBaseAnim("NPC/SecretFur/Gary/GarySnake")
    _util.AddDialog(_text.M2_VR_GARY_9, _const.CHANGE_DIALOG, 9)
  elseif _util.GetConversationCount() == 9 then
    _util.AddDialog(_text.M2_VR_GARY_10, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(_text.M2_VR_GARY_11)
    _util.ChangeBaseAnim("NPC/M11/Gary/GaryHScreen")
    _util.AddPlayerOption(_text.M2_VR_GARY_11A, _const.CHANGE_DIALOG, 11)
    _util.AddPlayerOption(_text.M2_VR_GARY_11B, _const.CHANGE_DIALOG, 14)
    _util.AddPlayerOption(_text.M2_VR_GARY_11C, _const.END_DIALOG, 10)
  elseif _util.GetConversationCount() == 11 then
    _util.AddDialog(_text.M2_VR_GARY_4, _const.CHANGE_DIALOG, 12)
  elseif _util.GetConversationCount() == 12 then
    _util.AddDialog(_text.M2_VR_GARY_5, _const.CHANGE_DIALOG, 13)
  elseif _util.GetConversationCount() == 13 then
    _util.AddDialog(_text.M2_VR_GARY_6, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 14 then
    _util.AddDialog(_text.M2_VR_GARY_2, _const.CHANGE_DIALOG, 10)
  end
end
