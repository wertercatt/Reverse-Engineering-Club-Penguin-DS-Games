local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetConversationCount
L2_2 = L2_2()
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.TOUCHED then
  if L2_2 == 0 then
    L3_3 = _util
    L3_3 = L3_3.AddItem
    L3_3(_id.M11_HQ_JPG)
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/M11/Herbert/Herb2Klutzy")
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/M11/Klutzy/KlutzyHerb", 102905)
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_MAZE_HERBERT_3, _const.CHANGE_DIALOG, -1, 1)
  elseif L2_2 == 1 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_MAZE_HERBERT_4, _const.CHANGE_DIALOG, -1, 2)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_MAZE_HERBERT_5, _const.CHANGE_DIALOG, -1, 3)
  elseif L2_2 == 3 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/M11/Herbert/Herb2Player")
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/M11/Klutzy/KlutzyCorn", 102905)
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_MAZE_HERBERT_6, _const.CHANGE_DIALOG, -1, 4)
  elseif L2_2 == 4 then
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("WaitingForUnplugAction", 1)
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/M11/Herbert/HerbLaugh")
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/M11/Klutzy/KlutzyHerb", 102905)
    L3_3 = _util
    L3_3 = L3_3.SwitchState
    L3_3("laugh", 102905)
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_MAZE_HERBERT_7, _const.END_DIALOG, -1, 4)
  elseif L2_2 == 5 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/M11/Herbert/HerbPhone")
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/M11/Klutzy/KlutzyCorn", 102905)
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_MAZE_HERBERT_8)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M11_MAZE_A_8, _const.CHANGE_NPC, _id.M11_CornMaze_Rookie, 6)
  elseif L2_2 == 6 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/M11/Herbert/HerbLaugh")
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_MAZE_HERBERT_9, _const.CHANGE_DIALOG, -1, 7)
  elseif L2_2 == 7 then
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/M11/Herbert/Herb2Player")
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_MAZE_HERBERT_10, _const.CHANGE_DIALOG, -1, 8)
  elseif L2_2 == 8 then
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("Tele2HQ", 1)
    L3_3 = _util
    L3_3 = L3_3.SetSpawn
    L3_3(1, _id.M11_Cloth)
    L3_3 = _util
    L3_3 = L3_3.SetSpawn
    L3_3(1, _id.M11_SalonChairHQ)
    L3_3 = _util
    L3_3 = L3_3.SetSpawn
    L3_3(1, _id.M11_PopcornBomb)
    L3_3 = _util
    L3_3 = L3_3.SetSpawn
    L3_3(1, _id.M11_Timer)
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_MAZE_HERBERT_11, _const.CHANGE_DIALOG, -1, 9)
  elseif L2_2 == 9 then
    L3_3 = _util
    L3_3 = L3_3.HideMap
    L3_3()
    function L3_3()
      _util.DisableInput()
      _util.SetNextRoom(56)
      _util.SetExitLocked(_id.Doors_HQ2SportUL, true)
      _util.StartCutscene(_const.HERBERTWARPSBOMB)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.EnableInput()
    end
    scriptPlay(L3_3)
  end
end
