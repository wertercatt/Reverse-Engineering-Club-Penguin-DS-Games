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
  L0_0 = _util
  L0_0 = L0_0.GetVar
  L0_0 = L0_0("M3C1_impressedLoop")
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L0_0(1375)
  else
    function L0_0()
      _util.SwitchState("tap", _id.M3C1_Loop_Rink)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M3C1_Loop_Rink)
      _util.SwitchState("", _id.M3C1_Loop_Rink)
    end
    scriptPlay(L0_0)
  end
end
