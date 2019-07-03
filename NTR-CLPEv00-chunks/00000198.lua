if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddConversation(459, 460, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddConversation(461, 462, -1, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddLoopingConv(463)
    _util.AddLoopingOption(464, -1, _const.CHANGE_DIALOG, 3)
    _util.AddLoopingOption(465, -1, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(466, _const.END_DIALOG, 2)
  elseif _util.GetConversationCount() == 3 then
    _util.SetVar("FPMission_Started", 0)
    _util.SetVar("FP_ITEM_SETUP", 0)
    _util.StartMission(13)
  end
end
