local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetConversationCount
L2_2 = L2_2()
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.TOUCHED then
  if L2_2 == 0 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("wantPizza")
    if L3_3 == 1 then
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("gotPizza")
      if L3_3 == 0 then
        L3_3 = _util
        L3_3 = L3_3.AddLoopingConv
        L3_3(_text.M8_PIZZASHOP_PIZZACHEF_GREET)
        L3_3 = _util
        L3_3 = L3_3.AddLoopingOption
        L3_3(_text.M8_PIZZASHOP_PIZZACHEF_Q1, -1, _const.CHANGE_DIALOG, 1)
        L3_3 = _util
        L3_3 = L3_3.AddLoopingOption
        L3_3(_text.M8_PIZZASHOP_PIZZACHEF_QUIT, -1, _const.CHANGE_DIALOG, 3)
      end
    else
      L3_3 = _util
      L3_3 = L3_3.AddConversation
      L3_3(_text.M8_PIZZASHOP_PIZZACHEF_GREET, _text.M8_PIZZASHOP_PIZZACHEF_QUIT, -1, _const.CHANGE_DIALOG, 3)
    end
  elseif L2_2 == 1 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M8_PIZZASHOP_PIZZACHEF_A1, _const.CHANGE_DIALOG, 4)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.AddInventoryItem
    L3_3(_id.M8_PizzaBox)
    L3_3 = _util
    L3_3 = L3_3.SetConversationCount
    L3_3(0)
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("gotPizza", 1)
    L3_3 = _util
    L3_3 = L3_3.PopCamera
    L3_3()
    L3_3 = _util
    L3_3 = L3_3.DelItem
    L3_3(_id.M8_PizzaPickUp)
  elseif L2_2 == 3 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M8_PIZZASHOP_PIZZACHEF_QUITRESPONSE, _const.END_DIALOG, 0)
  elseif L2_2 == 4 then
    function L3_3()
      _util.DisableInput()
      _util.SwitchState("reach")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.AddItem(_id.M8_PizzaPickUp)
      repeat
        scriptWait()
      until 30 - 1 == 0
      _util.SwitchState("")
      _util.EnableInput()
      _util.ActivateNpc(_util.GetSelf(), 2)
    end
    scriptPlay(L3_3)
  end
end
