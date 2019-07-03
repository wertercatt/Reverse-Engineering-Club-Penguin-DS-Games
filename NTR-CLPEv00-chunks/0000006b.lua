if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M3C3_garysRoomIntroComplete") == 0 then
    if _util.GetConversationCount() == 0 then
      _util.AddConversation(1854, 1855, -1, _const.CHANGE_DIALOG, 1)
      _util.PlaySFX(70)
    elseif _util.GetConversationCount() == 1 then
      _util.AddConversation(1856, 1857, -1, _const.CHANGE_DIALOG, 2)
    elseif _util.GetConversationCount() == 2 then
      _util.AddConversation(1858, 1859, -1, _const.CHANGE_DIALOG, 3)
    elseif _util.GetConversationCount() == 3 then
      _util.AddConversation(1860, 1861, -1, _const.END_DIALOG, 0)
      _util.SetVar("M3C3_garysRoomIntroComplete", 1)
      _util.SetSpawn(1, _id.M3C3_CocoaMachine)
    end
  end
  if _util.GetVar("M3C3_garysRoomIntroComplete") == 1 then
    if _util.GetConversationCount() == 0 then
      _util.PlaySFX(70)
      _util.AddLoopingConv(1863)
      _util.AddLoopingOption(1864, 1867, _const.UPDATE_LOOP)
      _util.AddLoopingOption(1865, 1868, _const.UPDATE_LOOP)
      _util.AddLoopingOption(1866, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(4777, _const.END_DIALOG, 0)
    end
  end
end
