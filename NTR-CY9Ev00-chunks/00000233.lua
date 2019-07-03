if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.AFTER_DIALOG)
  _util.AddInterest(_const.COMMUNICATOR)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.ChangeBaseAnim("NPC/SpySeek/Gary/GaryGR")
    _util.AddLoopingConv(_text.M9_GADGETROOM_INTRO)
    _util.AddLoopingOption(_text.M9_GADGETROOM_INTRO_Q1, -1, _const.CHANGE_DIALOG, 2)
    _util.AddLoopingOption(_text.M9_GADGETROOM_INTRO_Q2, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddLoopingConv(_text.M9_GADGETROOM_INTRO_A2_2GARYA)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYA_Q1, -1, _const.CHANGE_DIALOG, 5)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYA_Q2, -1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 2 then
    _util.AddLoopingConv(_text.M9_GADGETROOM_INTRO_A1_2GARYA)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYA_Q1, -1, _const.CHANGE_DIALOG, 5)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYA_Q2, -1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.SetVar("M9_Gary_Anim_ReturnToWork", 1)
    _util.AddDialog(_text.M9_GADGETROOM_GARYA_A2, _const.END_DIALOG, 4)
  elseif _util.GetConversationCount() == 4 then
    _util.ChangeBaseAnim("NPC/SpySeek/Gary/GaryGR")
    _util.AddLoopingConv(_text.M9_GADGETROOM_INTRO2)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYA_Q1, -1, _const.CHANGE_DIALOG, 5)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYA_Q2, -1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 5 then
    _util.SetVar("M9_GaryMissionAccepted", 1)
    _util.SetItemEnabled(_id.M9_Receiver1, 1)
    _util.SetItemEnabled(_id.M9_Receiver2, 1)
    _util.SetItemEnabled(_id.M9_Receiver3, 1)
    _util.SetItemEnabled(_id.M9_DuckDeflated, 1)
    _util.SetItemEnabled(_id.M9_KiteBlueprint, 1)
    _util.AddMapAlert(0, 461, 145, 0, 156, 82)
    _util.AddMapAlert(0, 623, 97, 1, 210, 90)
    _util.AddMapAlert(0, 197, 49, 2, 60, 62)
    _util.AddDialog(_text.M9_GADGETROOM_GARYA_A1_2B, _const.CHANGE_DIALOG, 6)
  elseif _util.GetConversationCount() == 6 then
    _util.AddLoopingConv(_text.M9_GADGETROOM_GARYA_B1_2B)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYB_Q1, -1, _const.CHANGE_DIALOG, 7)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYB_Q2, -1, _const.CHANGE_DIALOG, 8)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYB_Q3, -1, _const.CHANGE_DIALOG, 9)
  elseif _util.GetConversationCount() == 7 then
    _util.AddDialog(_text.M9_GADGETROOM_GARYB_A1, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 8 then
    _util.AddDialog(_text.M9_GADGETROOM_GARYB_A2, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 9 then
    _util.AddDialog(_text.M9_GADGETROOM_GARYB_A3, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(_text.M9_GADGETROOM_GARYC_A1_2B, _const.CHANGE_DIALOG, 11)
  elseif _util.GetConversationCount() == 11 then
    _util.AddLoopingConv(_text.M9_GADGETROOM_GARYC_B1)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYD_Q1, -1, _const.CHANGE_DIALOG, 12)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYD_Q2, -1, _const.CHANGE_DIALOG, 12)
  elseif _util.GetConversationCount() == 12 then
    _util.ChangeBaseAnim("NPC/SpySeek/Gary/GaryGR2")
    _util.AddDialog(_text.M9_GADGETROOM_GARYD_A1_2B, _const.CHANGE_DIALOG, 13)
  elseif _util.GetConversationCount() == 13 then
    _util.AddDialog(_text.M9_GADGETROOM_GARYD_B1_2C, _const.CHANGE_DIALOG, 14)
  elseif _util.GetConversationCount() == 14 then
    _util.ChangeBaseAnim("NPC/SpySeek/Gary/GaryGR")
    _util.AddLoopingConv(_text.M9_GADGETROOM_GARYD_C1)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYE_Q1, -1, _const.CHANGE_DIALOG, 15)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYE_Q2, -1, _const.CHANGE_DIALOG, 15)
  elseif _util.GetConversationCount() == 15 then
    _util.AddDialog(_text.M9_GADGETROOM_GARYE_A1_2B, _const.CHANGE_DIALOG, 16)
  elseif _util.GetConversationCount() == 16 then
    _util.ChangeBaseAnim("NPC/SpySeek/Gary/GaryGR2")
    _util.AddDialog(_text.M9_GADGETROOM_GARYE_B1_2C, _const.CHANGE_DIALOG, 17)
  elseif _util.GetConversationCount() == 17 then
    _util.ChangeBaseAnim("NPC/SpySeek/Gary/GaryGR")
    _util.AddObjective(_text.M9_OBJ_1)
    _util.AddSubObjective(_text.M9_OBJ_1, _text.M9_OBJ_1A)
    _util.AddSubObjective(_text.M9_OBJ_1, _text.M9_OBJ_1B)
    _util.AddSubObjective(_text.M9_OBJ_1, _text.M9_OBJ_1C)
    _util.AddObjective(_text.M9_OBJ_2)
    _util.AddSubObjective(_text.M9_OBJ_2, _text.M9_OBJ_2A)
    _util.AddObjective(_text.M9_OBJ_3)
    _util.AddDialog(_text.M9_GADGETROOM_GARYE_C1_2D, _const.CHANGE_DIALOG, 18)
  elseif _util.GetConversationCount() == 18 then
    _util.AddDialog(_text.M9_GADGETROOM_GARYE_D1_2E, _const.CHANGE_DIALOG, 19)
  elseif _util.GetConversationCount() == 19 then
    _util.ChangeBaseAnim("NPC/SpySeek/Gary/GaryGR2")
    _util.AddLoopingConv(_text.M9_GADGETROOM_GARYE_E1)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYF_Q1, -1, _const.CHANGE_DIALOG, 20)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYF_Q2, -1, _const.CHANGE_DIALOG, 22)
  elseif _util.GetConversationCount() == 20 then
    _util.ChangeBaseAnim("NPC/SpySeek/Gary/GaryGR")
    _util.AddDialog(_text.M9_GADGETROOM_GARYF_A1_2B, _const.CHANGE_DIALOG, 21)
  elseif _util.GetConversationCount() == 21 then
    _util.AddDialog(_text.M9_GADGETROOM_GARYF_B1_2G, _const.CHANGE_DIALOG, 23)
  elseif _util.GetConversationCount() == 22 then
    _util.ChangeBaseAnim("NPC/SpySeek/Gary/GaryGR")
    _util.AddDialog(_text.M9_GADGETROOM_GARYF_A2_2G, _const.CHANGE_DIALOG, 23)
  elseif _util.GetConversationCount() == 23 then
    _util.ChangeBaseAnim("NPC/SpySeek/Gary/GaryGR2")
    _util.AddSubObjective(_text.M9_OBJ_3, _text.M9_OBJ_3AA)
    _util.AddSubObjective(_text.M9_OBJ_3, _text.M9_OBJ_3A)
    _util.AddSubObjective(_text.M9_OBJ_3, _text.M9_OBJ_3B)
    _util.AddDialog(_text.M9_GADGETROOM_GARYG_A1_2B, _const.CHANGE_DIALOG, 24)
  elseif _util.GetConversationCount() == 24 then
    _util.AddDialog(_text.M9_GADGETROOM_GARYG_B1_2C, _const.CHANGE_DIALOG, 25)
  elseif _util.GetConversationCount() == 25 then
    _util.ChangeBaseAnim("NPC/SpySeek/Gary/GaryGR")
    _util.AddLoopingConv(_text.M9_GADGETROOM_GARYG_C1)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYH_Q1, -1, _const.CHANGE_DIALOG, 26)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYH_Q2, -1, _const.CHANGE_DIALOG, 27)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYH_Q3, -1, _const.CHANGE_DIALOG, 29)
  elseif _util.GetConversationCount() == 26 then
    _util.SetVar("M9_Gary_Anim_ReturnToWork", 1)
    _util.AddDialog(_text.M9_GADGETROOM_GARYH_A1, _const.END_DIALOG, 38)
    _util.ClearObjective()
  elseif _util.GetConversationCount() == 27 then
    _util.AddDialog(_text.M9_GADGETROOM_GARYH_A2_2B, _const.CHANGE_DIALOG, 28)
  elseif _util.GetConversationCount() == 28 then
    _util.AddDialog(_text.M9_GADGETROOM_GARYH_B2_2GARYQ, _const.CHANGE_DIALOG, 32)
  elseif _util.GetConversationCount() == 29 then
    _util.AddDialog(_text.M9_GADGETROOM_GARYH_A3_2B, _const.CHANGE_DIALOG, 30)
  elseif _util.GetConversationCount() == 30 then
    _util.AddDialog(_text.M9_GADGETROOM_GARYH_B3_2GARYQ, _const.CHANGE_DIALOG, 31)
  elseif _util.GetConversationCount() == 31 then
    _util.AddLoopingConv(_text.M9_GADGETROOM_GARYH_GARYQ)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYH_Q1, -1, _const.CHANGE_DIALOG, 26)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYH_Q2, -1, _const.CHANGE_DIALOG, 27)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYH_Q4, _text.M9_GADGETROOM_GARYH_A4_2GARYQ, _const.UPDATE_LOOP)
  elseif _util.GetConversationCount() == 32 then
    _util.AddLoopingConv(_text.M9_GADGETROOM_GARYH_GARYQ)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYH_Q1, -1, _const.CHANGE_DIALOG, 26)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYH_Q3, -1, _const.CHANGE_DIALOG, 29)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYH_Q4, _text.M9_GADGETROOM_GARYH_A4_2GARYQ, _const.UPDATE_LOOP)
  elseif _util.GetConversationCount() == 33 then
    _util.AddDialog(_text.M9_GADGETROOM_GARYH_A2_2B, _const.CHANGE_DIALOG, 34)
  elseif _util.GetConversationCount() == 34 then
    _util.AddDialog(_text.M9_GADGETROOM_GARYH_B2_2GARYQ, _const.CHANGE_DIALOG, 37)
  elseif _util.GetConversationCount() == 35 then
    _util.AddDialog(_text.M9_GADGETROOM_GARYH_A3_2B, _const.CHANGE_DIALOG, 36)
  elseif _util.GetConversationCount() == 36 then
    _util.AddDialog(_text.M9_GADGETROOM_GARYH_B3_2GARYQ, _const.CHANGE_DIALOG, 37)
  elseif _util.GetConversationCount() == 37 then
    _util.AddConversation(_text.M9_GADGETROOM_GARYH_GARYQ, _text.M9_GADGETROOM_GARYH_Q1, -1, _const.CHANGE_DIALOG, 26)
  elseif _util.GetConversationCount() == 38 then
    _util.ChangeBaseAnim("NPC/SpySeek/Gary/GaryGR")
    _util.AddLoopingConv(_text.M9_GADGETROOM_GREET)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYH_Q1_2, -1, _const.CHANGE_DIALOG, 39)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYH_Q2, -1, _const.CHANGE_DIALOG, 27)
    _util.AddLoopingOption(_text.M9_GADGETROOM_GARYH_Q3, -1, _const.CHANGE_DIALOG, 29)
  elseif _util.GetConversationCount() == 39 then
    _util.SetVar("M9_Gary_Anim_ReturnToWork", 1)
    _util.AddDialog(_text.M9_GADGETROOM_GARYH_A1_2, _const.END_DIALOG, 38)
  end
end
if _util.GetReason() == _const.AFTER_DIALOG and _util.GetVar("M9_Gary_Anim_ReturnToWork") == 1 then
  _util.ChangeBaseAnim("NPC/SpySeek/Gary/GaryGRWork")
  _util.SwitchState("", _util.GetSelf())
  _util.SetVar("M9_Gary_Anim_ReturnToWork", 0)
end
if _util.GetReason() == _const.COMMUNICATOR then
  _util.SetVar("GetBackToHQ", 1)
  _util.AddComText(_text.M9_COM_GARY_GREET, _const.END_DIALOG, 0)
  _util.ClearObjective()
  _util.AddObjective(_text.M9_OBJ3)
end
