if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("robostatus") > 2 then
    if _util.GetConversationCount() == 0 then
      _util.AddConversation(3303, 3305, -1, _const.CHANGE_DIALOG, 100)
    elseif _util.GetConversationCount() == 100 then
      _util.AddDialog(3306, _const.END_DIALOG, 2)
    elseif _util.GetConversationCount() == 2 then
      _util.AddConversation(3308, 3310, -1, _const.CHANGE_DIALOG, 3)
    elseif _util.GetConversationCount() == 3 then
      _util.AddDialog(3311, _const.END_DIALOG, 2)
    end
  end
  if _util.GetVar("robostatus") < 3 then
    if _util.GetConversationCount() == 0 then
      _util.PlaySFX(171)
      _util.AddLoopingConv(3296)
      _util.AddLoopingOption(3298, 3301, _const.UPDATE_LOOP)
      _util.AddLoopingOption(3299, 3302, _const.UPDATE_LOOP)
      _util.AddLoopingOption(3300, -1, _const.END_DIALOG, 0)
    elseif _util.GetConversationCount() == 10 then
      _util.AddDialog(3283, _const.CHANGE_NPC, _id.M5C1_Gary_SkiVillage, 11)
      _util.PlaySFX(171)
    elseif _util.GetConversationCount() == 11 then
      _util.AddDialog(3285, _const.END_DIALOG, 0)
    end
  end
end
