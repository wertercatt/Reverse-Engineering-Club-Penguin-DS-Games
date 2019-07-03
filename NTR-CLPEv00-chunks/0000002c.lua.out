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
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(1070, "DialogStrings", _const.CHANGE_DIALOG, 1)
  elseif L0_0 == 1 then
    function L1_1()
      _util.DisplayPopUp(382, "UI/Zoom/GarysRoomOldMap", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.SetVar("mapFound", 1)
      _util.ActivateNpc(_id.M2C2_MineMap, 2)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(1071)
  end
end
