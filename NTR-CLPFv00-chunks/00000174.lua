if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("robostatus") == 0 then
    _util.AddLoopingConv(3068)
    _util.AddLoopingOption(3070, 3073, _const.UPDATE_LOOP)
    _util.AddLoopingOption(3071, 3074, _const.UPDATE_LOOP)
    _util.AddLoopingOption(3072, -1, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 0 then
    _util.AddConversation(3075, 3076, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(3078, _const.END_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(3078, _const.END_DIALOG, 2)
  end
end
