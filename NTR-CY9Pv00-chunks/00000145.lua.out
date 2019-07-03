if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    if _util.GetVar("M6_HerbIntro") == 0 then
      _util.AddConversation(_text.M6_PIZZASHOP_PIZZACHEF_GREET2, _text.M6_PIZZASHOP_PIZZACHEF_QUIT, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetVar("M6_HerbIntro") == 2 or _util.GetVar("M6_hasPizza") == 1 then
      _util.AddConversation(_text.M6_PIZZASHOP_PIZZACHEF_GREET3, _text.M6_PIZZASHOP_PIZZACHEF_QUIT, -1, _const.CHANGE_DIALOG, 1)
    else
      _util.AddLoopingConv(_text.M6_PIZZASHOP_PIZZACHEF_GREET)
      _util.AddLoopingOption(_text.M6_PIZZASHOP_PIZZACHEF_Q1, -1, _const.CHANGE_DIALOG, 2)
      _util.AddLoopingOption(_text.M6_PIZZASHOP_PIZZACHEF_Q2, -1, _const.CHANGE_DIALOG, 4)
      _util.AddLoopingOption(_text.M6_PIZZASHOP_PIZZACHEF_Q3, -1, _const.CHANGE_DIALOG, 6)
    end
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(_text.M6_PIZZASHOP_PIZZACHEF_QUITRESPONSE, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(_text.M6_PIZZASHOP_PIZZACHEF_A1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.SetConversationCount(0)
    _util.SetVar("M6_hasPizza", 1)
    _util.PopCamera()
    _util.AddInventoryItem(_id.M6_MeatPizza)
  elseif _util.GetConversationCount() == 4 then
    _util.AddDialog(_text.M6_PIZZASHOP_PIZZACHEF_A2, _const.CHANGE_DIALOG, 5)
  elseif _util.GetConversationCount() == 5 then
    _util.SetConversationCount(0)
    _util.SetVar("M6_hasPizza", 1)
    _util.PopCamera()
    _util.AddInventoryItem(_id.M6_CandyPizza)
  elseif _util.GetConversationCount() == 6 then
    _util.AddDialog(_text.M6_PIZZASHOP_PIZZACHEF_A3, _const.CHANGE_DIALOG, 7)
  elseif _util.GetConversationCount() == 7 then
    _util.SetConversationCount(0)
    _util.SetVar("M6_hasPizza", 1)
    _util.PopCamera()
    _util.AddInventoryItem(_id.M6_SeaweedPizza)
  end
end
