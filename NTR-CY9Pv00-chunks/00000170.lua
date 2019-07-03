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
  L1_1 = "M11_Maze3_LadderDown"
  L0_0 = L0_0(L1_1)
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = _text
    L1_1 = L1_1.M7_MAZE_FIRE
    L0_0(L1_1, "DialogStrings", _const.END_DIALOG, 0)
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.ITEM_DROPPED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetVar
  L1_1 = "M11_Maze3_LadderDown"
  L0_0 = L0_0(L1_1)
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.GetSource
    L0_0 = L0_0()
    L1_1 = _id
    L1_1 = L1_1.M11_AllKernelClues
    if L0_0 == L1_1 then
      function L1_1()
        _util.DisableInput()
        _util.ChangeBaseAnim("MissionObjects/M11/torchFlame", _id.M11_CornMazeTorch, "corn")
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M11_CornMazeTorch)
        _util.ChangeBaseAnim("MissionObjects/M11/torchFlameWCorn", _id.M11_CornMazeTorch)
        _util.ChangeBaseAnim("MissionObjects/M11/ladder", _id.M11_CornMazeLadder, "drop")
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M11_CornMazeLadder)
        _util.ChangeBaseAnim("MissionObjects/M11/ladderDown", _id.M11_CornMazeLadder)
        _util.RemoveInventoryItem(_id.M11_AllKernelClues)
        _util.MarkObjComplete(_text.M11_OBJ5A)
        _util.SetVar("M11_Maze3_LadderDown", 1)
        _util.EnableInput()
      end
      scriptPlay(L1_1)
    else
      L1_1 = _id
      L1_1 = L1_1.M11_KernelClue1
      if L0_0 ~= L1_1 then
        L1_1 = _id
        L1_1 = L1_1.M11_KernelClue2
      elseif L1_1 then
        L1_1 = _util
        L1_1 = L1_1.AddPlayerThought
        L1_1(_text.M11_MAZE_LADDERCORN_WRONG)
      end
    end
  end
end
