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
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COLLIDED
  L0_0(L1_1)
  L0_0 = _util
  L0_0 = L0_0.SetupParticleEffects
  L1_1 = _util
  L1_1 = L1_1.GetX
  L1_1 = L1_1()
  L1_1 = L1_1 + 80
  L0_0(L1_1, _util.GetY() + 10, _const.PARTICLE_BOATPARTS)
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
    L1_1(3267, _const.CHANGE_DIALOG, 10)
    L1_1 = _util
    L1_1 = L1_1.PlaySFX
    L1_1(98)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(3268, "DialogStrings", _const.END_DIALOG, 0)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3251, _const.CHANGE_DIALOG, 11)
    L1_1 = _util
    L1_1 = L1_1.PlaySFX
    L1_1(98)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(3252, "DialogStrings", _const.END_DIALOG, 0)
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
  L1_1("collided", 0)
  L1_1 = _id
  L1_1 = L1_1.Inventory_PuffleRed
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.SetSuccess
    L1_1(_util.GetSelf(), true)
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_MechanoDuster
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.ActivateNpc
      L1_1(_id.M5C1_Gary_Dock, 20)
    else
      L1_1 = _id
      L1_1 = L1_1.Inventory_RobotomyTool
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.ActivateNpc
        L1_1(_id.M5C1_Gary_Dock, 10)
      end
    end
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.COLLIDED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("collided")
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("collided", 1)
    L1_1 = _id
    L1_1 = L1_1.Inventory_PuffleRed
    if L0_0 == L1_1 then
      function L1_1()
        _util.SetVar("robostatus", 2)
        _util.PlaySFX(55)
        _util.SetSpawn(1, _id.M5C1_Gary_SkiVillage)
        _util.SetVisible(0, _id.M5C1_Gary_SkiVillage)
        _util.SetSpawn(1, _id.M5C1_SuperRobot_SkiVillage)
        _util.SetSpawn(1, _id.M5C1_SuperCart_SkiVillage)
        _util.SetSpawn(1, _id.M5C1_Rookie_SkiVillage)
        _util.SetSpawn(1, _id.M5C1_Loop_Dock)
        _util.SetSpawn(0, _id.M5C1_SuperRobot_Dock)
        _util.SetSpawn(0, _id.M5C1_Gary_Dock)
        _util.SetSpawn(0, _id.M5C1_SuperCart_Dock)
        _util.SetSpawn(0, _id.M5C1_Dot_Town)
        _util.StartCutscene(_const.M5C1DOCK)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        _util.SetCursorPos(_util.GetX(_id.M5C1_Loop_Dock), _util.GetY(_id.M5C1_Loop_Dock))
        _util.RemoveMapAlert(_const.M5C1ROBOTDOCK)
        _util.AddMapAlert(_const.SUPER_ROBOT, 195, 180, _const.M5C1ROBOTSKI, 70, 70)
      end
      scriptPlay(L1_1)
    end
  end
end
