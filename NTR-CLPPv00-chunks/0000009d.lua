if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M1C2_trainingIntro") == 0 then
    _util.AddMonologue(268)
  else
    _util.AddMonologue(4327)
  end
end
