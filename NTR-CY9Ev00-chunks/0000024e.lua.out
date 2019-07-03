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
  L1_1 = "M10_trapComplete"
  L0_0 = L0_0(L1_1)
  if L0_0 == 1 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = _text
    L1_1 = L1_1.M10_NC_FIXED_MACHINE
    L0_0(L1_1, "DialogStrings", _const.END_DIALOG, 0)
  end
  L0_0 = _util
  L0_0 = L0_0.GetVar
  L1_1 = "M10_ropeSet"
  L0_0 = L0_0(L1_1)
  if L0_0 == 1 then
    function L0_0()
      _util.DisableInput()
      _util.SwitchState("malfunction", _id.M10_BoxAndRope)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M10_BoxAndRope)
      _util.ChangeBaseAnim("MissionObjects/WaddleSquad/scripted/gearBoxBlinking", _id.M10_BoxAndRope)
      _util.SetVar("M10_ropeSet", 2)
      _util.EnableInput()
      _util.AddPlayerThought(_text.M10_BROKENGEARBOX)
    end
    L1_1 = scriptPlay
    L1_1(L0_0)
  else
    L0_0 = _util
    L0_0 = L0_0.GetVar
    L1_1 = "M10_ropeSet"
    L0_0 = L0_0(L1_1)
    if L0_0 == 2 then
      L0_0 = _util
      L0_0 = L0_0.AddMonologue
      L1_1 = _text
      L1_1 = L1_1.M10_NC_BROKEN_PANEL
      L0_0(L1_1, "DialogStrings", _const.END_DIALOG, 0)
    else
      L0_0 = _util
      L0_0 = L0_0.GetVar
      L1_1 = "M10_fakeHerbertDock"
      L0_0 = L0_0(L1_1)
      if L0_0 == 1 then
        function L0_0()
          _util.DisableInput()
          _util.SetVar("M10_ActivateHerbOnReturn", 1)
          _util.SetSpawn(1, _id.M10_NightClub0_Cage1)
          _util.SetSpawn(1, _id.M10_NightClub0_Cage2)
          _util.SetSpawn(1, _id.M10_NightClub0_Cage3)
          _util.StartCutscene(_const.NC_CAGEDROP)
          repeat
            scriptWait()
          until _util.GetGameState() ~= _const.MISSION
          repeat
            scriptWait()
          until _util.GetGameState() == _const.MISSION
          _util.DelItem(_id.M10_CageUp)
          _util.SetCursorPos(_util.GetX(_id.M10_NightClubHerbert), _util.GetY(_id.M10_NightClubHerbert))
          _util.SetVar("M10_fakeHerbertDock", 2)
          _util.ChangeBaseAnim("NPC/WaddleSquad/Herbert/NCAlone", _id.M10_NightClubHerbert)
          _util.ActivateNpc(_id.M10_NightClubHerbert, 1)
        end
        L1_1 = scriptPlay
        L1_1(L0_0)
      end
    end
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
  L1_1 = L1_1.Inventory_WrenchTool
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M10_ropeSet")
    if L1_1 == 2 then
      function L1_1()
        _util.StartMiniGame(_const.WRENCH, 0)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        if _util.GetMinigameOutput1() == 1 then
          _util.DelItem(_id.M10_BoxAndRope)
          _util.AddItem(_id.M10_FixGearBox)
          _util.SetVar("M10_ropeSet", 3)
        end
      end
      scriptPlay(L1_1)
    end
  end
end
