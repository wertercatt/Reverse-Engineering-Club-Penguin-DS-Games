if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("robostatus") > 6 then
    _util.AddMonologue(3244, "DialogStrings", _const.END_DIALOG, 0)
  elseif _util.GetVar("robostatus") < 6 then
    _util.AddMonologue(3243, "DialogStrings", _const.END_DIALOG, 0)
  else
    _util.AddMonologue(3242, "DialogStrings", _const.END_DIALOG, 0)
  end
end
