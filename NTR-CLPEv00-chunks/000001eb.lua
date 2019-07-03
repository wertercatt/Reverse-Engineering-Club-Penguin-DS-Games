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
  L1_1 = L1_1("beansClean")
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(987)
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
  L1_1 = L1_1.Inventory_MechanoDuster
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("beansClean")
    if L1_1 == 0 then
      function L1_1()
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        if _util.GetMinigameOutput1() == 1 then
          _util.AddItem(_id.Object_BeanBagFixed)
          _util.DelItem(_id.Object_SpilledBeans)
          _util.AddInventoryItem(_id.Inventory_Pen)
          repeat
            scriptWait()
          until _util.IsPopUpVisible() == false
          _util.SetVar("beansClean", 1)
          _util.SetVar("thanksForCleaning", 1)
          _util.ActivateNpc(_id.M2C2_Barista, 0)
        end
      end
      _util.StartMiniGame(_const.MECHANO_DUSTER, _const.MECHANO_BEANS)
      scriptPlay(L1_1)
    end
  end
end
