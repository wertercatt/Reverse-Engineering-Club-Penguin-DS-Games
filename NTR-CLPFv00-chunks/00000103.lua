if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  _util.SetVar("robostatus", 2)
  _util.EnablePuffle(_const.FLAG_RED)
  _util.DelItem(_util.GetSelf())
end
