if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.AFTER_DIALOG)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTA_GREET1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddLoopingConv(_text.M5_COFFEESHOP_BARISTA_GREET2)
    _util.AddLoopingOption(_text.M5_COFFEESHOP_BARISTAA_Q1_2C, -1, _const.CHANGE_DIALOG, 6)
    _util.AddLoopingOption(_text.M5_COFFEESHOP_BARISTAA_Q2, -1, _const.CHANGE_DIALOG, 2)
    _util.AddLoopingOption(_text.M5_COFFEESHOP_BARISTAA_Q3, -1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTAA_A2, _const.END_DIALOG, 1)
  elseif _util.GetConversationCount() == 3 then
    _util.ChangeBaseAnim("NPC/SecretFur/Barista/BaristaPoint")
    _util.SwitchState("talk", _util.GetSelf())
    if _util.GetVar("chocolateFilled") == 1 then
      _util.AddLoopingConv(_text.M5_COFFEESHOP_SAUCE)
    else
      _util.AddLoopingConv(_text.M5_COFFEESHOP_BARISTAA_A3_2B)
    end
    _util.AddLoopingOption(_text.M5_COFFEESHOP_BARISTAB_Q2, -1, _const.CHANGE_DIALOG, 4)
    _util.AddLoopingOption(_text.M5_COFFEESHOP_BARISTAB_Q1_2C, -1, _const.CHANGE_DIALOG, 6)
    _util.AddLoopingOption(_text.M5_COFFEESHOP_BARISTAB_Q3, -1, _const.CHANGE_DIALOG, 5)
  elseif _util.GetConversationCount() == 4 then
    _util.SetVar("canFix", 1)
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTAB_A2, _const.END_DIALOG, 15)
  elseif _util.GetConversationCount() == 5 then
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTAB_A3, _const.END_DIALOG, 15)
  elseif _util.GetConversationCount() == 6 then
    _util.SetVar("happeningsFound", 1)
    _util.ChangeBaseAnim("NPC/SecretFur/Barista/BaristaScared")
    _util.SwitchState("talk", _util.GetSelf())
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTAC1, _const.CHANGE_DIALOG, 7)
  elseif _util.GetConversationCount() == 7 then
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTAC2, _const.CHANGE_DIALOG, 8)
  elseif _util.GetConversationCount() == 8 then
    _util.AddLoopingConv(_text.M5_COFFEESHOP_BARISTAC3)
    _util.AddLoopingOption(_text.M5_COFFEESHOP_BARISTAC3_Q1, -1, _const.CHANGE_DIALOG, 9)
    _util.AddLoopingOption(_text.M5_COFFEESHOP_BARISTAC3_Q2, -1, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 9 then
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTAC3_A2, _const.CHANGE_DIALOG, 11)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTAC3_A1_2B, _const.CHANGE_DIALOG, 11)
  elseif _util.GetConversationCount() == 11 then
    _util.ChangeBaseAnim("NPC/SecretFur/Barista/BaristaColor")
    _util.SwitchState("talk", _util.GetSelf())
    _util.AddLoopingConv(_text.M5_COFFEESHOP_BARISTAC3_B1_2D)
    _util.AddLoopingOption(_text.M5_COFFEESHOP_BARISTAD_Q1, -1, _const.CHANGE_DIALOG, 12)
    _util.AddLoopingOption(_text.M5_COFFEESHOP_BARISTAD_Q2, -1, _const.CHANGE_DIALOG, 13)
  elseif _util.GetConversationCount() == 12 then
    _util.SetVar("M5_baristaMentionedDrawing", 1)
    _util.DisplayPopUp(_text.M8_MONSTER_DRAWING, "UI/Zoom/creatureDrawing", false)
    _util.ChangeBaseAnim("NPC/SecretFur/Barista/BaristaDraw")
    _util.SwitchState("talk", _util.GetSelf())
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTAD_A1, _const.END_DIALOG, 15)
  elseif _util.GetConversationCount() == 13 then
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTAD_A2_2B, _const.CHANGE_DIALOG, 14)
  elseif _util.GetConversationCount() == 14 then
    _util.SetVar("M5_baristaMentionedDrawing", 1)
    _util.DisplayPopUp(_text.M8_MONSTER_DRAWING, "UI/Zoom/creatureDrawing", false)
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTAD_B2, _const.END_DIALOG, 15)
  elseif _util.GetConversationCount() == 15 then
    if _util.GetVar("M5_coffeeMachineFixed") == 0 then
      _util.AddLoopingConv(_text.M5_COFFEESHOP_BARISTAE_GREET3)
      _util.AddLoopingOption(_text.M5_COFFEESHOP_BARISTAE_Q1, -1, _const.CHANGE_DIALOG, 3)
      if _util.GetVar("M5_baristaMentionedDrawing") == 1 then
        _util.AddLoopingOption(_text.M5_COFFEESHOP_BARISTAE_Q2, -1, _const.CHANGE_DIALOG, 16)
      end
      _util.AddLoopingOption(_text.M5_COFFEESHOP_BARISTAE_Q3, -1, _const.CHANGE_DIALOG, 17)
    elseif _util.GetVar("happeningsFound") == 1 then
      _util.AddLoopingConv(_text.M5_COFFEESHOP_BARISTAG_FIXED)
      _util.AddLoopingOption(_text.M5_COFFEESHOP_BARISTAG_Q1, -1, _const.CHANGE_DIALOG, 22)
      if _util.GetVar("M5_baristaMentionedDrawing") == 1 then
        _util.AddLoopingOption(_text.M5_COFFEESHOP_BARISTAG_Q2, -1, _const.CHANGE_DIALOG, 16)
      end
      _util.AddLoopingOption(_text.M5_COFFEESHOP_BARISTAG_Q3, -1, _const.CHANGE_DIALOG, 23)
      _util.SetVar("thankedForService", 1)
    elseif _util.GetVar("coffeFloorClean") == 0 and _util.GetVar("M5_cupFilled") == 1 and _util.GetVar("thankedForService") == 1 then
      _util.AddConversation(_text.M5_COFFEESHOP_BARISTA_COCCOA1, _text.M5_COFFEESHOP_BARISTA_COCCOA1_Q1, -1, _const.CHANGE_DIALOG, 100)
    elseif _util.GetVar("coffeFloorClean") == 1 and _util.GetVar("itemsDropped") == 4 then
      _util.AddConversation(_text.M5_COFFEESHOP_BARISTAJ_FIXED2, _text.M5_COFFEESHOP_BARISTAJ_Q1, -1, _const.CHANGE_DIALOG, 103)
    else
      _util.AddLoopingConv(_text.M5_COFFEESHOP_BARISTAG_FIXED)
      _util.AddLoopingOption(_text.M5_COFFEESHOP_BARISTAI_Q1_2, -1, _const.CHANGE_DIALOG, 16)
      _util.AddLoopingOption(_text.M5_COFFEESHOP_BARISTAI_Q2, -1, _const.END_DIALOG, 24)
      if _util.GetVar("chocolateFilled") == 0 then
        _util.AddLoopingOption(_text.M5_COFFEESHOP_NOSAUCE_1, -1, _const.CHANGE_DIALOG, 200)
      end
      _util.SetVar("thankedForService", 1)
    end
  elseif _util.GetConversationCount() == 200 then
    _util.AddDialog(_text.M5_COFFEESHOP_NOSAUCE_2, _const.END_DIALOG, 24)
  elseif _util.GetConversationCount() == 16 then
    _util.SetVar("M5_baristaMentionedDrawing", 1)
    _util.DisplayPopUp(_text.M8_MONSTER_DRAWING, "UI/Zoom/creatureDrawing", false)
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTAE_A2, _const.END_DIALOG, 15)
  elseif _util.GetConversationCount() == 17 then
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTAE_A3_2B, _const.CHANGE_DIALOG, 18)
  elseif _util.GetConversationCount() == 18 then
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTAE_B3_2C, _const.CHANGE_DIALOG, 19)
  elseif _util.GetConversationCount() == 19 then
    _util.AddLoopingConv(_text.M5_COFFEESHOP_BARISTAE_C_2F)
    _util.AddLoopingOption(_text.M5_COFFEESHOP_BARISTAF_Q1, -1, _const.CHANGE_DIALOG, 20)
    _util.AddLoopingOption(_text.M5_COFFEESHOP_BARISTAF_Q2, -1, _const.CHANGE_DIALOG, 21)
  elseif _util.GetConversationCount() == 20 then
    _util.SetVar("canFix", 1)
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTAF_A1, _const.END_DIALOG, 15)
  elseif _util.GetConversationCount() == 21 then
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTAF_A2, _const.END_DIALOG, 15)
  elseif _util.GetConversationCount() == 22 then
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTAG_A1, _const.END_DIALOG, 24)
  elseif _util.GetConversationCount() == 23 then
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTAG_A3, _const.END_DIALOG, 24)
  elseif _util.GetConversationCount() == 24 then
    _util.AddLoopingConv(_text.M5_COFFEESHOP_BARISTAH_FIXED2)
    if _util.GetVar("M5_baristaMentionedDrawing") == 1 then
      _util.AddLoopingOption(_text.M5_COFFEESHOP_BARISTAH_Q1, -1, _const.CHANGE_DIALOG, 25)
    end
    if _util.GetVar("chocolateFilled") == 0 then
      _util.AddLoopingOption(_text.M5_COFFEESHOP_NOSAUCE_1, -1, _const.CHANGE_DIALOG, 200)
    end
    _util.AddLoopingOption(_text.M5_COFFEESHOP_BARISTAH_Q2, -1, _const.CHANGE_DIALOG, 26)
  elseif _util.GetConversationCount() == 25 then
    _util.SetVar("M5_baristaMentionedDrawing", 1)
    _util.DisplayPopUp(_text.M8_MONSTER_DRAWING, "UI/Zoom/creatureDrawing", false)
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTAE_A2, _const.END_DIALOG, 24)
  elseif _util.GetConversationCount() == 26 then
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTAH_A2, _const.END_DIALOG, 24)
  elseif _util.GetConversationCount() == 100 then
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTA_COCCOA1_A1, _const.END_DIALOG, 15)
  elseif _util.GetConversationCount() == 101 then
    _util.AddConversation(_text.M5_COFFEESHOP_BARISTA_COCCOA2, _text.M5_COFFEESHOP_BARISTA_COCCOA2_Q1, -1, _const.CHANGE_DIALOG, 102)
  elseif _util.GetConversationCount() == 102 then
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTA_COCCOA2_A1, _const.END_DIALOG, 15)
  elseif _util.GetConversationCount() == 103 then
    _util.AddDialog(_text.M5_COFFEESHOP_BARISTAJ_A1, _const.END_DIALOG, 7)
  end
end
if _util.GetReason() == _const.AFTER_DIALOG then
  _util.ChangeBaseAnim("NPC/SecretFur/Barista/Barista")
  _util.SwitchState("", _util.GetSelf())
end
