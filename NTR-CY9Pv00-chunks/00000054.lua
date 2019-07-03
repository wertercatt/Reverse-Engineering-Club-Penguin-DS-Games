local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.TOUCHED then
  function L1_1()
    _util.DisableInput()
    _util.SwitchState("door2snow", _util.GetSelf())
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_util.GetSelf())
    _util.PlaySFX(240)
    _util.EnableInput()
    _util.AddItem(_id.M6_doorOpen)
    _util.SetVar("M6_Cave_wasSnowedIn", 1)
    _util.DelItem(_util.GetSelf())
  end
  scriptPlay(L1_1)
end
