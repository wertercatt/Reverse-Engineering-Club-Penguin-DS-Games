if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M3C3_gadgetRoomIntroComplete") == 0 then
    _util.AddMonologue(1952)
  end
  if _util.GetVar("M3C3_gadgetRoomIntroComplete") == 1 and _util.GetVar("M3C3_madeSnowCat") == 0 then
    _util.AddMonologue(1953)
  end
  if _util.GetVar("M3C3_madeSnowCat") == 1 and _util.GetVar("M3C3_playedSnowCat") == 0 then
    _util.AddMonologue(1954)
  end
  if _util.GetVar("M3C3_playedSnowCat") == 1 then
    _util.AddMonologue(1955)
  end
end
