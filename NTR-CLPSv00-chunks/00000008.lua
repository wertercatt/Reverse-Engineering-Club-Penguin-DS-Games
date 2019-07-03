local L0_0, L1_1
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
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("robostatus")
  if L1_1 == 5 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(3245, _const.CHANGE_DIALOG, 1)
      L1_1 = _util
      L1_1 = L1_1.PlaySFX
      L1_1(98)
    elseif L0_0 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(3246, "DialogStrings", _const.END_DIALOG, 0)
    elseif L0_0 == 10 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(3250, _const.END_DIALOG, 0)
      L1_1 = _util
      L1_1 = L1_1.PlaySFX
      L1_1(98)
    elseif L0_0 == 100 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(3238, _const.CHANGE_NPC, _id.M5C1_Gary_TM1, 100)
      L1_1 = _util
      L1_1 = L1_1.PlaySFX
      L1_1(98)
    elseif L0_0 == 101 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(3240, _const.CHANGE_DIALOG, 102)
      L1_1 = _util
      L1_1 = L1_1.PlaySFX
      L1_1(98)
    elseif L0_0 == 102 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(3241, "DialogStrings", _const.END_DIALOG, 0)
    elseif L0_0 == 199 then
      function L1_1()
        _util.DisableInput()
        _util.PlaySFX(55)
        _util.SetSpawn(0, _id.M5C1_SuperRobot_TM1)
        _util.SetSpawn(0, _id.M5C1_Gary_TM1)
        _util.SetSpawn(1, _id.M5C1_SuperRobot_TM2)
        _util.SetSpawn(1, _id.M5C1_Gary_TM2)
        _util.SetVisible(0, _id.M5C1_Gary_TM2)
        _util.SetSpawn(1, _id.M5C1_Chirp_TallestM)
        _util.SetVar("robostatus", 6)
        _util.EnableInput()
        _util.StartCutscene(_const.M5C1TALL1)
      end
      scriptPlay(L1_1)
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("robostatus")
    if L1_1 == 6 then
      if L0_0 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(3294, _const.CHANGE_DIALOG, 1)
        L1_1 = _util
        L1_1 = L1_1.PlaySFX
        L1_1(98)
      elseif L0_0 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L1_1(3295, "DialogStrings", _const.END_DIALOG, 0)
      elseif L0_0 == 150 then
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L1_1(3297, "DialogStrings", _const.END_DIALOG, 0)
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("robostatus")
      if L1_1 == 7 then
        if L0_0 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(3310, _const.CHANGE_DIALOG, 1)
          L1_1 = _util
          L1_1 = L1_1.PlaySFX
          L1_1(98)
        elseif L0_0 == 1 then
          L1_1 = _util
          L1_1 = L1_1.AddMonologue
          L1_1(3311, "DialogStrings", _const.END_DIALOG, 0)
        elseif L0_0 == 203 then
          L1_1 = _util
          L1_1 = L1_1.AddMonologue
          L1_1(3321, "DialogStrings", _const.END_DIALOG, 0)
        elseif L0_0 == 204 then
          L1_1 = _util
          L1_1 = L1_1.AddMonologue
          L1_1(3314, "DialogStrings", _const.END_DIALOG, 0)
        end
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("robostatus")
        if L1_1 == 8 then
          if L0_0 == 0 then
            L1_1 = _util
            L1_1 = L1_1.AddDialog
            L1_1(3332, _const.CHANGE_DIALOG, 1)
            L1_1 = _util
            L1_1 = L1_1.PlaySFX
            L1_1(98)
          elseif L0_0 == 1 then
            L1_1 = _util
            L1_1 = L1_1.AddMonologue
            L1_1(3333, "DialogStrings", _const.END_DIALOG, 0)
          elseif L0_0 == 208 then
            function L1_1()
              _util.StartMiniGame(_const.ROBOTOMY, 3, 1000)
              repeat
                scriptWait()
              until _util.GetGameState() ~= _const.MISSION
              repeat
                scriptWait()
              until _util.GetGameState() == _const.MISSION
              if _util.GetMinigameOutput1() == 1 then
                _util.PlaySFX(54)
                repeat
                  scriptWait()
                until 0 + 1 >= 20
                _util.ActivateNpc(_id.M5C1_SuperRobot_TM4, 209)
              else
                _util.SetConversationCount(0)
              end
            end
            scriptPlay(L1_1)
          elseif L0_0 == 209 then
            L1_1 = _util
            L1_1 = L1_1.AddDialog
            L1_1(3340, _const.CHANGE_DIALOG, 210)
            L1_1 = _util
            L1_1 = L1_1.PlaySFX
            L1_1(98)
          elseif L0_0 == 210 then
            function L1_1()
              _util.StartCutscene(_const.M5C1TALL4)
              repeat
                scriptWait()
              until _util.GetGameState() ~= _const.MISSION
              repeat
                scriptWait()
              until _util.GetGameState() == _const.MISSION
              repeat
                scriptWait()
              until 0 + 1 >= 20
              _util.ShowMap()
              _util.EndMission()
            end
            scriptPlay(L1_1)
          elseif L0_0 == 211 then
            function L1_1()
              _util.DisplayPopUp(493, "UI/Smilie", false)
              repeat
                scriptWait()
              until _util.IsPopUpVisible() == false
              repeat
                scriptWait()
              until 0 + 1 == 40
              _util.ShowMap()
              _util.EndMission()
            end
            scriptPlay(L1_1)
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
  L1_1 = _util
  L1_1 = L1_1.SetVar
  L1_1("collided", _util.GetSelf())
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("robostatus")
  if L1_1 == 5 then
    L1_1 = _id
    L1_1 = L1_1.Inventory_PuffleBlue
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.SetSuccess
      L1_1(_util.GetSelf(), true)
    else
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(3247)
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("robostatus")
    if L1_1 == 6 then
      L1_1 = _id
      L1_1 = L1_1.Inventory_MechanoDuster
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L1_1(3298)
      else
        L1_1 = _util
        L1_1 = L1_1.SetSuccess
        L1_1(_util.GetSelf(), true)
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("robostatus")
      if L1_1 == 7 then
        L1_1 = _id
        L1_1 = L1_1.Inventory_PufflePink
        if L0_0 == L1_1 then
          L1_1 = _util
          L1_1 = L1_1.AddMonologue
          L1_1(3312)
        else
          L1_1 = _id
          L1_1 = L1_1.Inventory_PuffleGreen
          if L0_0 == L1_1 then
            L1_1 = _util
            L1_1 = L1_1.SetSuccess
            L1_1(_util.GetSelf(), true)
          else
            L1_1 = _id
            L1_1 = L1_1.Inventory_PuffleRed
            if L0_0 == L1_1 then
              L1_1 = _util
              L1_1 = L1_1.AddMonologue
              L1_1(3317)
            else
              L1_1 = _id
              L1_1 = L1_1.Inventory_PuffleBlue
              if L0_0 == L1_1 then
                L1_1 = _util
                L1_1 = L1_1.AddMonologue
                L1_1(3319)
              else
                L1_1 = _id
                L1_1 = L1_1.Inventory_PuffleBlack
                if L0_0 == L1_1 then
                  L1_1 = _util
                  L1_1 = L1_1.AddMonologue
                  L1_1(3318)
                else
                  L1_1 = _id
                  L1_1 = L1_1.Inventory_MechanoDuster
                  if L0_0 == L1_1 then
                    function L1_1()
                      _util.DisableInput()
                      _util.PlaySFX(67)
                      _util.SwitchState("fail", _id.M5C1_SuperRobot_TM3)
                      repeat
                        scriptWait()
                      until not _util.IsAnimPlaying(_id.M5C1_SuperRobot_TM3)
                      _util.SwitchState("", _id.M5C1_SuperRobot_TM3, 1)
                      _util.EnableInput()
                      _util.AddMonologue(3316)
                    end
                    scriptPlay(L1_1)
                  else
                    L1_1 = _id
                    L1_1 = L1_1.Inventory_PuffleYellow
                    if L0_0 == L1_1 then
                      L1_1 = _util
                      L1_1 = L1_1.SetSuccess
                      L1_1(_util.GetSelf(), true)
                    end
                  end
                end
              end
            end
          end
        end
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("robostatus")
        if L1_1 == 8 then
          L1_1 = _id
          L1_1 = L1_1.Inventory_RobotomyTool
          if L0_0 == L1_1 then
            L1_1 = _util
            L1_1 = L1_1.AddDialog
            L1_1(3335, _const.CHANGE_DIALOG, 208)
            L1_1 = _util
            L1_1 = L1_1.PlaySFX
            L1_1(98)
          else
            L1_1 = _id
            L1_1 = L1_1.Inventory_PuffleBlue
            if L0_0 == L1_1 then
              L1_1 = _util
              L1_1 = L1_1.AddMonologue
              L1_1(3334)
            else
              L1_1 = _id
              L1_1 = L1_1.Inventory_PuffleRed
              if L0_0 == L1_1 then
                L1_1 = _util
                L1_1 = L1_1.AddMonologue
                L1_1(3334)
              else
                L1_1 = _id
                L1_1 = L1_1.Inventory_PuffleBlack
                if L0_0 == L1_1 then
                  L1_1 = _util
                  L1_1 = L1_1.AddMonologue
                  L1_1(3334)
                else
                  L1_1 = _id
                  L1_1 = L1_1.Inventory_PufflePurple
                  if L0_0 == L1_1 then
                    L1_1 = _util
                    L1_1 = L1_1.AddMonologue
                    L1_1(3334)
                  else
                    L1_1 = _id
                    L1_1 = L1_1.Inventory_PufflePink
                    if L0_0 == L1_1 then
                      L1_1 = _util
                      L1_1 = L1_1.AddMonologue
                      L1_1(3334)
                    else
                      L1_1 = _id
                      L1_1 = L1_1.Inventory_PuffleGreen
                      if L0_0 == L1_1 then
                        L1_1 = _util
                        L1_1 = L1_1.AddMonologue
                        L1_1(3334)
                      else
                        L1_1 = _id
                        L1_1 = L1_1.Inventory_PuffleYellow
                        if L0_0 == L1_1 then
                          L1_1 = _util
                          L1_1 = L1_1.AddMonologue
                          L1_1(3334)
                        else
                          L1_1 = _util
                          L1_1 = L1_1.AddMonologue
                          L1_1(4503)
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
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("collided")
  if L1_1 == _util.GetSelf() then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("collided", 1)
    L1_1 = _id
    L1_1 = L1_1.Inventory_PuffleBlue
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("robostatus")
      if L1_1 == 5 then
        L1_1 = _util
        L1_1 = L1_1.ActivateNpc
        L1_1(_util.GetSelf(), 199)
      end
    else
      L1_1 = _id
      L1_1 = L1_1.Inventory_PuffleYellow
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("robostatus")
        if L1_1 == 6 then
          function L1_1()
            _util.DisableInput()
            _util.PlaySFX(52)
            _util.SetSpawn(0, _id.M5C1_SuperRobot_TM2)
            _util.SetSpawn(1, _id.M5C1_SuperRobot_TM3)
            _util.SetSpawn(1, _id.M5C1_Pop_TallestM)
            _util.SetVar("robostatus", 7)
            _util.EnableInput()
            _util.StartCutscene(_const.M5C1TALL2)
          end
          scriptPlay(L1_1)
        end
      else
        function L1_1()
          _util.DisableInput()
          _util.PlaySFX(67)
          if _UPVALUE0_ == _id.Inventory_PuffleGreen then
          elseif _UPVALUE0_ == _id.Inventory_PuffleRed then
          else
          end
          repeat
            scriptWait()
          until 180 <= 0 + 1
          if _util.GetVar("robostatus") == 6 then
            _util.SwitchState("fail", _id.M5C1_SuperRobot_TM2)
            repeat
              scriptWait()
            until not _util.IsAnimPlaying(_id.M5C1_SuperRobot_TM2)
            _util.SwitchState("", _id.M5C1_SuperRobot_TM2, 1)
          elseif _util.GetVar("robostatus") == 7 then
            _util.SwitchState("fail", _id.M5C1_SuperRobot_TM3)
            repeat
              scriptWait()
            until not _util.IsAnimPlaying(_id.M5C1_SuperRobot_TM3)
            _util.SwitchState("", _id.M5C1_SuperRobot_TM3, 1)
          elseif _util.GetVar("robostatus") == 8 then
            _util.SwitchState("fail", _id.M5C1_SuperRobot_TM4)
            repeat
              scriptWait()
            until not _util.IsAnimPlaying(_id.M5C1_SuperRobot_TM4)
            _util.SwitchState("", _id.M5C1_SuperRobot_TM4, 1)
          end
          _util.EnableInput()
          if _util.GetVar("robostatus") == 6 then
            _util.AddDialog(3296, _const.CHANGE_DIALOG, 150)
            _util.PlaySFX(98)
          elseif _util.GetVar("robostatus") == 7 then
            if _UPVALUE0_ == _id.Inventory_PuffleGreen then
              _util.AddDialog(3313, _const.CHANGE_DIALOG, 204)
              _util.PlaySFX(98)
              _util.PushCamera(_id.M5C1_SuperRobot_TM3)
            elseif _UPVALUE0_ == _id.Inventory_PuffleYellow then
              _util.AddDialog(3320, _const.CHANGE_DIALOG, 203)
              _util.PlaySFX(98)
            end
          end
        end
        scriptPlay(L1_1)
      end
    end
  end
end
