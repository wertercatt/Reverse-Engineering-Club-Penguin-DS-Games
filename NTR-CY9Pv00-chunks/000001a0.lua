if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED and _util.GetVar("M9_canFixMine") == 3 then
  _util.SetVar("WeldCart", 1)
  _util.AddItem(_id.M9_MineCartFixed)
  _util.DelItem(_id.M9_MineCart)
end
