if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED and _util.GetVar("LockedIn") == 1 then
  _util.AddPlayerThought(_text.M11_HQ3_CRDOOR_TOUCH)
end
