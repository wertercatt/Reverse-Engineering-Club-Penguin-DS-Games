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
  L2_2 = _util
  L2_2 = L2_2.AddInterest
  L2_2(_const.ITEM_DROPPED)
end
if L0_0 == 2 and L1_1 == 3 then
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  if L2_2 == _const.TOUCHED then
    L2_2 = _util
    L2_2 = L2_2.AddMonologue
    L2_2(1111)
  end
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  if L2_2 == _const.ITEM_DROPPED then
    L2_2 = _util
    L2_2 = L2_2.GetSource
    L2_2 = L2_2()
    if L2_2 == _id.Inventory_WeldedCart then
      function L2_2()
        _util.DisableInput()
        _util.AddItem(_id.M2C3_MakeshiftCart)
        _util.SwitchState("enter", _id.M2C3_MakeshiftCart)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M2C3_MakeshiftCart)
        _util.SetSpawn(0, _id.M2C3_MakeshiftCart)
        _util.StartMiniGame(_const.CART_SURFER, 1, 1)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
          if _util.GetMinigameOutput1() == 1 and _util.GetVar("M2C3_wonMineCart") == 0 then
            print("**SUCCESS**")
            _util.SetVar("M2C3_wonMineCart", 1)
            _util.SetNextRoom(27)
          elseif _util.GetMinigameOutput1() == 0 then
            print("**FAIL**")
          end
        until _util.GetGameState() == _const.MISSION
        if _util.GetMinigameOutput1() == 1 then
          _util.RemoveInventoryItem(_id.Inventory_WeldedCart)
          _util.SetExitLocked(_id.Doors_MineInt2Minigame, false)
        end
      end
      scriptPlay(L2_2)
    end
  end
elseif L0_0 == 3 and L1_1 == 1 then
  L2_2 = _util
  L2_2 = L2_2.GetReason
  L2_2 = L2_2()
  if L2_2 == _const.TOUCHED then
    L2_2 = _util
    L2_2 = L2_2.AddMonologue
    L2_2(1541)
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
      _util.AddMonologue(4827, "DialogStrings")
    end
  end
end
