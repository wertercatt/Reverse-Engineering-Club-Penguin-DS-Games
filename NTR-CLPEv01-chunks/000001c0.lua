if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M2C1_talkPizza") == 0 then
    _util.AddMonologue(810)
  else
    _util.AddMonologue(811)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
end
if _util.GetReason() == _const.COLLIDED then
end
