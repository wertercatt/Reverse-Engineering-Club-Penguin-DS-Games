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
    _util.SwitchState("shake", _util.GetSelf())
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_util.GetSelf())
    _util.SwitchState("idle", _util.GetSelf())
    _util.AddMonologue(655)
  end
  scriptPlay(L0_0)
end
