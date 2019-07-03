if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddDialog(_text.C1_DOTORJPG_GREET, _const.CHANGE_NPC, _id.M1_CRRookie, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(_text.C1_CR_DOT_1A_2, _const.CHANGE_NPC, _id.M1_CRJPG, 1)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(_text.C1_CR_DOT_1B_1, _const.CHANGE_NPC, _id.M1_CRRookie, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(_text.C1_CR_DOT_1, _const.CHANGE_NPC, _id.M1_CRJPG, 3)
  elseif _util.GetConversationCount() == 4 then
    _util.AddDialog(_text.C1_CR_DOT_4A_1, _const.CHANGE_NPC, _id.M1_CRDirector, 9)
  elseif _util.GetConversationCount() == 5 then
    _util.AddDialog(_text.C1_CR_DOT_2, _const.CHANGE_NPC, _id.M1_CRRookie, 10)
  elseif _util.GetConversationCount() == 6 then
    _util.AddDialog(_text.C1_CR_DOT_6B_1, _const.CHANGE_NPC, _id.M1_CRJPG, 6)
  elseif _util.GetConversationCount() == 7 then
    _util.AddDialog(_text.C1_CR_DOT_1A_1, _const.CHANGE_NPC, _id.M1_CRRookie, 2)
  end
end
