if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M3C3_coffeeIntroComplete") == 0 then
    if _util.GetConversationCount() == 0 then
      _util.AddDialog(1860, _const.CHANGE_NPC, _id.M3C3_Barista, 100)
    elseif _util.GetConversationCount() == 200 then
      _util.SetCursorPos(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      _util.AddConversation(1862, 1863, -1, _const.CHANGE_DIALOG, 201)
    elseif _util.GetConversationCount() == 201 then
      _util.AddConversation(1864, 1865, -1, _const.CHANGE_DIALOG, 202)
    elseif _util.GetConversationCount() == 202 then
      _util.SetVar("M3C3_coffeeIntroComplete", 1)
      _util.AddConversation(1866, 1867, -1, _const.END_DIALOG, 0)
    end
  end
  if _util.GetVar("M3C3_coffeeIntroComplete") == 1 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(1868)
      _util.AddLoopingOption(1869, 1872, _const.UPDATE_LOOP)
      _util.AddLoopingOption(1870, 1873, _const.UPDATE_LOOP)
      _util.AddLoopingOption(1871, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(4470, _const.END_DIALOG, 0)
    end
  end
end
