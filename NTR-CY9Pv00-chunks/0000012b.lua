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
  L0_0 = L0_0.AddPlayerThought
  L1_1 = _text
  L1_1 = L1_1.C1_TRAINING_RIVER_DIG
  L0_0(L1_1)
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
  L1_1 = L1_1.C1_InventoryItem_JackHammer
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("C1_Event")
    if L1_1 == _id.C1_crossedRiver then
      function L1_1()
        _util.StartMiniGame(_const.JACKHAMMERIN, 0, 0)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
          if _util.GetMinigameOutput1() == 1 and false == false then
            _util.SetNextRoom(119)
          end
        until _util.GetGameState() == _const.MISSION
      end
      scriptPlay(L1_1)
    end
  else
    L1_1 = _id
    L1_1 = L1_1.C1_InventoryItem_DirtyJackHammerParts
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.AddPlayerThought
      L1_1(_text.C1_JACKHAMMER_DIRTY2)
    end
  end
end
