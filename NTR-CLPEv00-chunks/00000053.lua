if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M3C3_coffeeIntroComplete") == 0 then
    if _util.GetConversationCount() == 0 then
      _util.AddDialog(1896, _const.CHANGE_NPC, _id.M3C3_Barista, 100)
    elseif _util.GetConversationCount() == 200 then
      _util.SetCursorPos(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      _util.AddConversation(1898, 1899, -1, _const.CHANGE_DIALOG, 201)
    elseif _util.GetConversationCount() == 201 then
      _util.AddConversation(1900, 1901, -1, _const.CHANGE_DIALOG, 202)
    elseif _util.GetConversationCount() == 202 then
      _util.SetVar("M3C3_coffeeIntroComplete", 1)
      _util.AddConversation(1902, 1903, -1, _const.END_DIALOG, 0)
    end
  end
  if _util.GetVar("M3C3_coffeeIntroComplete") == 1 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(1904)
      _util.AddLoopingOption(1905, 1908, _const.UPDATE_LOOP)
      _util.AddLoopingOption(1906, 1909, _const.UPDATE_LOOP)
      _util.AddLoopingOption(1907, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(4778, _const.END_DIALOG, 0)
    end
  end
end
