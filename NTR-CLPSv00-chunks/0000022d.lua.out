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
  L1_1 = L1_1("FPMission_Started")
  if L1_1 ~= 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPMission_Started")
    if L1_1 ~= 6 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("FPM06_missionComplete")
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(3724, _const.END_DIALOG, 0)
      end
    end
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPMission_Started")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(3725, 3726, -1, _const.CHANGE_DIALOG, 1)
    end
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(3727)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3728, -1, _const.CHANGE_DIALOG, 2)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3729, -1, _const.END_DIALOG, 0)
  elseif L0_0 == 2 then
    function L1_1()
      _util.AddItem(_id.FPM06_Boat1)
      _util.SetSpawn(1, _id.FPM06_Boat2)
      _util.SetSpawn(1, _id.FPM06_Boat3)
      _util.SetVar("FPMission_Started", 6)
      _util.SetVar("DockBoat_Retrieved", 0)
      _util.SetVar("FPM06_Boats", 0)
      _util.StartCutscene(_const.FPM06INTRO)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.SetObjective(29)
      _util.SetCursorPos(_util.GetX(_id.FPM06_LostBoatsSad), _util.GetY(_id.FPM06_LostBoatsSad))
      _util.ActivateNpc(_id.FPM06_LostBoatsSad, 3)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3730, 3731, -1, _const.CHANGE_DIALOG, 4)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3732, _const.END_DIALOG, 0)
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPMission_Started")
    if L1_1 == 6 then
      L1_1 = _util
      L1_1 = L1_1.AddLoopingConv
      L1_1(3733)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(3734, -1, _const.CHANGE_DIALOG, 6)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(3735, 3744, _const.UPDATE_LOOP)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(3736, -1, _const.CHANGE_DIALOG, 5)
    end
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3737, _const.END_DIALOG, 0)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("DockBoat_Retrieved")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.ActivateNpc
      L1_1(_util.GetSelf(), 7)
    else
      L1_1 = _util
      L1_1 = L1_1.ActivateNpc
      L1_1(_util.GetSelf(), 8)
    end
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3738, 3739, -1, _const.CHANGE_DIALOG, 8)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3740, _const.CHANGE_DIALOG, 9)
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3741, 3742, -1, _const.CHANGE_DIALOG, 10)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3743, _const.END_DIALOG, 0)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3749, 3750, -1, _const.CHANGE_DIALOG, 12)
  elseif L0_0 == 12 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3751, _const.CHANGE_DIALOG, 13)
  elseif L0_0 == 13 then
    function L1_1()
      _util.SetConversationCount(14)
      _util.SetVar("FPM06_missionComplete", 1)
      _util.SetVar("FPMission_Started", 0)
      _util.RemoveMapAlert(_const.FREEPLAY6START)
      _util.SetSuitcaseItemEnabled(_id.SuitCase_DivingHelmet, true)
      _util.DisplayPopUp(347, "UI/Zoom/DiveHelmet")
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.SetObjective(492)
      _util.MarkFreePlayMission(_const.FPM06)
      _util.StartCutscene(_const.FPM06OUTRO)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 14 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3752, _const.END_DIALOG, 14)
  elseif L0_0 == 50 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3754, _const.END_DIALOG, 0)
  elseif L0_0 == 100 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3745, _const.END_DIALOG, 0)
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
  L1_1 = L1_1.FPM06_InventoryBoat1
  if L0_0 ~= L1_1 then
    L1_1 = _id
    L1_1 = L1_1.FPM06_InventoryBoat2
    if L0_0 ~= L1_1 then
      L1_1 = _id
      L1_1 = L1_1.FPM06_InventoryBoat3
    end
  elseif L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.RemoveInventoryItem
    L1_1(L0_0)
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPM06_Boats")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("FPM06_Boats", 1)
      function L1_1()
        _util.AddItem(_id.FPM06_LostBoatsHappy)
        _util.DelItem(_util.GetSelf())
        _util.ActivateNpc(_id.FPM06_LostBoatsHappy, 100)
      end
      scriptPlay(L1_1)
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("FPM06_Boats")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.SetVar
        L1_1("FPM06_Boats", 2)
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(3746, _const.END_DIALOG, 0)
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("FPM06_Boats")
        if L1_1 == 2 then
          function L1_1()
            _util.DisplayPopUp(493, "UI/Smilie", false)
            repeat
              scriptWait()
            until _util.IsPopUpVisible() == false
            _util.SetVar("FPM06_Boats", 3)
            _util.AddConversation(3747, 3748, -1, _const.CHANGE_DIALOG, 11)
          end
          scriptPlay(L1_1)
        end
      end
    end
  end
end
