if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.AFTER_DIALOG)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.ChangeBaseAnim("NPC/SecretFur/PizzaChef/PizzaChef2")
    _util.AddLoopingConv(_text.M5_PIZZASHOP_PIZZACHEF_GREET)
    _util.AddLoopingOption(_text.M5_PIZZASHOP_PIZZACHEFA_Q1, -1, _const.CHANGE_DIALOG, 2)
    _util.AddLoopingOption(_text.M5_PIZZASHOP_PIZZACHEFA_Q2, -1, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(_text.M5_PIZZASHOP_PIZZACHEFA_Q3, -1, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(_text.M5_PIZZASHOP_PIZZACHEFA_A2, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(_text.M5_PIZZASHOP_PIZZACHEFA_A1_2B, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.ChangeBaseAnim("NPC/SecretFur/PizzaChef/PizzaChef")
    _util.AddDialog(_text.M5_PIZZASHOP_PIZZACHEFA_B1_2C, _const.CHANGE_DIALOG, 4)
  elseif _util.GetConversationCount() == 4 and _util.GetVar("takeSauces") == 0 then
    _util.SetVar("happeningsFound", 1)
    _util.AddLoopingConv(_text.M5_PIZZASHOP_PIZZACHEFA_C1)
    _util.AddLoopingOption(_text.M5_PIZZASHOP_PIZZACHEFB_Q1, -1, _const.CHANGE_DIALOG, 200)
    _util.AddLoopingOption(_text.M5_PIZZASHOP_PIZZACHEFB_Q2, -1, _const.CHANGE_DIALOG, 5)
    _util.AddLoopingOption(_text.M5_PIZZASHOP_PIZZACHEFB_Q3, -1, _const.CHANGE_DIALOG, 6)
  elseif _util.GetConversationCount() == 200 then
    _util.ChangeBaseAnim("NPC/SecretFur/PizzaChef/PizzaChefHappy")
    _util.AddLoopingConv(_text.M5_PIZZASHOP_PIZZACHEFB_A1)
    _util.AddLoopingOption(_text.M5_PIZZASHOP_PIZZACHEFB_Q2, -1, _const.CHANGE_DIALOG, 5)
    _util.AddLoopingOption(_text.M5_PIZZASHOP_PIZZACHEFB_Q3, -1, _const.CHANGE_DIALOG, 6)
  elseif _util.GetConversationCount() == 4 and _util.GetVar("takeSauces") == 1 then
    _util.SetVar("happeningsFound", 1)
    _util.AddLoopingConv(_text.M5_PIZZASHOP_PIZZACHEFA_C1)
    _util.AddLoopingOption(_text.M5_PIZZASHOP_PIZZACHEFB_Q1, _text.M5_PIZZASHOP_PIZZACHEFB_A1, _const.UPDATE_LOOP)
    _util.AddLoopingOption(_text.M5_PIZZASHOP_PIZZACHEFB_Q3, -1, _const.CHANGE_DIALOG, 6)
  elseif _util.GetConversationCount() == 5 then
    _util.SetVar("takeSauces", 1)
    _util.ChangeBaseAnim("NPC/SecretFur/PizzaChef/PizzaChefPoint")
    _util.AddDialog(_text.M5_PIZZASHOP_PIZZACHEFB_A2, _const.END_DIALOG, 7)
  elseif _util.GetConversationCount() == 6 then
    _util.AddDialog(_text.M5_PIZZASHOP_PIZZACHEFB_A3, _const.END_DIALOG, 7)
  elseif _util.GetConversationCount() == 7 then
    _util.ChangeBaseAnim("NPC/SecretFur/PizzaChef/PizzaChef2")
    if _util.GetVar("takeSauces") == 1 and _util.GetVar("takePizza") == 0 then
      _util.AddLoopingConv(_text.M5_PIZZASHOP_PIZZACHEF_GREET2)
      _util.AddLoopingOption(_text.M5_PIZZASHOP_PIZZACHEFC_Q2_2PIZZA, -1, _const.CHANGE_DIALOG, 10)
      _util.AddLoopingOption(_text.M5_PIZZASHOP_PIZZACHEFC_Q1, -1, _const.CHANGE_DIALOG, 8)
    elseif _util.GetVar("takeSauces") == 0 and _util.GetVar("happeningsFound") == 1 then
      _util.AddLoopingConv(_text.M5_PIZZASHOP_PIZZACHEF_GREET3)
      _util.AddLoopingOption(_text.M5_PIZZASHOP_PIZZACHEFD_Q1, -1, _const.CHANGE_DIALOG, 10)
      _util.AddLoopingOption(_text.M5_PIZZASHOP_PIZZACHEFD_Q2, -1, _const.CHANGE_DIALOG, 5)
    elseif _util.GetVar("takeSauces") == 0 then
      _util.AddLoopingConv(_text.M5_PIZZASHOP_PIZZACHEF_GREET3)
      _util.AddLoopingOption(_text.M5_PIZZASHOP_PIZZACHEFD_Q1, -1, _const.CHANGE_DIALOG, 10)
      _util.AddLoopingOption(_text.M5_PIZZASHOP_PIZZACHEFA_Q1, -1, _const.CHANGE_DIALOG, 2)
    elseif _util.GetVar("pizzaDelivered") == 0 then
      _util.AddLoopingConv(_text.M5_PIZZASHOP_PIZZACHEF_GREET4)
      _util.AddLoopingOption(_text.M5_PIZZASHOP_PIZZACHEFE_Q1, -1, _const.CHANGE_DIALOG, 9)
      _util.AddLoopingOption(_text.M5_PIZZASHOP_PIZZACHEFE_Q2, -1, _const.CHANGE_DIALOG, 8)
    elseif _util.GetVar("sauceClean") == 0 then
      _util.AddConversation(_text.M5_PIZZASHOP_PIZZACHEF_SAUCE1, _text.M5_PIZZASHOP_PIZZACHEF_SAUCE_Q1, -1, _const.CHANGE_DIALOG, 100)
    else
      _util.AddConversation(_text.M5_PIZZASHOP_PIZZACHEFG_GREET6, _text.M5_PIZZASHOP_PIZZACHEFG_Q1, -1, _const.CHANGE_DIALOG, 103)
    end
  elseif _util.GetConversationCount() == 8 then
    _util.AddDialog(_text.M5_PIZZASHOP_PIZZACHEFC_A1, _const.END_DIALOG, 7)
  elseif _util.GetConversationCount() == 9 then
    _util.AddDialog(_text.M5_PIZZASHOP_PIZZACHEFE_A1, _const.END_DIALOG, 7)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(_text.M5_PIZZASHOP_PIZZACHEF_PIZZA1, _const.CHANGE_DIALOG, 11)
  elseif _util.GetConversationCount() == 11 then
    _util.AddLoopingConv(_text.M5_PIZZASHOP_PIZZACHEF_PIZZA2)
    _util.AddLoopingOption(_text.M5_PIZZASHOP_PIZZACHEF_PIZZA_Q1, -1, _const.CHANGE_DIALOG, 12)
    _util.AddLoopingOption(_text.M5_PIZZASHOP_PIZZACHEF_PIZZA_Q2, -1, _const.CHANGE_DIALOG, 13)
  elseif _util.GetConversationCount() == 12 then
    _util.SetVar("takePizza", 1)
    _util.AddDialog(_text.M5_PIZZASHOP_PIZZACHEF_PIZZA_A1, _const.END_DIALOG, 7)
  elseif _util.GetConversationCount() == 13 then
    _util.AddDialog(_text.M5_PIZZASHOP_PIZZACHEF_PIZZA_A2, _const.END_DIALOG, 7)
  elseif _util.GetConversationCount() == 14 then
    _util.AddDialog(_text.M5_PIZZASHOP_PIZZACHEFF_A1, _const.END_DIALOG, 7)
  elseif _util.GetConversationCount() == 99 then
    _util.ChangeBaseAnim("NPC/SecretFur/PizzaChef/PizzaChef2")
    _util.AddConversation(_text.M5_PIZZASHOP_PIZZACHEF_SAUCE1, _text.M5_PIZZASHOP_PIZZACHEF_SAUCE_Q1, -1, _const.CHANGE_DIALOG, 100)
  elseif _util.GetConversationCount() == 100 then
    _util.AddDialog(_text.M5_PIZZASHOP_PIZZACHEF_SAUCE_A1, _const.END_DIALOG, 7)
  elseif _util.GetConversationCount() == 101 then
    _util.AddConversation(_text.M5_PIZZASHOP_PIZZACHEF_SAUCE2, _text.M5_PIZZASHOP_PIZZACHEF_SAUCE2_Q1, -1, _const.CHANGE_DIALOG, 102)
  elseif _util.GetConversationCount() == 102 then
    _util.AddDialog(_text.M5_PIZZASHOP_PIZZACHEF_SAUCE2_A1, _const.END_DIALOG, 7)
  elseif _util.GetConversationCount() == 103 then
    _util.AddDialog(_text.M5_PIZZASHOP_PIZZACHEFG_A1, _const.END_DIALOG, 7)
  end
end
if _util.GetReason() == _const.AFTER_DIALOG then
  _util.ChangeBaseAnim("NPC/SecretFur/PizzaChef/PizzaChef")
  _util.SwitchState("", _util.GetSelf())
end
