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
  L0_0(L1_1, _util.GetY(), _const.PARTICLE_WATERSPRAY)
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
    L1_1(3313, _const.CHANGE_DIALOG, 20)
    L1_1 = _util
    L1_1 = L1_1.PlaySFX
    L1_1(98)
  elseif L0_0 == 20 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(3314, "DialogStrings", _const.END_DIALOG, 0)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(0)
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3281, _const.CHANGE_NPC, _id.M5C1_Gary_SkiVillage, 10)
    L1_1 = _util
    L1_1 = L1_1.PlaySFX
    L1_1(98)
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
    L1_1 = L1_1.Inventory_PufflePink
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.SetSuccess
      L1_1(_util.GetSelf(), true)
    else
      L1_1 = _id
      L1_1 = L1_1.Inventory_MechanoDuster
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L1_1(3315)
      else
        L1_1 = _id
        L1_1 = L1_1.Inventory_RobotomyTool
        if L0_0 == L1_1 then
          L1_1 = _util
          L1_1 = L1_1.AddMonologue
          L1_1(3315)
        end
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
    L1_1 = L1_1.Inventory_PufflePink
    if L0_0 == L1_1 then
      function L1_1()
        _util.SetVar("robostatus", 3)
        _util.PlaySFX(55)
        _util.SetSpawn(1, _id.M5C1_Flare_SkiVillage)
        _util.SetSpawn(1, _id.M5C1_SuperRobot_Beach)
        _util.SetSpawn(1, _id.M5C1_Gary_Beach)
        _util.SetSpawn(1, _id.M5C1_RookieNoDuck_SkiVillage)
        _util.SetVisible(0, _id.M5C1_Gary_Beach)
        _util.SetSpawn(0, _id.M5C1_Rookie_SkiVillage)
        _util.SetSpawn(1, _id.M5C1_SuperCart_Beach)
        _util.SetSpawn(0, _id.M5C1_SuperRobot_SkiVillage)
        _util.SetSpawn(0, _id.M5C1_Gary_SkiVillage)
        _util.SetSpawn(0, _id.M5C1_SuperCart_SkiVillage)
        _util.StartCutscene(_const.M5C1SKI)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        _util.RemoveMapAlert(_const.M5C1ROBOTSKI)
        _util.AddMapAlert(_const.SUPER_ROBOT, 91, 284, _const.M5C1ROBOTBEACH, 62, 120)
      end
      scriptPlay(L1_1)
    else
      function L1_1()
        _util.DisableInput()
        _util.PlaySFX(67)
        repeat
          scriptWait()
        until 70 <= 0 + 1
        _util.SwitchState("fail", _id.M5C1_SuperRobot_SkiVillage)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_util.GetSelf())
        _util.SwitchState("", _id.M5C1_SuperRobot_SkiVillage, 1)
        _util.EnableInput()
        _util.AddMonologue(3315, "DialogStrings", _const.END_DIALOG, 0)
      end
      scriptPlay(L1_1)
    end
  end
end
