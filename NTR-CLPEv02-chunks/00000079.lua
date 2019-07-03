if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(315)
    _util.AddLoopingOption(317, 319, _const.UPDATE_LOOP)
    _util.AddLoopingOption(318, 320, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(321, -1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 1 then
    _util.AddConversation(320, 323, -1, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddConversation(324, -1, -1, _const.END_DIALOG, 0)
    _util.SetExitLocked(_id.Doors_Sports2HQ, false)
  elseif _util.GetConversationCount() == 3 then
    _util.AddConversation(322, -1, -1, _const.END_DIALOG, 0)
  end
end
