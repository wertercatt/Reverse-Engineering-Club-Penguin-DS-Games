if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(2251)
    _util.AddLoopingOption(2252, 2255, _const.UPDATE_LOOP)
    _util.AddLoopingOption(2253, 2256, _const.UPDATE_LOOP)
    _util.AddLoopingOption(2254, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(2257, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 100 then
    _util.AddDialog(2241, _const.CHANGE_NPC, _id.M4C1_Dot_NightClub, 1)
  elseif _util.GetConversationCount() == 200 then
    _util.AddDialog(2243, _const.CHANGE_NPC, _id.M4C1_Dot_NightClub, 2)
  elseif _util.GetConversationCount() == 300 then
    _util.SetConversationCount(0)
    _util.AddDialog(2245, _const.CHANGE_NPC, _id.M4C1_Dot_NightClub, 3)
  end
end
