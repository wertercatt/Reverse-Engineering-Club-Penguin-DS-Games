if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddNPCText(_text.C3_TM_HERBERT_1)
    _util.AddPlayerOption(_text.C3_TM_HERBERT_1A, _const.CHANGE_DIALOG, -1, 1)
    _util.AddPlayerOption(_text.C3_TM_HERBERT_1B, _const.CHANGE_DIALOG, -1, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddNPCText(_text.C3_TM_HERBERT_2, _const.CHANGE_DIALOG, -1, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddNPCText(_text.C3_TM_KLUTZY_1, _const.CHANGE_DIALOG, -1, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddNPCText(_text.C3_TM_HERBERT_3, _const.CHANGE_DIALOG, -1, 4)
  elseif _util.GetConversationCount() == 4 then
    _util.AddNPCText(_text.C3_TM_HERBERT_4, _const.CHANGE_DIALOG, -1, 5)
  elseif _util.GetConversationCount() == 5 then
    _util.AddNPCText(_text.C3_TM_HERBERT_5, _const.CHANGE_DIALOG, -1, 6)
  elseif _util.GetConversationCount() == 6 then
    _util.ActivateNpc(_id.C3_MountainTop_Herbert, 7)
  elseif _util.GetConversationCount() == 7 then
    _util.AddPlayerOption(_text.C3_TM_HERBERT_5A, _const.CHANGE_DIALOG, -1, 8)
  elseif _util.GetConversationCount() == 8 then
    _util.AddNPCText(_text.C3_TM_HERBERT_6, _const.CHANGE_DIALOG, -1, 9)
  elseif _util.GetConversationCount() == 9 then
    _util.AddNPCText(_text.C3_TM_HERBERT_7, _const.CHANGE_DIALOG, -1, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddNPCText(_text.C3_TM_HERBERT_8)
    _util.AddPlayerOption(_text.C3_TM_HERBERT_8A, _const.CHANGE_DIALOG, -1, 11)
    _util.AddPlayerOption(_text.C3_TM_HERBERT_8B, _const.CHANGE_DIALOG, -1, 12)
  elseif _util.GetConversationCount() == 11 then
    _util.AddNPCText(_text.C3_TM_HERBERT_9, _const.CHANGE_DIALOG, -1, 16)
  elseif _util.GetConversationCount() == 12 then
    _util.AddNPCText(_text.C3_TM_HERBERT_10)
    _util.AddPlayerOption(_text.C3_TM_HERBERT_10A, _const.CHANGE_DIALOG, -1, 13)
  elseif _util.GetConversationCount() == 13 then
    _util.AddNPCText(_text.C3_TM_HERBERT_11, _const.CHANGE_DIALOG, -1, 14)
  elseif _util.GetConversationCount() == 14 then
    _util.AddNPCText(_text.C3_TM_KLUTZY_2, _const.CHANGE_DIALOG, -1, 15)
  elseif _util.GetConversationCount() == 15 then
    _util.AddNPCText(_text.C3_TM_HERBERT_12, _const.CHANGE_DIALOG, -1, 16)
  elseif _util.GetConversationCount() == 16 then
    _util.AddNPCText(_text.C3_TM_HERBERT_13, _const.CHANGE_DIALOG, -1, 17)
  elseif _util.GetConversationCount() == 17 then
    _util.AddNPCText(_text.C3_TM_HERBERT_14, _const.CHANGE_DIALOG, -1, 18)
  elseif _util.GetConversationCount() == 18 then
    _util.SetVar("magnifyingOn", 1)
    function meltyCutscene()
      _util.StartCutscene(_const.ISLAND_MELT)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.ActivateNpc(_id.C3_MountainTop_Herbert, 19)
    end
    scriptPlay(meltyCutscene)
  elseif _util.GetConversationCount() == 19 then
    _util.AddNPCText(_text.C3_TM_HERBERT_15, _const.CHANGE_DIALOG, -1, 20)
  elseif _util.GetConversationCount() == 20 then
    _util.AddNPCText(_text.C3_TM_HERBERT_16, _const.CHANGE_NPC, _id.C3_MountainTop2_Dot, 1)
  end
end
