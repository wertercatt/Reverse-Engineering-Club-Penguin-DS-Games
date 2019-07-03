local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
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
  L1_1 = L1_1("FPMission_Started")
  if L1_1 ~= 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPMission_Started")
    if L1_1 ~= 8 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(4121, "DialogStrings", _const.END_DIALOG, 0)
    end
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPMission_Started")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(4122, "DialogStrings", _const.CHANGE_DIALOG, 10)
    end
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.PushCamera
    L1_1(_util.GetSelf())
    L1_1 = _util
    L1_1 = L1_1.AddDialogButton
    L1_1(4123, _const.CHANGE_DIALOG, 1)
    L1_1 = _util
    L1_1 = L1_1.AddDialogButton
    L1_1(4124, _const.END_DIALOG, 0)
  elseif L0_0 == 1 then
    function L1_1()
      _util.SetVar("FPMission_Started", 8)
      _util.SetVar("FPM08_GaveMitten", 0)
      _util.SetVar("FPM08_NPCs_Helped", 0)
      _util.EnableSpyPodFunc(_const.FLAG_MECHANODUSTER)
      _util.SetSpawn(1, _id.FPM08_SkiShopClerk)
      _util.SetSpawn(1, _id.FPM08_Goalie)
      _util.SetSpawn(1, _id.FPM08_LostJacketNPC)
      _util.SetSpawn(1, _id.FPM08_SnowPile)
      _util.SetSpawn(1, _id.FPM08_Wardrobe)
      _util.SetSpawn(0, _id.SportShop_Wardrobe)
      _util.SetSpawn(0, _util.GetSelf())
      _util.SetSpawn(1, _id.FPM08_Goal)
      _util.ActivateNpc(_util.GetSelf(), 2)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 2 then
    function L1_1()
      _util.AddInventoryItem(_id.Inventory_Mitten)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.SetObjective(86)
      _util.StartCutscene(_const.FPM08INTRO)
    end
    scriptPlay(L1_1)
  end
end
