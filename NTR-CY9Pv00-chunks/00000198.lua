if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMBINE)
  _util.SetVar("M9_CombinePiece", 0)
end
if _util.GetReason() == _const.TOUCHED then
end
