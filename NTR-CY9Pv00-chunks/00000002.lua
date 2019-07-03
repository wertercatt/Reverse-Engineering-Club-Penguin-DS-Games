if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.AFTER_DIALOG)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddDialog(_text.C1_TCRC_DIRECTOR_1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(_text.C1_TCRC_DIRECTOR_2, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(_text.C1_TCRC_DIRECTOR_3, _const.CHANGE_NPC, _id.M1_T7_Rookie2, 5)
  elseif _util.GetConversationCount() == 3 then
    _util.SetVar("C1_Event", _id.C1_directorChallenge)
    _util.AddObjective(_text.C1_OBJ2)
    _util.SetConversationCount(5, _id.M1_T7_Rookie2)
    _util.ChangeBaseAnim("NPC/M1/Rookie/RookieCave2", _id.M1_T7_Rookie2)
    _util.AddNPCText(_text.C1_TCRC_DIRECTOR_4, _const.END_DIALOG, -1, 3)
  end
end
if _util.GetReason() == _const.AFTER_DIALOG then
  _util.ChangeBaseAnim("NPC/M1/Rookie/RookieCave2_nod", _id.M1_T7_Rookie2)
end
