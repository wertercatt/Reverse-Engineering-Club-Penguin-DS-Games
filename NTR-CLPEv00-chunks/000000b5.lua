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
if L2_2 == _const.CREATED then
  L2_2 = _util
  L2_2 = L2_2.AddInterest
  L2_2(_const.TOUCHED)
end
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
if L2_2 == _const.TOUCHED then
  if L1_1 == 1 and L0_0 == 1 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("M1C1_haveCard2")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.AddMonologue
      L2_2(204)
    end
  else
    L2_2 = _util
    L2_2 = L2_2.AddMonologue
    L2_2(204)
  end
else
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  if L2_2 == _const.TOUCHED then
    L2_2 = _util
    L2_2 = L2_2.GetSelf
    L2_2 = L2_2()
    if _util.GetExitLocked(L2_2) then
      _util.AddMonologue(79, "DialogStrings")
    end
  end
end
