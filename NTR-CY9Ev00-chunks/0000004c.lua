if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddDialog(_text.C1_DOTORJPG_GREET, _const.CHANGE_NPC, _id.M1_CRRookie, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(_text.C1_CR_JPG_1A_1, _const.CHANGE_NPC, _id.M1_CRDot, 3)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(_text.C1_CR_JPG_1C_1, _const.CHANGE_NPC, _id.M1_CRDot, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(_text.C1_CR_JPG_2, _const.CHANGE_NPC, _id.M1_CRRookie, 5)
  elseif _util.GetConversationCount() == 4 then
    _util.AddDialog(_text.C1_CR_JPG_4A_1, _const.CHANGE_NPC, _id.M1_CRDot, 4)
  elseif _util.GetConversationCount() == 5 then
    _util.AddLoopingConv(_text.C1_CR_JPG_3)
    _util.AddLoopingOption(_text.C1_CR_A_6A, -1, _const.CHANGE_NPC, _id.M1_CRDirector, 23)
    _util.AddLoopingOption(_text.C1_CR_A_6B, -1, _const.CHANGE_NPC, _id.M1_CRDirector, 21)
  elseif _util.GetConversationCount() == 6 then
    _util.AddLoopingConv(_text.C1_CR_JPG_6B_1)
    _util.AddLoopingOption(_text.C1_CR_A_6B_1A, -1, _const.CHANGE_NPC, _id.M1_CRDirector, 23)
    _util.AddLoopingOption(_text.C1_CR_A_6B_1B, -1, _const.CHANGE_NPC, _id.M1_CRDirector, 23)
  elseif _util.GetConversationCount() == 7 then
    _util.AddLoopingConv(_text.C1_CR_JPG_1)
    _util.AddLoopingOption(_text.C1_CR_A_1A, -1, _const.CHANGE_NPC, _id.M1_CRRookie, 1)
    _util.AddLoopingOption(_text.C1_CR_A_1B, -1, _const.CHANGE_NPC, _id.M1_CRDot, 2)
    _util.AddLoopingOption(_text.C1_CR_A_1C, -1, _const.CHANGE_NPC, _id.M1_CRRookie, 4)
  end
end
