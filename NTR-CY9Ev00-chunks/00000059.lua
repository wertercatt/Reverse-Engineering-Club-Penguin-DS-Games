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
  function L3_3()
    _util.DisableInput()
    _util.SwitchState("counter2give2", _util.GetSelf())
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_util.GetSelf())
    _util.SwitchState("talk", _util.GetSelf())
    _util.EnableInput()
    _util.AddInventoryItem(_id.Inventory_Cookie)
    _util.AddDialog(_text.M8_COFFEESHOP_BARISTAD_QUITRESPONSE1, _const.END_DIALOG, 6)
  end
  if L2_2 == 0 then
    if _util.GetVar("cleanCookies") == 2 then
      _util.AddLoopingConv(_text.M8_COFFEESHOP_BARISTA_GREET2)
      _util.AddLoopingOption(_text.M8_COFFEESHOP_BARISTAB_QUIT1, -1, _const.CHANGE_DIALOG, 4)
      _util.AddLoopingOption(_text.M8_COFFEESHOP_BARISTAB_QUIT2, -1, _const.CHANGE_DIALOG, 5)
    else
      _util.AddDialog(_text.M8_COFFEESHOP_BARISTA_GREET1, _const.CHANGE_DIALOG, 1)
    end
  elseif L2_2 == 1 then
    _util.AddLoopingConv(_text.M8_COFFEESHOP_BARISTA_GREET1_2)
    _util.AddLoopingOption(_text.M8_COFFEESHOP_BARISTAA_Q1, _text.M8_COFFEESHOP_BARISTAA_A1, _const.UPDATE_LOOP)
    _util.AddLoopingOption(_text.M8_COFFEESHOP_BARISTAA_Q2, -1, _const.CHANGE_DIALOG, 2)
    _util.AddLoopingOption(_text.M8_COFFEESHOP_BARISTAA_QUIT, -1, _const.END_DIALOG, 1)
  elseif L2_2 == 2 then
    _util.SetVar("cleanCookies", 1)
    _util.AddDialog(_text.M8_COFFEESHOP_BARISTAA_A2, _const.END_DIALOG, 0)
  elseif L2_2 == 3 then
    _util.AddDialog(_text.M8_COFFEESHOP_BARISTAA_QUITRESPONSE, _const.END_DIALOG, 0)
  elseif L2_2 == 4 then
    scriptPlay(L3_3)
  elseif L2_2 == 5 then
    _util.AddDialog(_text.M8_COFFEESHOP_BARISTAB_QUITRESPONSE2, _const.END_DIALOG, 8)
  elseif L2_2 == 6 then
    if _util.HasInventoryItem(_id.Inventory_Cookie) or _util.GetVar("puffleGotPaper") == 1 then
      _util.AddConversation(_text.M8_COFFEESHOP_BARISTA_GREET3, _text.M8_COFFEESHOP_BARISTAC_QUIT, -1, _const.CHANGE_DIALOG, 7)
    else
      _util.AddLoopingConv(_text.M8_COFFEESHOP_BARISTA_GREET4)
      _util.AddLoopingOption(_text.M8_COFFEESHOP_BARISTAD_QUIT1, -1, _const.CHANGE_DIALOG, 4)
      _util.AddLoopingOption(_text.M8_COFFEESHOP_BARISTAD_QUIT2, -1, _const.CHANGE_DIALOG, 9)
    end
  elseif L2_2 == 7 then
    _util.AddDialog(_text.M8_COFFEESHOP_BARISTAC_QUITRESPONSE, _const.END_DIALOG, 6)
  elseif L2_2 == 8 then
    _util.AddLoopingConv(_text.M8_COFFEESHOP_BARISTA_GREET4)
    _util.AddLoopingOption(_text.M8_COFFEESHOP_BARISTAD_QUIT1, -1, _const.CHANGE_DIALOG, 10)
    _util.AddLoopingOption(_text.M8_COFFEESHOP_BARISTAD_QUIT2, -1, _const.CHANGE_DIALOG, 9)
  elseif L2_2 == 9 then
    _util.AddDialog(_text.M8_COFFEESHOP_BARISTAD_QUITRESPONSE2, _const.END_DIALOG, 8)
  elseif L2_2 == 10 then
    scriptPlay(L3_3)
  end
end
