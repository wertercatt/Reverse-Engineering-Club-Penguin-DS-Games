local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L1_1 = "IceBlock"
  L0_0(L1_1, 0)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetVar
  L1_1 = "IceBlock"
  L0_0 = L0_0(L1_1)
  L0_0 = L0_0 + 1
  L1_1 = _util
  L1_1 = L1_1.SetVar
  L1_1("IceBlock", L0_0)
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("IceBlock")
  if L1_1 >= 5 then
    L1_1 = _util
    L1_1 = L1_1.ClearInventory
    L1_1()
    function L1_1()
      _util.StartMiniGame(_const.REFLECT, 0)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
        if false == false then
          _util.SetNextRoom(108)
        end
      until _util.GetGameState() == _const.MISSION
      _util.EnableInput(true)
      _util.ActivateNpc(_id.C3_MountainTop_Dot, 2)
    end
    scriptPlay(L1_1)
  else
    L1_1 = _util
    L1_1 = L1_1.AddInventoryItem
    L1_1(_util.GetSelf())
  end
  L1_1 = _util
  L1_1 = L1_1.DelItem
  L1_1(_util.GetSelf())
end
