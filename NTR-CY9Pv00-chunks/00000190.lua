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
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("M11_MazeProg")
    if L3_3 == 0 then
      L3_3 = _util
      L3_3 = L3_3.AddNPCText
      L3_3(_text.M11_MAZE_ROOKIE_GREET)
      L3_3 = _util
      L3_3 = L3_3.AddPlayerOption
      L3_3(_text.M11_MAZE_A_1A, _const.CHANGE_DIALOG, -1, 1)
      L3_3 = _util
      L3_3 = L3_3.AddPlayerOption
      L3_3(_text.M11_MAZE_A_1B, _const.CHANGE_DIALOG, -1, 2)
    else
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("M11_MazeProg")
      if L3_3 == 1 then
        L3_3 = _util
        L3_3 = L3_3.AddNPCText
        L3_3(_text.M11_MAZE_ROOKIE_2)
        L3_3 = _util
        L3_3 = L3_3.AddPlayerOption
        L3_3(_text.M11_MAZE_A_2, _const.END_DIALOG, -1, 0)
      else
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L3_3 = L3_3("M11_MazeProg")
        if L3_3 == 2 then
          L3_3 = _util
          L3_3 = L3_3.AddObjective
          L3_3(_text.M11_OBJ5A)
          L3_3 = _util
          L3_3 = L3_3.AddNPCText
          L3_3(_text.M11_MAZE_ROOKIE_3)
          L3_3 = _util
          L3_3 = L3_3.AddPlayerOption
          L3_3(_text.M11_MAZE_A_3, _const.END_DIALOG, -1, 0)
        else
          L3_3 = _util
          L3_3 = L3_3.GetVar
          L3_3 = L3_3("M11_MazeProg")
          if L3_3 == 3 then
            L3_3 = _util
            L3_3 = L3_3.AddNPCText
            L3_3(_text.M11_ROOKIE_CORN_END, _const.END_DIALOG, -1, 0)
          end
        end
      end
    end
  elseif L2_2 == 1 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_MAZE_ROOKIE_1A, _const.END_DIALOG, -1, 0)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M11_MAZE_ROOKIE_1B, _const.END_DIALOG, -1, 0)
  elseif L2_2 == 5 then
  elseif L2_2 == 6 then
    function L3_3()
      _util.DisableInput()
      _util.ChangeBaseAnim("NPC/M11/Rookie/RookieCornMazePhone", _id.M11_CornMaze_Rookie, "out")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M11_CornMaze_Rookie)
      _util.ChangeBaseAnim("NPC/M11/Rookie/RookieCornMazePhone", _id.M11_CornMaze_Rookie)
      _util.EnableInput(true)
      _util.AddNPCText(_text.M11_MAZE_ROOKIE_8)
      _util.AddPlayerOption(_text.M11_MAZE_A_9, _const.CHANGE_NPC, _id.M11_HerbertCornMaze, 6)
    end
    scriptPlay(L3_3)
  end
end
