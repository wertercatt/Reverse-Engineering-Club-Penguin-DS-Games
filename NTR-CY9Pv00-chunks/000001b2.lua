local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
L3_3 = _const
L3_3 = L3_3.CREATED
if L2_2 == L3_3 then
  L2_2 = _util
  L2_2 = L2_2.AddInterest
  L3_3 = _const
  L3_3 = L3_3.ITEM_DROPPED
  L2_2(L3_3)
  L2_2 = _util
  L2_2 = L2_2.AddInterest
  L3_3 = _const
  L3_3 = L3_3.COLLIDED
  L2_2(L3_3)
end
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
L3_3 = _const
L3_3 = L3_3.TOUCHED
if L2_2 == L3_3 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L3_3 = "M11_Maze3_LadderDown"
  L2_2 = L2_2(L3_3)
  if L2_2 == 1 then
    L2_2 = _util
    L2_2 = L2_2.AddObjective
    L3_3 = _text
    L3_3 = L3_3.M11_OBJ6
    L2_2(L3_3)
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L3_3 = "M11_MazeProg"
    L2_2(L3_3, 3)
    L2_2 = _util
    L2_2 = L2_2.ChangeRoom
    L3_3 = 22
    L2_2(L3_3)
  end
end
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
L3_3 = _const
L3_3 = L3_3.ITEM_DROPPED
if L2_2 == L3_3 then
  L2_2 = _util
  L2_2 = L2_2.GetSource
  L2_2 = L2_2()
  L3_3 = _id
  L3_3 = L3_3.Inventory_PuffleBlue
  if L2_2 == L3_3 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("M11_Maze3_LadderDown")
    if L3_3 == 0 then
      L3_3 = _util
      L3_3 = L3_3.SetSuccess
      L3_3(_util.GetSelf(), true)
    end
  end
end
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
L3_3 = _const
L3_3 = L3_3.COLLIDED
if L2_2 == L3_3 then
  L2_2 = _util
  L2_2 = L2_2.GetSource
  L2_2 = L2_2()
  L3_3 = _id
  L3_3 = L3_3.Inventory_PuffleBlue
  if L2_2 == L3_3 then
    function L3_3()
      _util.DisableInput()
      _util.ChangeBaseAnim("MissionObjects/M11/ladder", _id.M11_CornMazeLadder, "drop")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M11_CornMazeLadder)
      _util.ChangeBaseAnim("MissionObjects/M11/ladderDown", _id.M11_CornMazeLadder)
      _util.RemoveInventoryItem(_id.M11_AllKernelClues)
      _util.SetVar("M11_Maze3_LadderDown", 1)
      _util.EnableInput()
    end
    scriptPlay(L3_3)
  end
end
