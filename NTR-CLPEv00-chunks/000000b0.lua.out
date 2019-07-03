if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMMUNICATOR)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 100 then
    _util.SetVar("FPMission_Started", 0)
    _util.PlaySFX(169)
    _util.AddConversation(3054, 3055, -1, _const.CHANGE_NPC, _id.M5C1_Rookie_Stage, 100)
  elseif _util.GetConversationCount() == 101 then
    _util.AddConversation(3077, 3090, -1, _const.CHANGE_ROOM, 19)
  elseif _util.GetConversationCount() == 1 then
    _util.AddConversation(3057, 3058, -1, _const.CHANGE_NPC, _id.M5C1_PH_Stage, 100)
  elseif _util.GetConversationCount() == 2 then
    _util.AddConversation(3063, 3064, -1, _const.END_DIALOG, 0)
    _util.SetCursorPos(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
    _util.PlaySFX(154)
  elseif _util.GetConversationCount() == 0 then
    _util.AddConversation(3077, 3079, -1, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(3080, _const.END_DIALOG, 0)
  end
end
if _util.GetReason() == _const.COMMUNICATOR and _util.GetVar("M5C1_intro") > 3 then
  if _util.GetComCount() == 0 then
    _util.AddComText(3165)
    _util.AddComOption(3166, _const.CHANGE_DIALOG, 1)
  elseif _util.GetComCount() == 1 then
    _util.AddComText(3167)
    _util.AddComOption(3168, _const.END_DIALOG, 0)
  end
end
