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
  L1_1 = "FPM08_Jacket_Found"
  L0_0 = L0_0(L1_1)
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = 3880
    L0_0(L1_1)
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
  L1_1("FPM08_hit", 0)
  L1_1 = _id
  L1_1 = L1_1.Inventory_MechanoDuster
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPM08_Jacket_Found")
    if L1_1 == 0 then
      function L1_1()
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        if _util.GetMinigameOutput1() == 1 then
          _util.SetVar("FPM08_Jacket_Found", 1)
          _util.DelItem(_id.FPM08_SnowPile)
          _util.AddInventoryItem(_id.FPM08_Jacket)
          repeat
            scriptWait()
          until _util.IsPopUpVisible() == false
        end
      end
      _util.StartMiniGame(_const.MECHANO_DUSTER, _const.MECHANO_JACKET)
      scriptPlay(L1_1)
    end
  end
end
