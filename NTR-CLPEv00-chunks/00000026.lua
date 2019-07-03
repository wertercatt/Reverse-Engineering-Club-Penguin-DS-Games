if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("FP03_introForest") == 0 then
    _util.AddMonologue(3701, "DialogStrings", _const.END_DIALOG, 0)
  elseif _util.GetVar("FP03_introForest") == 1 then
    _util.AddMonologue(3720, "DialogStrings", _const.END_DIALOG, 0)
  end
end
