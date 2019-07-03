if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED and _util.GetVar("SM01_Gift1") == 0 then
  _util.SetVar("SM01_Gift1", 1)
  _util.IncVar("FPM11_GiftsTaken")
end
