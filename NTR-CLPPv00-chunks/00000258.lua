local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COLLIDED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  if L0_0 == 533 then
    function L1_1()
      _util.DisplayPopUp(488, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.AddSmileys(100, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      repeat
        scriptWait()
      until 0 + 1 == 40
      _util.EnableSpyPodFunc(_const.FLAG_SNOWCAT)
      _util.ShowMap()
      _util.EndMission()
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "M4C3_fightJB"
    L1_1 = L1_1(L2_2)
    if L1_1 == 0 and L0_0 < 199 then
      if L0_0 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L2_2 = 2757
        L3_3 = _const
        L3_3 = L3_3.CHANGE_DIALOG
        L1_1(L2_2, L3_3, 1)
      elseif L0_0 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L2_2 = 2758
        L3_3 = "DialogStrings"
        L1_1(L2_2, L3_3, _const.CHANGE_DIALOG, 345)
      elseif L0_0 == 100 then
        function L1_1()
          local L0_4, L1_5
          L0_4 = _util
          L0_4 = L0_4.DisableInput
          L0_4()
          L0_4 = 228
          L1_5 = 40
          _util.MoveObject(_id.M4C3_JBot_Pop, _util.GetX(_id.M4C3_JBot_Pop), L0_4, L1_5, 1)
          repeat
            scriptWait()
          until _util.GetY(_id.M4C3_JBot_Pop) == L0_4
          _util.EnableInput()
          _util.AddDialog(2747, _const.CHANGE_DIALOG, 101)
        end
        L2_2 = scriptPlay
        L3_3 = L1_1
        L2_2(L3_3)
      elseif L0_0 == 101 then
        function L1_1()
          local L0_6, L1_7
          L0_6 = _util
          L0_6 = L0_6.DisableInput
          L0_6()
          L0_6 = _util
          L0_6 = L0_6.PlaySFX
          L1_7 = 8
          L0_6(L1_7)
          L0_6 = _util
          L0_6 = L0_6.SwitchState
          L1_7 = "rescueSnowBot"
          L0_6(L1_7, _util.GetSelf())
          repeat
            L0_6 = scriptWait
            L0_6()
            L0_6 = _util
            L0_6 = L0_6.IsAnimPlaying
            L1_7 = _util
            L1_7 = L1_7.GetSelf
            L1_7 = L1_7()
            L0_6 = L0_6(L1_7, L1_7())
          until not L0_6
          L0_6 = _util
          L0_6 = L0_6.SwitchState
          L1_7 = ""
          L0_6(L1_7, _util.GetSelf())
          L0_6 = _util
          L0_6 = L0_6.SwitchState
          L1_7 = ""
          L0_6(L1_7, _id.M4C3_SBot_TM)
          L0_6 = 10
          L1_7 = 40
          _util.MoveObject(_id.M4C3_JBot_Pop, _util.GetX(_id.M4C3_JBot_Pop), L0_6, L1_7, 1)
          _util.PopCamera()
          repeat
            scriptWait()
          until _util.GetY(_id.M4C3_JBot_Pop) == L0_6
          _util.DelItem(_id.M4C3_JBot_Pop)
          _util.AddItem(_id.M4C3_JBot_Far)
          _util.EnableInput()
          _util.AddMonologue(2748, "DialogStrings", _const.CHANGE_NPC, _id.M4C3_JBot_Far, 102)
        end
        L2_2 = scriptPlay
        L3_3 = L1_1
        L2_2(L3_3)
      elseif L0_0 == 102 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L2_2 = 2749
        L3_3 = _const
        L3_3 = L3_3.CHANGE_DIALOG
        L1_1(L2_2, L3_3, 103)
      elseif L0_0 == 103 then
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L2_2 = 2750
        L3_3 = "DialogStrings"
        L1_1(L2_2, L3_3, _const.CHANGE_DIALOG, 345)
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "M4C3_fightJB"
      L1_1 = L1_1(L2_2)
      if L1_1 == 1 and L0_0 < 199 then
        if L0_0 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L2_2 = 2779
          L3_3 = _const
          L3_3 = L3_3.CHANGE_DIALOG
          L1_1(L2_2, L3_3, 1)
        elseif L0_0 == 1 then
          L1_1 = _util
          L1_1 = L1_1.AddMonologue
          L2_2 = 2780
          L3_3 = "DialogStrings"
          L1_1(L2_2, L3_3, _const.CHANGE_DIALOG, 345)
        elseif L0_0 == 50 then
          function L1_1()
            _util.DisableInput()
            _util.PlaySFX(52)
            _util.MoveObject(_util.GetSelf(), 198, 251)
            _util.SwitchState("succeedYellow", _util.GetSelf())
            repeat
              scriptWait()
            until not _util.IsAnimPlaying(_util.GetSelf()) and _util.GetY(_util.GetSelf()) == 251
            _util.DelItem(_util.GetSelf())
            _util.AddItem(_id.M4C3_JBot_Down)
            _util.SetVar("M4C3_blueJB", 0)
            _util.SetVar("M4C3_blackJB", 0)
            _util.SetVar("M4C3_redJB", 0)
            _util.SetVar("M4C3_purpleJB", 0)
            _util.SetVar("M4C3_yellowJB", 0)
            _util.SetVar("M4C3_greenJB", 0)
            _util.SetVar("M4C3_pinkJB", 0)
            _util.SetVar("M4C3_dusterJB", 0)
            _util.SetVar("M4C3_robotomyJB", 0)
            _util.EnableInput()
            _util.AddMonologue(2797, "DialogStrings", _const.CHANGE_NPC, _id.M4C3_JBot_Down, 51)
          end
          L2_2 = scriptPlay
          L3_3 = L1_1
          L2_2(L3_3)
        elseif L0_0 == 51 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L2_2 = 2798
          L3_3 = _const
          L3_3 = L3_3.CHANGE_DIALOG
          L1_1(L2_2, L3_3, 52)
        elseif L0_0 == 52 then
          L1_1 = _util
          L1_1 = L1_1.AddMonologue
          L2_2 = 2799
          L3_3 = "DialogStrings"
          L1_1(L2_2, L3_3, _const.END_DIALOG, 0)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L2_2 = "M4C3_fightJB"
          L3_3 = 2
          L1_1(L2_2, L3_3)
        end
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L2_2 = "M4C3_fightJB"
        L1_1 = L1_1(L2_2)
        if L1_1 == 2 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L2_2 = "M4C3_deadJB"
          L1_1 = L1_1(L2_2)
          if L1_1 == 0 and L0_0 < 199 then
            if L0_0 == 0 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L2_2 = 2800
              L3_3 = _const
              L3_3 = L3_3.CHANGE_DIALOG
              L1_1(L2_2, L3_3, 1)
            elseif L0_0 == 1 then
              L1_1 = _util
              L1_1 = L1_1.AddMonologue
              L2_2 = 2801
              L3_3 = "DialogStrings"
              L1_1(L2_2, L3_3, _const.END_DIALOG, 0)
            end
          end
        else
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L2_2 = "M4C3_deadJB"
          L1_1 = L1_1(L2_2)
          if L1_1 == 1 and L0_0 < 199 then
            if L0_0 == 0 then
              L1_1 = _util
              L1_1 = L1_1.AddMonologue
              L2_2 = 2826
              L1_1(L2_2)
            elseif L0_0 == 50 then
              function L1_1()
                local L0_8, L1_9, L2_10
                L0_8 = _util
                L0_8 = L0_8.DisableInput
                L0_8()
                L0_8 = _util
                L0_8 = L0_8.PlaySFX
                L1_9 = 84
                L0_8(L1_9)
                L0_8 = _util
                L0_8 = L0_8.SwitchState
                L1_9 = "bubble"
                L2_10 = _id
                L2_10 = L2_10.M4C3_JBot_Down
                L0_8(L1_9, L2_10)
                repeat
                  L0_8 = scriptWait
                  L0_8()
                  L0_8 = _util
                  L0_8 = L0_8.IsAnimPlaying
                  L1_9 = _id
                  L1_9 = L1_9.M4C3_JBot_Down
                  L0_8 = L0_8(L1_9)
                until not L0_8
                L0_8 = _util
                L0_8 = L0_8.SetVar
                L1_9 = "M4C3_deadJB"
                L2_10 = 2
                L0_8(L1_9, L2_10)
                L0_8 = _util
                L0_8 = L0_8.DelItem
                L1_9 = _id
                L1_9 = L1_9.M4C3_JBot_Down
                L0_8(L1_9)
                L0_8 = _util
                L0_8 = L0_8.AddItem
                L1_9 = _id
                L1_9 = L1_9.M4C3_JBot_Bubble
                L0_8(L1_9)
                L0_8 = 40
                L1_9 = 90
                L2_10 = _util
                L2_10 = L2_10.GetY
                L2_10 = L2_10(_id.M4C3_JBot_Bubble)
                L2_10 = L2_10 - L0_8
                _util.MoveObject(_id.M4C3_JBot_Bubble, _util.GetX(_id.M4C3_JBot_Bubble), L2_10, L1_9)
                repeat
                  scriptWait()
                until _util.GetY(_id.M4C3_JBot_Bubble) == L2_10
                _util.EnableInput()
                if _util.GetVar("M4C3_deadSB") == 4 then
                  _util.AddMapAlert(_const.STORY_MISSION, 564, 295, _const.M5C1MISSIONSTART, 153, 135)
                  if _util.IsCommandCoachActive() then
                    _util.ActivateNpc(_id.M4C3_JBot_Bubble, 533)
                  else
                    _util.AddMonologue(2830, "DialogStrings", _const.END_MISSION)
                  end
                else
                  _util.AddMonologue(2828, "DialogStrings", _const.END_DIALOG, 0)
                end
              end
              L2_2 = scriptPlay
              L3_3 = L1_1
              L2_2(L3_3)
            end
          else
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L2_2 = "M4C3_deadJB"
            L1_1 = L1_1(L2_2)
            if L1_1 == 2 and L0_0 < 199 then
              L1_1 = _util
              L1_1 = L1_1.AddMonologue
              L2_2 = 2829
              L1_1(L2_2)
            elseif L0_0 == 199 then
              function L1_1()
                _util.DisableInput()
                _util.PlaySFX(67)
                _util.SwitchState("failBlue", _util.GetSelf())
                repeat
                  scriptWait()
                until not _util.IsAnimPlaying(_util.GetSelf())
                _util.SwitchState("", _util.GetSelf())
                _util.SetVar("M4C3_blueJB", 1)
                _util.EnableInput()
                if _util.GetVar("M4C3_fightJB") == 0 then
                  _util.AddMonologue(2774, "DialogStrings", _const.CHANGE_DIALOG, 345)
                elseif _util.GetVar("M4C3_fightJB") == 1 then
                  _util.AddMonologue(2793, "DialogStrings", _const.CHANGE_DIALOG, 345)
                elseif _util.GetVar("M4C3_fightJB") == 2 and _util.GetVar("M4C3_deadJB") == 0 then
                  _util.AddMonologue(2815, "DialogStrings", _const.END_DIALOG, 0)
                elseif _util.GetVar("M4C3_deadJB") == 1 then
                  _util.AddMonologue(4504, "DialogStrings", _const.END_DIALOG, 0)
                end
              end
              L2_2 = scriptPlay
              L3_3 = L1_1
              L2_2(L3_3)
            elseif L0_0 == 200 then
              function L1_1()
                _util.DisableInput()
                _util.PlaySFX(67)
                _util.SwitchState("failBlack", _util.GetSelf())
                repeat
                  scriptWait()
                until not _util.IsAnimPlaying(_util.GetSelf())
                _util.SwitchState("", _util.GetSelf())
                _util.SetVar("M4C3_blackJB", 1)
                _util.EnableInput()
                if _util.GetVar("M4C3_fightJB") == 0 then
                  _util.AddMonologue(2770, "DialogStrings", _const.CHANGE_DIALOG, 345)
                elseif _util.GetVar("M4C3_fightJB") == 1 then
                  _util.AddMonologue(2795, "DialogStrings", _const.CHANGE_DIALOG, 345)
                elseif _util.GetVar("M4C3_fightJB") == 2 and _util.GetVar("M4C3_deadJB") == 0 then
                  _util.AddMonologue(2817, "DialogStrings", _const.END_DIALOG, 0)
                elseif _util.GetVar("M4C3_deadJB") == 1 then
                  _util.AddMonologue(4504, "DialogStrings", _const.END_DIALOG, 0)
                end
              end
              L2_2 = scriptPlay
              L3_3 = L1_1
              L2_2(L3_3)
            elseif L0_0 == 201 then
              function L1_1()
                _util.DisableInput()
                _util.PlaySFX(67)
                _util.SwitchState("failRed", _util.GetSelf())
                repeat
                  scriptWait()
                until not _util.IsAnimPlaying(_util.GetSelf())
                _util.SwitchState("", _util.GetSelf())
                _util.SetVar("M4C3_redJB", 1)
                _util.EnableInput()
                if _util.GetVar("M4C3_fightJB") == 0 then
                  _util.AddMonologue(2762, "DialogStrings", _const.CHANGE_DIALOG, 345)
                elseif _util.GetVar("M4C3_fightJB") == 1 then
                  _util.AddMonologue(2785, "DialogStrings", _const.CHANGE_DIALOG, 345)
                elseif _util.GetVar("M4C3_fightJB") == 2 and _util.GetVar("M4C3_deadJB") == 0 then
                  _util.AddMonologue(2805, "DialogStrings", _const.END_DIALOG, 0)
                elseif _util.GetVar("M4C3_deadJB") == 1 then
                  _util.AddMonologue(4504, "DialogStrings", _const.END_DIALOG, 0)
                end
              end
              L2_2 = scriptPlay
              L3_3 = L1_1
              L2_2(L3_3)
            elseif L0_0 == 202 then
              function L1_1()
                _util.DisableInput()
                _util.PlaySFX(67)
                _util.SwitchState("failPurple", _util.GetSelf())
                repeat
                  scriptWait()
                until not _util.IsAnimPlaying(_util.GetSelf())
                _util.SwitchState("", _util.GetSelf())
                _util.SetVar("M4C3_purpleJB", 1)
                _util.EnableInput()
                if _util.GetVar("M4C3_fightJB") == 0 then
                  _util.AddMonologue(2772, "DialogStrings", _const.CHANGE_DIALOG, 345)
                elseif _util.GetVar("M4C3_fightJB") == 1 then
                  _util.AddMonologue(2791, "DialogStrings", _const.CHANGE_DIALOG, 345)
                elseif _util.GetVar("M4C3_fightJB") == 2 and _util.GetVar("M4C3_deadJB") == 0 then
                  _util.AddMonologue(2813, "DialogStrings", _const.END_DIALOG, 0)
                elseif _util.GetVar("M4C3_deadJB") == 1 then
                  _util.AddMonologue(4504, "DialogStrings", _const.END_DIALOG, 0)
                end
              end
              L2_2 = scriptPlay
              L3_3 = L1_1
              L2_2(L3_3)
            elseif L0_0 == 203 then
              function L1_1()
                _util.DisableInput()
                _util.PlaySFX(67)
                _util.SwitchState("failYellow", _util.GetSelf())
                repeat
                  scriptWait()
                until not _util.IsAnimPlaying(_util.GetSelf())
                _util.SwitchState("", _util.GetSelf())
                _util.SetVar("M4C3_yellowJB", 1)
                _util.EnableInput()
                if _util.GetVar("M4C3_fightJB") == 0 then
                  _util.AddMonologue(2766, "DialogStrings", _const.CHANGE_DIALOG, 345)
                elseif _util.GetVar("M4C3_fightJB") == 2 and _util.GetVar("M4C3_deadJB") == 0 then
                  _util.AddMonologue(2809, "DialogStrings", _const.END_DIALOG, 0)
                elseif _util.GetVar("M4C3_deadJB") == 1 then
                  _util.AddMonologue(4504, "DialogStrings", _const.END_DIALOG, 0)
                end
              end
              L2_2 = scriptPlay
              L3_3 = L1_1
              L2_2(L3_3)
            elseif L0_0 == 204 then
              function L1_1()
                _util.DisableInput()
                _util.PlaySFX(67)
                _util.SwitchState("failGreen", _util.GetSelf())
                repeat
                  scriptWait()
                until not _util.IsAnimPlaying(_util.GetSelf())
                _util.SwitchState("", _util.GetSelf())
                _util.SetVar("M4C3_greenJB", 1)
                _util.EnableInput()
                if _util.GetVar("M4C3_fightJB") == 0 then
                  _util.AddMonologue(2764, "DialogStrings", _const.CHANGE_DIALOG, 345)
                elseif _util.GetVar("M4C3_fightJB") == 1 then
                  _util.AddMonologue(2787, "DialogStrings", _const.CHANGE_DIALOG, 345)
                elseif _util.GetVar("M4C3_fightJB") == 2 and _util.GetVar("M4C3_deadJB") == 0 then
                  _util.AddMonologue(2807, "DialogStrings", _const.END_DIALOG, 0)
                elseif _util.GetVar("M4C3_deadJB") == 1 then
                  _util.AddMonologue(4504, "DialogStrings", _const.END_DIALOG, 0)
                end
              end
              L2_2 = scriptPlay
              L3_3 = L1_1
              L2_2(L3_3)
            elseif L0_0 == 205 then
              function L1_1()
                _util.DisableInput()
                _util.PlaySFX(67)
                _util.SwitchState("failPink", _util.GetSelf())
                repeat
                  scriptWait()
                until not _util.IsAnimPlaying(_util.GetSelf())
                _util.SwitchState("", _util.GetSelf())
                _util.SetVar("M4C3_pinkJB", 1)
                _util.EnableInput()
                if _util.GetVar("M4C3_fightJB") == 0 then
                  _util.AddMonologue(2768, "DialogStrings", _const.CHANGE_DIALOG, 345)
                elseif _util.GetVar("M4C3_fightJB") == 1 then
                  _util.AddMonologue(2789, "DialogStrings", _const.CHANGE_DIALOG, 345)
                elseif _util.GetVar("M4C3_fightJB") == 2 and _util.GetVar("M4C3_deadJB") == 0 then
                  _util.AddMonologue(2811, "DialogStrings", _const.END_DIALOG, 0)
                elseif _util.GetVar("M4C3_deadJB") == 1 then
                  _util.AddMonologue(4504, "DialogStrings", _const.END_DIALOG, 0)
                end
              end
              L2_2 = scriptPlay
              L3_3 = L1_1
              L2_2(L3_3)
            elseif L0_0 == 206 then
              function L1_1()
                _util.DisableInput()
                _util.PlaySFX(67)
                _util.SwitchState("failDuster", _util.GetSelf())
                repeat
                  scriptWait()
                until not _util.IsAnimPlaying(_util.GetSelf())
                _util.SwitchState("", _util.GetSelf())
                _util.SetVar("M4C3_dusterJB", 1)
                _util.EnableInput()
                if _util.GetVar("M4C3_fightJB") == 1 then
                  _util.AddMonologue(2782, "DialogStrings", _const.END_DIALOG, 0)
                elseif _util.GetVar("M4C3_fightJB") == 2 and _util.GetVar("M4C3_deadJB") == 0 then
                  _util.AddMonologue(2803, "DialogStrings", _const.END_DIALOG, 0)
                end
              end
              L2_2 = scriptPlay
              L3_3 = L1_1
              L2_2(L3_3)
            elseif L0_0 == 207 then
              function L1_1()
                _util.DisableInput()
                _util.SetNextRoom(45)
                _util.StartMiniGame(_const.ROBOTOMY, 2, 1000)
                repeat
                  scriptWait()
                until _util.GetGameState() ~= _const.MISSION
                repeat
                  scriptWait()
                until _util.GetGameState() == _const.MISSION
                if _util.GetMinigameOutput1() == 1 then
                  _util.PlaySFX(54)
                  _util.ActivateNpc(_id.M4C3_JBot_Down, 208)
                  _util.SetVar("M4C3_deadJB", 1)
                  _util.SetVar("M4C3_blueJB", 0)
                  _util.SetVar("M4C3_blackJB", 0)
                  _util.SetVar("M4C3_redJB", 0)
                  _util.SetVar("M4C3_purpleJB", 0)
                  _util.SetVar("M4C3_yellowJB", 0)
                  _util.SetVar("M4C3_greenJB", 0)
                  _util.SetVar("M4C3_pinkJB", 0)
                  _util.SetVar("M4C3_dusterJB", 0)
                  _util.SetVar("M4C3_robotomyJB", 0)
                end
              end
              L2_2 = scriptPlay
              L3_3 = L1_1
              L2_2(L3_3)
            elseif L0_0 == 208 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L2_2 = 2823
              L3_3 = _const
              L3_3 = L3_3.CHANGE_DIALOG
              L1_1(L2_2, L3_3, 209)
            elseif L0_0 == 209 then
              L1_1 = _util
              L1_1 = L1_1.AddMonologue
              L2_2 = 2824
              L3_3 = "DialogStrings"
              L1_1(L2_2, L3_3, _const.CHANGE_DIALOG, 210)
            elseif L0_0 == 210 then
              L1_1 = _util
              L1_1 = L1_1.AddMonologue
              L2_2 = 2825
              L3_3 = "DialogStrings"
              L1_1(L2_2, L3_3, _const.END_DIALOG, 0)
            elseif L0_0 == 345 then
              function L1_1()
                repeat
                  if _util.GetVar("M4C3_moveBot") == 1 then
                    _util.MoveObject(_id.M4C3_JBot_Far, 37, _util.GetY(_id.M4C3_JBot_Far), 80)
                  end
                  repeat
                    scriptWait()
                  until 37 >= _util.GetX(_id.M4C3_JBot_Far) or _util.GetVar("M4C3_moveBot") == 0
                  if _util.GetVar("M4C3_moveBot") == 1 then
                    _util.MoveObject(_id.M4C3_JBot_Far, 140, _util.GetY(_id.M4C3_JBot_Far), 80)
                  end
                  repeat
                    scriptWait()
                  until _util.GetX(_id.M4C3_JBot_Far) >= 140 or _util.GetVar("M4C3_moveBot") == 0
                  _util.IncVar("M4C3_robotCount")
                until _util.GetVar("M4C3_moveBot") == 0 or _util.GetVar("M4C3_robotCount") >= 8
                _util.ClearEffects()
                if _util.GetVar("M4C3_moveBot") == 1 then
                  _util.ActivateNpc(_id.M4C3_JBot_Far, 0)
                end
              end
              function L2_2()
                repeat
                  if _util.GetVar("M4C3_moveBot") == 1 then
                    _util.MoveObject(_id.M4C3_JBot_Far, 198, 217)
                  end
                  repeat
                    scriptWait()
                  until 217 >= _util.GetY(_id.M4C3_JBot_Far) or _util.GetVar("M4C3_moveBot") == 0
                  if _util.GetVar("M4C3_moveBot") == 1 then
                    _util.MoveObject(_id.M4C3_JBot_Far, 198, 217)
                  end
                  repeat
                    scriptWait()
                  until 217 <= _util.GetY(_id.M4C3_JBot_Far) or _util.GetVar("M4C3_moveBot") == 0
                  _util.IncVar("M4C3_robotCount")
                until _util.GetVar("M4C3_moveBot") == 0 or _util.GetVar("M4C3_robotCount") >= 8
                _util.ClearEffects()
                if _util.GetVar("M4C3_moveBot") == 1 then
                  _util.ActivateNpc(_id.M4C3_JBot_Far, 0)
                end
              end
              L3_3 = _util
              L3_3 = L3_3.SetVar
              L3_3("M4C3_robotCount", 0)
              L3_3 = _util
              L3_3 = L3_3.SetVar
              L3_3("M4C3_moveBot", 1)
              L3_3 = _util
              L3_3 = L3_3.SetConversationCount
              L3_3(0)
              L3_3 = _util
              L3_3 = L3_3.IsCommandCoachActive
              L3_3 = L3_3()
              if L3_3 == false then
                L3_3 = _util
                L3_3 = L3_3.GetVar
                L3_3 = L3_3("M4C3_fightJB")
                if L3_3 == 0 then
                  L3_3 = scriptPlay
                  L3_3(L1_1)
                else
                  L3_3 = _util
                  L3_3 = L3_3.GetVar
                  L3_3 = L3_3("M4C3_fightJB")
                  if L3_3 == 1 then
                    L3_3 = scriptPlay
                    L3_3(L2_2)
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.ITEM_DROPPED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _id
  L1_1 = L1_1.Inventory_PuffleBlue
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "M4C3_blueJB"
    L1_1 = L1_1(L2_2)
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "M4C3_deadJB"
      L1_1 = L1_1(L2_2)
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.SetSuccess
        L2_2 = _util
        L2_2 = L2_2.GetSelf
        L2_2 = L2_2()
        L3_3 = true
        L1_1(L2_2, L3_3)
        L1_1 = _util
        L1_1 = L1_1.SetVar
        L2_2 = "M4C3_hit"
        L3_3 = 0
        L1_1(L2_2, L3_3)
        L1_1 = _util
        L1_1 = L1_1.SetVar
        L2_2 = "M4C3_moveBot"
        L3_3 = 0
        L1_1(L2_2, L3_3)
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "M4C3_deadJB"
      L1_1 = L1_1(L2_2)
      if L1_1 > 0 then
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L2_2 = 2827
        L1_1(L2_2)
      end
    end
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_PuffleBlack
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "M4C3_blackJB"
      L1_1 = L1_1(L2_2)
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L2_2 = "M4C3_deadJB"
        L1_1 = L1_1(L2_2)
        if L1_1 == 0 then
          L1_1 = _util
          L1_1 = L1_1.SetSuccess
          L2_2 = _util
          L2_2 = L2_2.GetSelf
          L2_2 = L2_2()
          L3_3 = true
          L1_1(L2_2, L3_3)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L2_2 = "M4C3_hit"
          L3_3 = 0
          L1_1(L2_2, L3_3)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L2_2 = "M4C3_moveBot"
          L3_3 = 0
          L1_1(L2_2, L3_3)
        end
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L2_2 = "M4C3_deadJB"
        L1_1 = L1_1(L2_2)
        if L1_1 > 0 then
          L1_1 = _util
          L1_1 = L1_1.AddMonologue
          L2_2 = 2827
          L1_1(L2_2)
        end
      end
    else
      L1_1 = _id
      L1_1 = L1_1.Inventory_PuffleRed
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L2_2 = "M4C3_deadJB"
        L1_1 = L1_1(L2_2)
        if L1_1 == 0 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L2_2 = "M4C3_redJB"
          L1_1 = L1_1(L2_2)
          if L1_1 == 0 then
            L1_1 = _util
            L1_1 = L1_1.SetSuccess
            L2_2 = _util
            L2_2 = L2_2.GetSelf
            L2_2 = L2_2()
            L3_3 = true
            L1_1(L2_2, L3_3)
            L1_1 = _util
            L1_1 = L1_1.SetVar
            L2_2 = "M4C3_hit"
            L3_3 = 0
            L1_1(L2_2, L3_3)
            L1_1 = _util
            L1_1 = L1_1.SetVar
            L2_2 = "M4C3_moveBot"
            L3_3 = 0
            L1_1(L2_2, L3_3)
          else
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L2_2 = "M4C3_deadJB"
            L1_1 = L1_1(L2_2)
            if L1_1 > 0 then
              L1_1 = _util
              L1_1 = L1_1.AddMonologue
              L2_2 = 2827
              L1_1(L2_2)
            end
          end
        end
      else
        L1_1 = _id
        L1_1 = L1_1.Inventory_PufflePurple
        if L0_0 == L1_1 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L2_2 = "M4C3_purpleJB"
          L1_1 = L1_1(L2_2)
          if L1_1 == 0 then
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L2_2 = "M4C3_deadJB"
            L1_1 = L1_1(L2_2)
          else
            if not (L1_1 < 2) then
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L2_2 = "M4C3_deadJB"
              L1_1 = L1_1(L2_2)
          end
          elseif L1_1 == 1 then
            L1_1 = _util
            L1_1 = L1_1.SetSuccess
            L2_2 = _util
            L2_2 = L2_2.GetSelf
            L2_2 = L2_2()
            L3_3 = true
            L1_1(L2_2, L3_3)
            L1_1 = _util
            L1_1 = L1_1.SetVar
            L2_2 = "M4C3_hit"
            L3_3 = 0
            L1_1(L2_2, L3_3)
            L1_1 = _util
            L1_1 = L1_1.SetVar
            L2_2 = "M4C3_moveBot"
            L3_3 = 0
            L1_1(L2_2, L3_3)
          end
        else
          L1_1 = _id
          L1_1 = L1_1.Inventory_PuffleYellow
          if L0_0 == L1_1 then
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L2_2 = "M4C3_yellowJB"
            L1_1 = L1_1(L2_2)
            if L1_1 ~= 0 then
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L2_2 = "M4C3_fightJB"
              L1_1 = L1_1(L2_2)
            else
              if L1_1 == 1 then
                L1_1 = _util
                L1_1 = L1_1.GetVar
                L2_2 = "M4C3_deadJB"
                L1_1 = L1_1(L2_2)
                if L1_1 == 0 then
                  L1_1 = _util
                  L1_1 = L1_1.SetSuccess
                  L2_2 = _util
                  L2_2 = L2_2.GetSelf
                  L2_2 = L2_2()
                  L3_3 = true
                  L1_1(L2_2, L3_3)
                  L1_1 = _util
                  L1_1 = L1_1.SetVar
                  L2_2 = "M4C3_hit"
                  L3_3 = 0
                  L1_1(L2_2, L3_3)
                  L1_1 = _util
                  L1_1 = L1_1.SetVar
                  L2_2 = "M4C3_moveBot"
                  L3_3 = 0
                  L1_1(L2_2, L3_3)
                end
            end
            else
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L2_2 = "M4C3_deadJB"
              L1_1 = L1_1(L2_2)
              if L1_1 > 0 then
                L1_1 = _util
                L1_1 = L1_1.AddMonologue
                L2_2 = 2827
                L1_1(L2_2)
              end
            end
          else
            L1_1 = _id
            L1_1 = L1_1.Inventory_PuffleGreen
            if L0_0 == L1_1 then
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L2_2 = "M4C3_greenJB"
              L1_1 = L1_1(L2_2)
              if L1_1 == 0 then
                L1_1 = _util
                L1_1 = L1_1.GetVar
                L2_2 = "M4C3_deadJB"
                L1_1 = L1_1(L2_2)
                if L1_1 == 0 then
                  L1_1 = _util
                  L1_1 = L1_1.SetSuccess
                  L2_2 = _util
                  L2_2 = L2_2.GetSelf
                  L2_2 = L2_2()
                  L3_3 = true
                  L1_1(L2_2, L3_3)
                  L1_1 = _util
                  L1_1 = L1_1.SetVar
                  L2_2 = "M4C3_moveBot"
                  L3_3 = 0
                  L1_1(L2_2, L3_3)
                  L1_1 = _util
                  L1_1 = L1_1.SetVar
                  L2_2 = "M4C3_hit"
                  L3_3 = 0
                  L1_1(L2_2, L3_3)
                end
              else
                L1_1 = _util
                L1_1 = L1_1.GetVar
                L2_2 = "M4C3_deadJB"
                L1_1 = L1_1(L2_2)
                if L1_1 > 0 then
                  L1_1 = _util
                  L1_1 = L1_1.AddMonologue
                  L2_2 = 2827
                  L1_1(L2_2)
                end
              end
            else
              L1_1 = _id
              L1_1 = L1_1.Inventory_PufflePink
              if L0_0 == L1_1 then
                L1_1 = _util
                L1_1 = L1_1.GetVar
                L2_2 = "M4C3_pinkJB"
                L1_1 = L1_1(L2_2)
                if L1_1 == 0 then
                  L1_1 = _util
                  L1_1 = L1_1.GetVar
                  L2_2 = "M4C3_deadJB"
                  L1_1 = L1_1(L2_2)
                  if L1_1 == 0 then
                    L1_1 = _util
                    L1_1 = L1_1.SetSuccess
                    L2_2 = _util
                    L2_2 = L2_2.GetSelf
                    L2_2 = L2_2()
                    L3_3 = true
                    L1_1(L2_2, L3_3)
                    L1_1 = _util
                    L1_1 = L1_1.SetVar
                    L2_2 = "M4C3_hit"
                    L3_3 = 0
                    L1_1(L2_2, L3_3)
                    L1_1 = _util
                    L1_1 = L1_1.SetVar
                    L2_2 = "M4C3_moveBot"
                    L3_3 = 0
                    L1_1(L2_2, L3_3)
                  end
                else
                  L1_1 = _util
                  L1_1 = L1_1.GetVar
                  L2_2 = "M4C3_deadJB"
                  L1_1 = L1_1(L2_2)
                  if L1_1 > 0 then
                    L1_1 = _util
                    L1_1 = L1_1.AddMonologue
                    L2_2 = 2827
                    L1_1(L2_2)
                  end
                end
              else
                L1_1 = _id
                L1_1 = L1_1.Inventory_MechanoDuster
                if L0_0 == L1_1 then
                  L1_1 = _util
                  L1_1 = L1_1.GetVar
                  L2_2 = "M4C3_dusterJB"
                  L1_1 = L1_1(L2_2)
                  if L1_1 == 0 then
                    L1_1 = _util
                    L1_1 = L1_1.GetVar
                    L2_2 = "M4C3_deadJB"
                    L1_1 = L1_1(L2_2)
                    if L1_1 == 0 then
                      L1_1 = _util
                      L1_1 = L1_1.GetVar
                      L2_2 = "M4C3_fightJB"
                      L1_1 = L1_1(L2_2)
                      if L1_1 == 0 then
                        L1_1 = _util
                        L1_1 = L1_1.AddMonologue
                        L2_2 = 2760
                        L1_1(L2_2)
                      else
                        L1_1 = _util
                        L1_1 = L1_1.GetVar
                        L2_2 = "M4C3_fightJB"
                        L1_1 = L1_1(L2_2)
                        if L1_1 == 1 then
                          L1_1 = _util
                          L1_1 = L1_1.SetVar
                          L2_2 = "M4C3_moveBot"
                          L3_3 = 0
                          L1_1(L2_2, L3_3)
                          L1_1 = _util
                          L1_1 = L1_1.AddDialog
                          L2_2 = 2781
                          L3_3 = _const
                          L3_3 = L3_3.CHANGE_DIALOG
                          L1_1(L2_2, L3_3, 206)
                        else
                          L1_1 = _util
                          L1_1 = L1_1.GetVar
                          L2_2 = "M4C3_fightJB"
                          L1_1 = L1_1(L2_2)
                          if L1_1 == 2 then
                            L1_1 = _util
                            L1_1 = L1_1.AddDialog
                            L2_2 = 2802
                            L3_3 = _const
                            L3_3 = L3_3.CHANGE_DIALOG
                            L1_1(L2_2, L3_3, 206)
                          end
                        end
                      end
                    end
                  else
                    L1_1 = _util
                    L1_1 = L1_1.GetVar
                    L2_2 = "M4C3_deadJB"
                    L1_1 = L1_1(L2_2)
                    if L1_1 > 0 then
                      L1_1 = _util
                      L1_1 = L1_1.AddMonologue
                      L2_2 = 2827
                      L1_1(L2_2)
                    end
                  end
                else
                  L1_1 = _id
                  L1_1 = L1_1.Inventory_RobotomyTool
                  if L0_0 == L1_1 then
                    L1_1 = _util
                    L1_1 = L1_1.GetVar
                    L2_2 = "M4C3_robotomyJB"
                    L1_1 = L1_1(L2_2)
                    if L1_1 ~= 0 then
                      L1_1 = _util
                      L1_1 = L1_1.GetVar
                      L2_2 = "M4C3_fightJB"
                      L1_1 = L1_1(L2_2)
                    else
                      if L1_1 == 2 then
                        L1_1 = _util
                        L1_1 = L1_1.GetVar
                        L2_2 = "M4C3_deadJB"
                        L1_1 = L1_1(L2_2)
                        if L1_1 == 0 then
                          L1_1 = _util
                          L1_1 = L1_1.GetVar
                          L2_2 = "M4C3_fightJB"
                          L1_1 = L1_1(L2_2)
                          if L1_1 == 0 then
                            L1_1 = _util
                            L1_1 = L1_1.AddMonologue
                            L2_2 = 2759
                            L1_1(L2_2)
                          else
                            L1_1 = _util
                            L1_1 = L1_1.GetVar
                            L2_2 = "M4C3_fightJB"
                            L1_1 = L1_1(L2_2)
                            if L1_1 == 1 then
                              function L1_1()
                                _util.DisableInput()
                                _util.PlaySFX(67)
                                _util.SwitchState("failRobotomy", _util.GetSelf())
                                repeat
                                  scriptWait()
                                until not _util.IsAnimPlaying(_util.GetSelf())
                                _util.SwitchState("", _util.GetSelf())
                                _util.SetVar("M4C3_robotomyJB", 1)
                                _util.EnableInput()
                                _util.AddMonologue(2783, "DialogStrings", _const.CHANGE_DIALOG, 345)
                              end
                              L2_2 = _util
                              L2_2 = L2_2.SetVar
                              L3_3 = "M4C3_moveBot"
                              L2_2(L3_3, 0)
                              L2_2 = scriptPlay
                              L3_3 = L1_1
                              L2_2(L3_3)
                            else
                              L1_1 = _util
                              L1_1 = L1_1.GetVar
                              L2_2 = "M4C3_fightJB"
                              L1_1 = L1_1(L2_2)
                              if L1_1 == 2 then
                                L1_1 = _util
                                L1_1 = L1_1.PlaySFX
                                L2_2 = 123
                                L1_1(L2_2)
                                L1_1 = _util
                                L1_1 = L1_1.AddDialog
                                L2_2 = 2818
                                L3_3 = _const
                                L3_3 = L3_3.CHANGE_DIALOG
                                L1_1(L2_2, L3_3, 207)
                              end
                            end
                          end
                        end
                    end
                    else
                      L1_1 = _util
                      L1_1 = L1_1.GetVar
                      L2_2 = "M4C3_deadJB"
                      L1_1 = L1_1(L2_2)
                      if L1_1 > 0 then
                        L1_1 = _util
                        L1_1 = L1_1.AddMonologue
                        L2_2 = 2827
                        L1_1(L2_2)
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.COLLIDED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = 0
  L2_2 = 0
  L3_3 = _id
  L3_3 = L3_3.Inventory_PuffleBlue
  if L0_0 == L3_3 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("M4C3_hit")
    if L3_3 == 0 then
      L3_3 = _util
      L3_3 = L3_3.SetVar
      L3_3("M4C3_hit", 1)
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("M4C3_fightJB")
      if L3_3 == 0 then
        L3_3 = _util
        L3_3 = L3_3.AddDialog
        L3_3(2773, _const.CHANGE_DIALOG, 199)
      else
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L3_3 = L3_3("M4C3_fightJB")
        if L3_3 == 1 then
          L3_3 = _util
          L3_3 = L3_3.AddDialog
          L3_3(2792, _const.CHANGE_DIALOG, 199)
        else
          L3_3 = _util
          L3_3 = L3_3.GetVar
          L3_3 = L3_3("M4C3_fightJB")
          if L3_3 == 2 then
            L3_3 = _util
            L3_3 = L3_3.AddDialog
            L3_3(2814, _const.CHANGE_DIALOG, 199)
          end
        end
      end
    end
  else
    L3_3 = _id
    L3_3 = L3_3.Inventory_PuffleBlack
    if L0_0 == L3_3 then
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("M4C3_hit")
      if L3_3 == 0 then
        L3_3 = _util
        L3_3 = L3_3.SetVar
        L3_3("M4C3_hit", 1)
        function L3_3()
          _util.DisableInput()
          _UPVALUE0_ = 180
          repeat
            _UPVALUE1_ = _UPVALUE1_ + 1
            scriptWait()
          until _UPVALUE1_ >= _UPVALUE0_
          _util.EnableInput()
          if _util.GetVar("M4C3_fightJB") == 0 then
            _util.AddDialog(2769, _const.CHANGE_DIALOG, 200)
          elseif _util.GetVar("M4C3_fightJB") == 1 then
            _util.AddDialog(2794, _const.CHANGE_DIALOG, 200)
          elseif _util.GetVar("M4C3_fightJB") == 2 then
            _util.AddDialog(2816, _const.CHANGE_DIALOG, 200)
          end
        end
        scriptPlay(L3_3)
      end
    else
      L3_3 = _id
      L3_3 = L3_3.Inventory_PuffleRed
      if L0_0 == L3_3 then
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L3_3 = L3_3("M4C3_hit")
        if L3_3 == 0 then
          L3_3 = _util
          L3_3 = L3_3.SetVar
          L3_3("M4C3_hit", 1)
          function L3_3()
            _util.DisableInput()
            _UPVALUE0_ = 70
            repeat
              _UPVALUE1_ = _UPVALUE1_ + 1
              scriptWait()
            until _UPVALUE1_ >= _UPVALUE0_
            _util.EnableInput()
            if _util.GetVar("M4C3_fightJB") == 0 then
              _util.AddDialog(2761, _const.CHANGE_DIALOG, 201)
            elseif _util.GetVar("M4C3_fightJB") == 1 then
              _util.AddDialog(2784, _const.CHANGE_DIALOG, 201)
            elseif _util.GetVar("M4C3_fightJB") == 2 then
              _util.AddDialog(2804, _const.CHANGE_DIALOG, 201)
            end
          end
          scriptPlay(L3_3)
        end
      else
        L3_3 = _id
        L3_3 = L3_3.Inventory_PufflePurple
        if L0_0 == L3_3 then
          L3_3 = _util
          L3_3 = L3_3.GetVar
          L3_3 = L3_3("M4C3_hit")
          if L3_3 == 0 then
            L3_3 = _util
            L3_3 = L3_3.SetVar
            L3_3("M4C3_hit", 1)
            L3_3 = _util
            L3_3 = L3_3.GetVar
            L3_3 = L3_3("M4C3_fightJB")
            if L3_3 == 0 then
              L3_3 = _util
              L3_3 = L3_3.AddDialog
              L3_3(2771, _const.CHANGE_DIALOG, 202)
            else
              L3_3 = _util
              L3_3 = L3_3.GetVar
              L3_3 = L3_3("M4C3_fightJB")
              if L3_3 == 1 then
                L3_3 = _util
                L3_3 = L3_3.ActivateNpc
                L3_3(_id.M4C3_JBot_Close, 202)
              else
                L3_3 = _util
                L3_3 = L3_3.GetVar
                L3_3 = L3_3("M4C3_fightJB")
                if L3_3 == 2 then
                  L3_3 = _util
                  L3_3 = L3_3.GetVar
                  L3_3 = L3_3("M4C3_deadJB")
                  if L3_3 == 0 then
                    L3_3 = _util
                    L3_3 = L3_3.AddDialog
                    L3_3(2812, _const.CHANGE_DIALOG, 202)
                  end
                else
                  L3_3 = _util
                  L3_3 = L3_3.GetVar
                  L3_3 = L3_3("M4C3_deadJB")
                  if L3_3 == 1 then
                    L3_3 = _util
                    L3_3 = L3_3.ActivateNpc
                    L3_3(_util.GetSelf(), 50)
                  end
                end
              end
            end
          end
        else
          L3_3 = _id
          L3_3 = L3_3.Inventory_PuffleYellow
          if L0_0 == L3_3 then
            L3_3 = _util
            L3_3 = L3_3.GetVar
            L3_3 = L3_3("M4C3_hit")
            if L3_3 == 0 then
              L3_3 = _util
              L3_3 = L3_3.SetVar
              L3_3("M4C3_hit", 1)
              L3_3 = _util
              L3_3 = L3_3.GetVar
              L3_3 = L3_3("M4C3_fightJB")
              if L3_3 == 0 then
                L3_3 = _util
                L3_3 = L3_3.AddDialog
                L3_3(2765, _const.CHANGE_DIALOG, 203)
              else
                L3_3 = _util
                L3_3 = L3_3.GetVar
                L3_3 = L3_3("M4C3_fightJB")
                if L3_3 == 1 then
                  L3_3 = _util
                  L3_3 = L3_3.AddDialog
                  L3_3(2796, _const.CHANGE_DIALOG, 50)
                else
                  L3_3 = _util
                  L3_3 = L3_3.GetVar
                  L3_3 = L3_3("M4C3_fightJB")
                  if L3_3 == 2 then
                    L3_3 = _util
                    L3_3 = L3_3.AddDialog
                    L3_3(2808, _const.CHANGE_DIALOG, 203)
                  end
                end
              end
            end
          else
            L3_3 = _id
            L3_3 = L3_3.Inventory_PuffleGreen
            if L0_0 == L3_3 then
              L3_3 = _util
              L3_3 = L3_3.GetVar
              L3_3 = L3_3("M4C3_hit")
              if L3_3 == 0 then
                L3_3 = _util
                L3_3 = L3_3.SetVar
                L3_3("M4C3_hit", 1)
                function L3_3()
                  _util.DisableInput()
                  _UPVALUE0_ = 100
                  repeat
                    _UPVALUE1_ = _UPVALUE1_ + 1
                    scriptWait()
                  until _UPVALUE1_ >= _UPVALUE0_
                  _util.EnableInput()
                  if _util.GetVar("M4C3_fightJB") == 0 then
                    _util.AddDialog(2763, _const.CHANGE_DIALOG, 204)
                  elseif _util.GetVar("M4C3_fightJB") == 1 then
                    _util.AddDialog(2786, _const.CHANGE_DIALOG, 204)
                  elseif _util.GetVar("M4C3_fightJB") == 2 then
                    _util.AddDialog(2806, _const.CHANGE_DIALOG, 204)
                  end
                end
                scriptPlay(L3_3)
              end
            else
              L3_3 = _id
              L3_3 = L3_3.Inventory_PufflePink
              if L0_0 == L3_3 then
                L3_3 = _util
                L3_3 = L3_3.GetVar
                L3_3 = L3_3("M4C3_hit")
                if L3_3 == 0 then
                  L3_3 = _util
                  L3_3 = L3_3.SetVar
                  L3_3("M4C3_hit", 1)
                  L3_3 = _util
                  L3_3 = L3_3.GetVar
                  L3_3 = L3_3("M4C3_fightJB")
                  if L3_3 == 0 then
                    L3_3 = _util
                    L3_3 = L3_3.AddDialog
                    L3_3(2767, _const.CHANGE_DIALOG, 205)
                  else
                    L3_3 = _util
                    L3_3 = L3_3.GetVar
                    L3_3 = L3_3("M4C3_fightJB")
                    if L3_3 == 1 then
                      L3_3 = _util
                      L3_3 = L3_3.AddDialog
                      L3_3(2788, _const.CHANGE_DIALOG, 205)
                    else
                      L3_3 = _util
                      L3_3 = L3_3.GetVar
                      L3_3 = L3_3("M4C3_fightJB")
                      if L3_3 == 2 then
                        L3_3 = _util
                        L3_3 = L3_3.AddDialog
                        L3_3(2810, _const.CHANGE_DIALOG, 205)
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
