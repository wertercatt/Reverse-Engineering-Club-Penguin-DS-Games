if _util.GetReason() == _const.CREATED then
  _util.SetVar("C1_Event", _id.C1_start)
  _util.AddInterest(_const.AFTER_DIALOG)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddDialog(_text.C1_CR_DIRECTOR_1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(_text.C1_CR_DIRECTOR_2, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(_text.C1_CR_DIRECTOR_3, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(_text.C1_CR_DIRECTOR_4, _const.CHANGE_NPC, _id.M1_CRRookie, 7)
  elseif _util.GetConversationCount() == 4 then
    _util.AddDialog(_text.C1_CR_DIRECTOR_5, _const.CHANGE_DIALOG, 5)
  elseif _util.GetConversationCount() == 5 then
    _util.AddDialog(_text.C1_CR_DIRECTOR_6, _const.CHANGE_DIALOG, 6)
  elseif _util.GetConversationCount() == 6 then
    _util.AddLoopingConv(_text.C1_CR_DIRECTOR_7)
    _util.AddLoopingOption(_text.C1_CR_A_4A, -1, _const.CHANGE_DIALOG, 7)
    _util.AddLoopingOption(_text.C1_CR_A_4B, -1, _const.CHANGE_DIALOG, 7)
  elseif _util.GetConversationCount() == 7 then
    _util.AddDialog(_text.C1_CR_DIRECTOR_8, _const.CHANGE_DIALOG, 8)
  elseif _util.GetConversationCount() == 8 then
    _util.AddDialog(_text.C1_CR_DIRECTOR_9, _const.CHANGE_NPC, _id.M1_CRRookie, 8)
  elseif _util.GetConversationCount() == 9 then
    _util.AddDialog(_text.C1_CR_DIRECTOR_4A_1, _const.CHANGE_NPC, _id.M1_CRRookie, 9)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(_text.C1_CR_DIRECTOR_10, _const.CHANGE_DIALOG, 11)
  elseif _util.GetConversationCount() == 11 then
    _util.AddDialog(_text.C1_CR_DIRECTOR_11, _const.CHANGE_DIALOG, 12)
  elseif _util.GetConversationCount() == 12 then
    _util.AddDialog(_text.C1_CR_DIRECTOR_12, _const.CHANGE_DIALOG, 13)
  elseif _util.GetConversationCount() == 13 then
    if _util.GetVar("c1_13asked") == 0 then
      _util.AddLoopingOption(_text.C1_CR_A_12A, -1, _const.CHANGE_DIALOG, 14)
    end
    if _util.GetVar("c1_16asked") == 0 then
      _util.AddLoopingOption(_text.C1_CR_A_12B, -1, _const.CHANGE_DIALOG, 17)
    end
    if _util.GetVar("c1_17asked") == 0 then
      _util.AddLoopingOption(_text.C1_CR_A_12C, -1, _const.CHANGE_DIALOG, 18)
    end
    _util.AddLoopingOption(_text.C1_CR_A_12D, -1, _const.CHANGE_DIALOG, 20)
  elseif _util.GetConversationCount() == 14 then
    _util.SetVar("c1_13asked", 1)
    _util.AddDialog(_text.C1_CR_DIRECTOR_12A_1, _const.CHANGE_DIALOG, 15)
  elseif _util.GetConversationCount() == 15 then
    _util.AddDialog(_text.C1_CR_DIRECTOR_12A_2, _const.CHANGE_DIALOG, 16)
  elseif _util.GetConversationCount() == 16 then
    _util.AddDialog(_text.C1_CR_DIRECTOR_12A_3, _const.CHANGE_DIALOG, 13)
  elseif _util.GetConversationCount() == 17 then
    _util.SetVar("c1_16asked", 1)
    _util.AddDialog(_text.C1_CR_DIRECTOR_12B_1, _const.CHANGE_DIALOG, 13)
  elseif _util.GetConversationCount() == 18 then
    _util.SetVar("c1_17asked", 1)
    _util.AddDialog(_text.C1_CR_DIRECTOR_12C_1, _const.CHANGE_DIALOG, 19)
  elseif _util.GetConversationCount() == 19 then
    _util.AddDialog(_text.C1_CR_DIRECTOR_12C_2, _const.CHANGE_DIALOG, 13)
  elseif _util.GetConversationCount() == 20 then
    _util.AddDialog(_text.C1_CR_DIRECTOR_12D_2, _const.CHANGE_NPC, _id.M1_CRDot, 5)
  elseif _util.GetConversationCount() == 21 then
    _util.AddDialog(_text.C1_CR_DIRECTOR_6B_1, _const.CHANGE_DIALOG, 22)
  elseif _util.GetConversationCount() == 22 then
    _util.AddDialog(_text.C1_CR_DIRECTOR_6B_2, _const.CHANGE_NPC, _id.M1_CRDot, 6)
  elseif _util.GetConversationCount() == 23 then
    _util.AddDialog(_text.C1_CR_DIRECTOR_13, _const.CHANGE_DIALOG, 24)
  elseif _util.GetConversationCount() == 24 then
    _util.AddDialog(_text.C1_CR_DIRECTOR_14, _const.END_DIALOG)
  end
end
if _util.GetReason() == _const.AFTER_DIALOG then
  _util.SetVar("C1_Event", _id.C1_puffleIntro)
  _util.ChangeRoom(123)
end
