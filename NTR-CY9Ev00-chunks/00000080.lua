if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.SPECIAL_CASE)
  _util.SetVar("SignalLocation", 1)
end
if _util.GetReason() == _const.SPECIAL_CASE then
  if _util.GetVar("Inventory_Tracker_Mode") == 0 then
    _util.IncVar("Inventory_Tracker_Mode")
    print("turned on")
  else
    _util.DecVar("Inventory_Tracker_Mode")
    print("turned off")
  end
  _util.DisplaySignalTracking(_util.GetVar("Inventory_Tracker_Mode"), _util.GetVar("SignalLocation"))
end
