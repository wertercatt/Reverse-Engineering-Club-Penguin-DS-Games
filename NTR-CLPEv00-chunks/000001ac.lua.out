if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("robostatus") > 6 then
    _util.AddMonologue(3407, "DialogStrings", _const.END_DIALOG, 0)
  elseif _util.GetVar("robostatus") < 6 then
    _util.AddMonologue(3406, "DialogStrings", _const.END_DIALOG, 0)
  else
    _util.AddMonologue(3405, "DialogStrings", _const.END_DIALOG, 0)
  end
end
