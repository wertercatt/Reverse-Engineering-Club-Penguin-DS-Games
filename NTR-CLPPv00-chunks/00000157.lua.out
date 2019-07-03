local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
L3_3 = _const
L3_3 = L3_3.CREATED
if L2_2 == L3_3 then
  L2_2 = _util
  L2_2 = L2_2.AddInterest
  L3_3 = _const
  L3_3 = L3_3.TOUCHED
  L2_2(L3_3)
end
if L0_0 == 2 and L1_1 == 2 then
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  L3_3 = _const
  L3_3 = L3_3.TOUCHED
  if L2_2 == L3_3 then
    L2_2 = _util
    L2_2 = L2_2.GetConversationCount
    L2_2 = L2_2()
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("mapFound")
    if L3_3 == 1 then
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("plansDecoded")
      if L3_3 == 1 then
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L3_3 = L3_3("note4Dot")
        if L3_3 == 0 then
          L3_3 = _util
          L3_3 = L3_3.AddMonologue
          L3_3(1048, "DialogStrings", _const.END_DIALOG, 0)
        end
      end
    else
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("mapFound")
      if L3_3 ~= 0 then
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L3_3 = L3_3("plansDecoded")
      else
        if L3_3 == 0 then
          L3_3 = _util
          L3_3 = L3_3.AddMonologue
          L3_3(1047, "DialogStrings", _const.END_DIALOG, 0)
      end
      else
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L3_3 = L3_3("plansDecoded")
        if L3_3 == 1 then
          L3_3 = _util
          L3_3 = L3_3.GetVar
          L3_3 = L3_3("mapFound")
          if L3_3 == 1 then
            if L2_2 == 0 then
              L3_3 = _util
              L3_3 = L3_3.AddMonologue
              L3_3(1069, "DialogStrings", _const.CHANGE_DIALOG, 1)
            elseif L2_2 == 1 then
              L3_3 = _util
              L3_3 = L3_3.AddMonologue
              L3_3(1070, "DialogStrings", _const.CHANGE_DIALOG, 2)
            elseif L2_2 == 2 then
              L3_3 = _util
              L3_3 = L3_3.IsCommandCoachActive
              L3_3 = L3_3()
              if L3_3 then
                L3_3 = _util
                L3_3 = L3_3.AddMonologue
                L3_3(1071, "DialogStrings", _const.CHANGE_DIALOG, 533)
              else
                L3_3 = _util
                L3_3 = L3_3.AddMonologue
                L3_3(1071, "DialogStrings", _const.END_MISSION, 0)
              end
            elseif L2_2 == 533 then
              function L3_3()
                _util.DisplayPopUp(488, "UI/Smilie", false)
                repeat
                  scriptWait()
                until _util.IsPopUpVisible() == false
                _util.AddSmileys(100, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
                repeat
                  scriptWait()
                until 0 + 1 == 40
                _util.EndMission()
              end
              scriptPlay(L3_3)
            end
          end
        end
      end
    end
  end
end
