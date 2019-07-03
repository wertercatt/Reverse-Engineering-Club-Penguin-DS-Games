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
  L1_1 = L1_1("mapFound")
  if L1_1 ~= 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("plansDecoded")
  else
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(1078)
  end
  elseif L0_0 == 0 then
    function L1_1()
      _util.DisplayPopUp(381, "UI/Zoom/GarysRoomNotepad")
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.ActivateNpc(_util.GetSelf(), 1)
    end
    scriptPlay(L1_1)
    _util.SetVar("note4Dot", 1)
    _util.DelItem(_id.Doors_Garys2Sport)
    _util.AddItem(_id.M2C2_GR_ExitDoor)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(1089, "DialogStrings", _const.END_DIALOG, 1)
  end
end
