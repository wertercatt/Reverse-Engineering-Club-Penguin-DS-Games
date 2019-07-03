if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M1C2_noYes") == 1 then
    if _util.GetConversationCount() == 0 then
      _util.AddConversation(216, 218, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddLoopingConv(219)
      _util.AddLoopingOption(220, 223, _const.CHANGE_DIALOG, 2)
      _util.AddLoopingOption(221, -1, _const.CHANGE_DIALOG, 3)
    elseif _util.GetConversationCount() == 2 then
      _util.SetVar("FPMission_Started", 0)
      _util.SetVar("FP_ITEM_SETUP", 0)
      _util.StartMission(12)
    elseif _util.GetConversationCount() == 3 then
      _util.AddConversation(222, -1, -1, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C2_noYes") == 0 then
    if _util.GetConversationCount() == 0 then
      _util.AddConversation(224, 226, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddLoopingConv(227)
      _util.AddLoopingOption(228, 231, _const.START_MISSION, 12)
      _util.AddLoopingOption(229, -1, _const.CHANGE_DIALOG, 3)
    elseif _util.GetConversationCount() == 3 then
      _util.AddConversation(230, -1, -1, _const.END_DIALOG, 0)
    end
  end
end
