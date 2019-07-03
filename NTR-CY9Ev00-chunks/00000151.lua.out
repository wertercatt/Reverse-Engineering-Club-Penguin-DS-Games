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
  L1_1 = L1_1.AFTER_DIALOG
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.TOUCHED then
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("c1_talkedToDot_ScaleWall")
    if L1_1 ~= 0 then
      L1_1 = _util
      L1_1 = L1_1.ActivateNpc
      L1_1(_id.M1_T6_Dot, 4)
    else
      L1_1 = _util
      L1_1 = L1_1.ActivateNpc
      L1_1(_id.M1_T6_Dot, 0)
    end
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.C1_TC5_JPG_8, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.C1_TC5_DOT_8, _const.END_DIALOG, 3)
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.AFTER_DIALOG then
  function L1_1()
    _util.DisableInput()
    _util.DelItem(_id.Doors_C1_MetalWallDoor)
    _util.ChangeBaseAnim("MissionObjects/M1/metalWallDoor", _id.C1_MetalWallDoorTalking)
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_id.C1_MetalWallDoorTalking)
    _util.EnableInput()
    _util.MarkObjComplete(_text.C1_OBJ8)
    _util.SetExitLocked(_id.Doors_C1_MetalWallDoor, false)
    _util.AddItem(_id.OpenedMetalDoor1)
    _util.AddItem(_id.OpenedMetalDoor2)
    _util.AddItem(_id.OpenedMetalDoor3)
    _util.AddItem(_id.OpenedMetalDoor4)
    _util.DelItem(_id.C1_MetalWallDoorTalking)
  end
  scriptPlay(L1_1)
end
