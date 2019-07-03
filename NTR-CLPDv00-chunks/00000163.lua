if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
end
if _util.GetActiveMission() == 4 and _util.GetActiveChapter() == 2 and _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M4C2_fightWB") == 1 then
    _util.AddMonologue(2481, "DialogStrings", _const.CHANGE_NPC, _id.M4C2_WBot_Roof, 102)
  elseif _util.GetVar("M4C2_fightWB") == 2 then
    _util.AddMonologue(2482)
  elseif _util.GetVar("M4C2_fightWB") == 3 and _util.GetVar("M4C2_deadWB") == 0 then
    _util.AddMonologue(2483)
  elseif _util.GetVar("M4C2_haveWB") == 0 then
    _util.AddMonologue(2484)
  end
end
