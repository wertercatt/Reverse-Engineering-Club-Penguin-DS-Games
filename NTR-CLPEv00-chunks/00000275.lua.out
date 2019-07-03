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
  L0_0 = L0_0.GetVar
  L1_1 = "M3C3_gadgetRoomIntroComplete"
  L0_0 = L0_0(L1_1)
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = 1952
    L0_0(L1_1)
  else
    L0_0 = _util
    L0_0 = L0_0.GetVar
    L1_1 = "M3C3_gadgetRoomIntroComplete"
    L0_0 = L0_0(L1_1)
    if L0_0 == 1 then
      L0_0 = _util
      L0_0 = L0_0.GetVar
      L1_1 = "M3C3_madeSnowCat"
      L0_0 = L0_0(L1_1)
      if L0_0 == 0 then
        L0_0 = _util
        L0_0 = L0_0.AddMonologue
        L1_1 = 1953
        L0_0(L1_1)
      end
    else
      L0_0 = _util
      L0_0 = L0_0.GetVar
      L1_1 = "M3C3_madeSnowCat"
      L0_0 = L0_0(L1_1)
      if L0_0 == 1 then
        L0_0 = _util
        L0_0 = L0_0.GetVar
        L1_1 = "M3C3_playedSnowCat"
        L0_0 = L0_0(L1_1)
        if L0_0 == 0 then
          L0_0 = _util
          L0_0 = L0_0.AddMonologue
          L1_1 = 1954
          L0_0(L1_1)
        end
      else
        L0_0 = _util
        L0_0 = L0_0.GetVar
        L1_1 = "M3C3_playedSnowCat"
        L0_0 = L0_0(L1_1)
        if L0_0 == 1 then
          L0_0 = _util
          L0_0 = L0_0.AddMonologue
          L1_1 = 1955
          L0_0(L1_1)
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
  L1_1 = L1_1.Inventory_Cocoa
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C3_gadgetRoomIntroComplete")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.PlaySFX
      L1_1(83)
      function L1_1()
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        if _util.GetMinigameOutput1() == 1 then
          _util.EnableSpyPodFunc(_const.FLAG_SNOWCAT)
          _util.RemoveInventoryItem(_id.Inventory_Cocoa)
          _util.AddItem(_id.M3C3_Gary_Gadget)
          _util.SetSpawn(1, _id.M3C3_Gary_Gadget)
          _util.DelItem(_id.M3C3_Gary_Gadget_Cat)
          _util.DelItem(_id.M3C3_SnowCatParts)
          _util.DelItem(_id.M3C3_SnowCatParts2)
          _util.SetExitLocked(_id.Doors_Sports2Garys, false)
          _util.SetSpawn(0, _id.M3C3_Gary_GR)
          _util.SetCursorPos(_util.GetX(_id.M3C3_Gary_Gadget), _util.GetY(_id.M3C3_Gary_Gadget))
          _util.DisplayPopUp(626, "UI/Smilie", false)
          _util.SetObjective(806)
          repeat
            scriptWait()
          until _util.IsPopUpVisible() == false
          _util.AddSmileys(10, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
          _util.ActivateNpc(_id.M3C3_Gary_Gadget, 100)
        end
      end
      _util.StartMiniGame(_const.JIGSAW, 2)
      scriptPlay(L1_1)
    end
  end
end
