local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
if L2_2 == _const.TOUCHED then
  L2_2 = _util
  L2_2 = L2_2.GetSelf
  L2_2 = L2_2()
  if _util.GetExitLocked(L2_2) then
    _util.AddMonologue(4827, "DialogStrings")
  end
end
