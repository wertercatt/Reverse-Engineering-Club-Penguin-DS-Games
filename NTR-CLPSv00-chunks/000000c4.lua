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
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(1052, "DialogStrings", _const.CHANGE_DIALOG, 50)
  elseif L0_0 == 50 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(1053, "DialogStrings", _const.END_DIALOG, 50)
  elseif L0_0 == 1 then
    function L1_1()
      _util.DisplayPopUp(312, "UI/Zoom/GarysRoomBlueprints", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.SetVar("plansDecoded", 1)
      _util.ActivateNpc(_id.M2C2_EncodedPlans, 2)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(1056)
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
  L1_1 = L1_1.Inventory_DecoderSpypod
  if L0_0 == L1_1 then
    function L1_1()
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.SetCursorPos(1220, 130)
      _util.ActivateNpc(_id.M2C2_EncodedPlans, 1)
    end
    _util.StartMiniGame(_const.DECODER, 1054)
    scriptPlay(L1_1)
  end
end
