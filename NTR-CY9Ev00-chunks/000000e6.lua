if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED and _util.GetVar("CreateBridge") == 1 then
  _util.ChangeRoom(113)
end
