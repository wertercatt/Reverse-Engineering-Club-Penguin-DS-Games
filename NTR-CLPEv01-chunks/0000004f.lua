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
if L0_0 == 1 and L1_1 == 1 then
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  if L2_2 == _const.TOUCHED then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("M1C1_haveCard2")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("M1C1_touchedSFNPC")
      if L2_2 == 0 then
        L2_2 = _util
        L2_2 = L2_2.AddMonologue
        L2_2(68)
      else
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L2_2 = L2_2("M1C1_haveHat")
        if L2_2 == 0 then
          L2_2 = _util
          L2_2 = L2_2.AddMonologue
          L2_2(72)
        else
          L2_2 = _util
          L2_2 = L2_2.GetVar
          L2_2 = L2_2("M1C1_haveHat")
          if L2_2 == 1 then
            L2_2 = _util
            L2_2 = L2_2.AddMonologue
            L2_2(72)
          else
            L2_2 = _util
            L2_2 = L2_2.GetVar
            L2_2 = L2_2("M1C1_SFNPChasHat")
            if L2_2 == 1 then
              L2_2 = _util
              L2_2 = L2_2.GetVar
              L2_2 = L2_2("M1C1_haveCard3")
              if L2_2 == 0 then
                L2_2 = _util
                L2_2 = L2_2.AddMonologue
                L2_2(69)
              end
            end
          end
        end
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
      _util.AddMonologue(72, "DialogStrings")
    end
  end
end
