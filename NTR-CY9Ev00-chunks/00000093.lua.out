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
L2_2 = L2_2.ITEM_DROPPED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("removedDrillWindow")
  if L2_2 == 0 then
    L2_2 = _id
    L2_2 = L2_2.Inventory_PuffleYellow
    if L1_1 == L2_2 then
      L2_2 = _util
      L2_2 = L2_2.SetSuccess
      L2_2(_util.GetSelf(), true)
    else
      L2_2 = _id
      L2_2 = L2_2.Inventory_PuffleRed
      if L1_1 == L2_2 then
        L2_2 = _util
        L2_2 = L2_2.SetSuccess
        L2_2(_util.GetSelf(), true)
      else
        L2_2 = _id
        L2_2 = L2_2.Inventory_WrenchTool
        if L1_1 == L2_2 then
          function L2_2()
            _util.StartMiniGame(_const.WRENCH, 10)
            repeat
              scriptWait()
            until _util.GetGameState() ~= _const.MISSION
            repeat
              scriptWait()
            until _util.GetGameState() == _const.MISSION
            if _util.GetMinigameOutput1() == 1 then
              _util.AddItem(_id.M8_SnakePieceForM4)
              _util.DelItem(_id.M8_SnakePiece2)
              _util.AddItem(_id.M8_DrillWindowGround)
              _util.SetVar("removedDrillWindow", 1)
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
    function L2_2()
      _util.DisableInput()
      _util.AddItem(_id.M8_SnakePieceForM4)
      _util.ChangeBaseAnim("MissionObjects/MysteriousTremors/state/UGBoilerWindowCartridge", _id.M8_SnakePiece2, "break")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.ChangeBaseAnim("MissionObjects/MysteriousTremors/state/UGBoilerWindowCartridgeBroken", _id.M8_SnakePiece2)
      _util.SetVar("removedDrillWindow", 1)
      _util.EnableInput()
    end
    scriptPlay(L2_2)
  end
  L2_2 = _id
  L2_2 = L2_2.Inventory_PuffleRed
  if L1_1 == L2_2 then
    function L2_2()
      _util.DisableInput()
      _util.AddItem(_id.M8_SnakePieceForM4)
      _util.ChangeBaseAnim("MissionObjects/MysteriousTremors/state/UGBoilerWindowCartridge", _id.M8_SnakePiece2, "break")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.ChangeBaseAnim("MissionObjects/MysteriousTremors/state/UGBoilerWindowCartridgeBroken", _id.M8_SnakePiece2)
      _util.SetVar("removedDrillWindow", 1)
      _util.EnableInput()
    end
    scriptPlay(L2_2)
  end
end
