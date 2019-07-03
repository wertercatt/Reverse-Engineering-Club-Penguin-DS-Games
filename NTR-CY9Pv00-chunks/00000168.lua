local L0_0
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.CREATED then
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.TOUCHED then
  function L0_0()
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_id.Balloon_GR)
    _util.DelItem(_id.Balloon_GR)
    _util.SetVar("BalloonPop", 1)
  end
  scriptPlay(L0_0)
end
