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
if L1_1 == _const.TOUCHED and L0_0 == 0 then
  function L1_1()
    _util.DisableInput()
    _util.SwitchState("run", _util.GetSelf())
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_util.GetSelf())
    _util.DelItem(_util.GetSelf())
    _util.EnableInput()
  end
  scriptPlay(L1_1)
end
