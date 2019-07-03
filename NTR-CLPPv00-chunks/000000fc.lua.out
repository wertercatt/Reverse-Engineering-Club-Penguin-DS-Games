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
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3083, _const.CHANGE_DIALOG, 1)
    L1_1 = _util
    L1_1 = L1_1.PlaySFX
    L1_1(98)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(3084, "DialogStrings", _const.END_DIALOG, 0)
  elseif L0_0 == 50 then
    function L1_1()
      _util.DisableInput()
      repeat
        scriptWait()
      until 0 + 1 >= 30
      _util.SetSpawn(1, _id.M5C1_SuperRobot_Dock)
      _util.SetSpawn(1, _id.M5C1_Gary_Dock)
      _util.SetVisible(0, _id.M5C1_Gary_Dock)
      _util.SetSpawn(1, _id.M5C1_SuperCart_Dock)
      _util.SetSpawn(0, _id.M5C1_SuperRobot_Town)
      _util.SetSpawn(0, _id.M5C1_Gary_Town)
      _util.SetSpawn(0, _id.M5C1_SuperCart_Town)
      _util.SetSpawn(0, _id.M5C1_SuperRobot_GiftRoof)
      _util.SetSpawn(0, _id.M5C1_Gary_GiftRoof)
      _util.SetSpawn(0, _id.M5C1_DockBoat)
      _util.EnableInput()
      _util.StartCutscene(_const.M5C1ROOF)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.RemoveMapAlert(_const.M5C1ROBOTTOWN)
      _util.AddMapAlert(_const.SUPER_ROBOT, 112, 377, _const.M5C1ROBOTDOCK, 100, 135)
      _util.AddMonologue(3090, "DialogStrings", _const.END_DIALOG, 55)
    end
    scriptPlay(L1_1)
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
    function L1_1()
      _util.SetVar("robostatus", 1)
      _util.StartMiniGame(_const.MECHANO_DUSTER, _const.MECHANO_SUPER_BOT)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      if _util.GetMinigameOutput1() == 1 then
        _util.PlaySFX(55)
        _util.ActivateNpc(_id.M5C1_SuperRobot_GiftRoof, 50)
      end
    end
    scriptPlay(L1_1)
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_RobotomyTool
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.ActivateNpc
      L1_1(_id.M5C1_Gary_GiftRoof, 10)
    end
  end
end
