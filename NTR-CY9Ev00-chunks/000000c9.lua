if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED and _util.GetVar("LockedIn") == 1 then
  _util.AddItem(_id.M11_CR_DoorPanel)
end
