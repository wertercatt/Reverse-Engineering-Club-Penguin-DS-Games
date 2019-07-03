local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
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
  L1_1 = L1_1("M3C1_ClothingPermission")
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(1406)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C1_tiedJackHammer")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M3C1_havePants")
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M3C1_ClothingPermission")
        if L1_1 == 1 then
          if L0_0 == 0 then
            function L1_1()
              _util.DisableInput()
              _util.SwitchState("opening", _util.GetSelf())
              repeat
                scriptWait()
              until not _util.IsAnimPlaying(_util.GetSelf())
              _util.SwitchState("open", _util.GetSelf())
              _util.EnableInput()
              _util.AddLoopingConv(1407)
              _util.AddLoopingOption(1408, -1, _const.CHANGE_DIALOG, 2)
              _util.AddLoopingOption(1409, -1, _const.CHANGE_DIALOG, 3)
              _util.AddLoopingOption(1410, -1, _const.END_DIALOG, 0)
            end
            scriptPlay(L1_1)
          elseif L0_0 == 1 then
            L1_1 = _util
            L1_1 = L1_1.PushCamera
            L1_1(_util.GetSelf())
            L1_1 = _util
            L1_1 = L1_1.AddDialogButton
            L1_1(1408, _const.CHANGE_DIALOG, 2)
            L1_1 = _util
            L1_1 = L1_1.AddDialogButton
            L1_1(1409, _const.CHANGE_DIALOG, 3)
            L1_1 = _util
            L1_1 = L1_1.AddDialogButton
            L1_1(1410, _const.END_DIALOG, 0)
          elseif L0_0 == 2 then
            L1_1 = _util
            L1_1 = L1_1.SwitchState
            L1_1("", _util.GetSelf())
            L1_1 = _util
            L1_1 = L1_1.DisplayPopUp
            L1_1(317, "UI/Zoom/fancym")
            L1_1 = _util
            L1_1 = L1_1.SetSuitcaseItemEnabled
            L1_1(_id.SuitCase_FancyPants, true)
            L1_1 = _util
            L1_1 = L1_1.SetSuitcaseItemEnabled
            L1_1(_id.SuitCase_FancyHat, true)
            L1_1 = _util
            L1_1 = L1_1.SetSuitcaseItemEnabled
            L1_1(_id.SuitCase_FancyTie, true)
            L1_1 = _util
            L1_1 = L1_1.SetConversationCount
            L1_1(0)
            L1_1 = _util
            L1_1 = L1_1.SetVar
            L1_1("M3C1_havePants", 1)
            L1_1 = _util
            L1_1 = L1_1.SetSpawn
            L1_1(0, _id.M3C1_WaitingNPC)
          elseif L0_0 == 3 then
            L1_1 = _util
            L1_1 = L1_1.SwitchState
            L1_1("", _util.GetSelf())
            L1_1 = _util
            L1_1 = L1_1.DisplayPopUp
            L1_1(318, "UI/Zoom/fancyf")
            L1_1 = _util
            L1_1 = L1_1.SetSuitcaseItemEnabled
            L1_1(_id.SuitCase_FancyDress, true)
            L1_1 = _util
            L1_1 = L1_1.SetSuitcaseItemEnabled
            L1_1(_id.SuitCase_FancyHair, true)
            L1_1 = _util
            L1_1 = L1_1.SetSuitcaseItemEnabled
            L1_1(_id.SuitCase_FancyNecklace, true)
            L1_1 = _util
            L1_1 = L1_1.SetConversationCount
            L1_1(0)
            L1_1 = _util
            L1_1 = L1_1.SetVar
            L1_1("M3C1_havePants", 1)
            L1_1 = _util
            L1_1 = L1_1.SetSpawn
            L1_1(0, _id.M3C1_WaitingNPC)
          end
        end
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M3C1_havePants")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L1_1(1413)
      end
    end
  end
end
