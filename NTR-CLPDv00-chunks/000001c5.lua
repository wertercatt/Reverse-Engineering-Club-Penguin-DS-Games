if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(3128)
    _util.AddLoopingOption(3130, 3134, _const.UPDATE_LOOP)
    _util.AddLoopingOption(3131, 3135, _const.UPDATE_LOOP)
    _util.AddLoopingOption(3132, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(3133, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(3122, _const.CHANGE_NPC, _id.M5C1_Rookie_SkiVillage, 10)
  elseif _util.GetConversationCount() == 11 then
    _util.SetConversationCount(0)
    _util.AddDialog(3124, _const.CHANGE_NPC, _id.M5C1_Rookie_SkiVillage, 11)
  end
end
