local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.TOUCHED then
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("m11_monitorUnplugged")
  if L1_1 == 0 then
    function L1_1()
      _util.DisableInput()
      _util.SwitchState("loose")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying()
      _util.SwitchState("unplugged")
      _util.ActivateNpc(_id.M11_HerbertCornMaze, 5)
      _util.EnableInput()
    end
    scriptPlay(L1_1)
  end
end
