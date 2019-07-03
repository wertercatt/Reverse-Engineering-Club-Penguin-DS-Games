local L0_0, L1_1, L2_2
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
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.TOUCHED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L2_2 = "OpenPuffleCage"
  L1_1 = L1_1(L2_2)
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddPlayerThought
    L2_2 = _text
    L2_2 = L2_2.C3_TM_CAGE_FROZEN
    L1_1(L2_2)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "OpenPuffleCage"
    L1_1 = L1_1(L2_2)
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "RescuedPufflesInCage"
      L1_1 = L1_1(L2_2)
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddPlayerThought
        L2_2 = _text
        L2_2 = L2_2.C3_TM_CAGE_UNFROZEN
        L1_1(L2_2)
      end
    end
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.ITEM_DROPPED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _id
  L2_2 = L2_2.Inventory_PuffleYellow
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.SetSuccess
    L2_2(_util.GetSelf(), true)
  else
    L2_2 = _id
    L2_2 = L2_2.Inventory_WrenchTool
    if L1_1 == L2_2 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("OpenPuffleCage")
      if L2_2 == 1 then
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L2_2 = L2_2("RescuedPufflesInCage")
        if L2_2 == 0 then
          function L2_2()
            _util.StartMiniGame(_const.WRENCH, 5)
            repeat
              scriptWait()
            until _util.GetGameState() ~= _const.MISSION
            repeat
              scriptWait()
            until _util.GetGameState() == _const.MISSION
            if _util.GetMinigameOutput1() == 1 then
              _util.ChangeBaseAnim("MissionObjects/M3/pufCageOpen", _id.PuffleCage)
              _util.SetExitLocked(_id.TallestMtDoorToJPG, false)
              _util.SetVar("RescuedPufflesInCage", 1)
              _util.SetPuffle(_id.Inventory_PuffleBlack)
              _util.EnablePuffle(_id.Enable_PuffleBlack)
              _util.EnablePuffle(_id.Enable_PuffleBlue)
              movePuffle(_util.GetX(), _util.GetY(), _util.GetPuffleX(), _util.GetPuffleY(), 30, true, 75)
            end
          end
          scriptPlay(L2_2)
        end
      end
    end
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.COLLIDED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _id
  L2_2 = L2_2.Inventory_PuffleYellow
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("OpenPuffleCage")
    if L2_2 == 0 then
      function L2_2()
        _util.DisableInput()
        _util.ChangeBaseAnim("MissionObjects/M3/pufCageIceBreak", _id.PuffleIcCage)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_util.GetSelf())
        _util.AddItem(_id.PuffleCage)
        _util.SetVar("OpenPuffleCage", 1)
        _util.EnableInput()
        _util.DelItem(_util.GetSelf())
      end
      scriptPlay(L2_2)
    end
  end
end
