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
  if L0_0 == 100 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3060, _const.CHANGE_DIALOG, 101)
  elseif L0_0 == 101 then
    function L1_1()
      _util.StartCutscene(_const.FAKECREDITS)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.ActivateNpc(_id.M5C1_Rookie_StageCrash, 1)
    end
    scriptPlay(L1_1)
    _util.SetVar("M5C1_crash", 1)
    _util.SetSpawn(0, _id.M5C1_Dot_Stage)
    _util.SetSpawn(1, _id.M5C1_Dot_StageCrash)
    _util.SetSpawn(0, _id.M5C1_PH_Stage)
    _util.SetSpawn(1, _id.M5C1_PH_StageCrash)
    _util.SetSpawn(0, _id.M5C1_JPG_Stage)
    _util.SetSpawn(1, _id.M5C1_JPG_StageCrash)
    _util.SetSpawn(0, _id.M5C1_Rookie_Stage)
    _util.SetSpawn(1, _id.M5C1_Rookie_StageCrash)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(0)
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3062, _const.CHANGE_NPC, _id.M5C1_Dot_StageCrash, 2)
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3065, 3067, -1, _const.CHANGE_DIALOG, 10)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3068, _const.END_DIALOG, 0)
  end
end
