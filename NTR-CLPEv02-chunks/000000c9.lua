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
if L0_0 == 1 and L1_1 == 2 then
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  if L2_2 == _const.TOUCHED then
    L2_2 = _util
    L2_2 = L2_2.AddMonologue
    L2_2(344)
  end
elseif L0_0 == 2 and L1_1 == 1 then
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  if L2_2 == _const.TOUCHED then
    L2_2 = _util
    L2_2 = L2_2.AddMonologue
    L2_2(783)
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("M2C1_searchedHQ", 1)
  end
elseif L0_0 == 3 and L1_1 == 3 then
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  if L2_2 == _const.TOUCHED then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("M3C3_M3C3_garysRoomIntroComplete")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.AddMonologue
      L2_2(2039)
    else
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("M3C3_haveCocoaMachine")
      if L2_2 == 0 then
        L2_2 = _util
        L2_2 = L2_2.AddMonologue
        L2_2(1887)
      end
    end
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
      _util.AddMonologue(907, "DialogStrings")
    end
  end
end
