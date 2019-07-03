local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = 41321
L3_3 = 33599
L4_4 = 42298
L5_5 = _util
L5_5 = L5_5.GetReason
L5_5 = L5_5()
L6_6 = _const
L6_6 = L6_6.CREATED
if L5_5 == L6_6 then
  L5_5 = _util
  L5_5 = L5_5.AddInterest
  L6_6 = _const
  L6_6 = L6_6.ITEM_DROPPED
  L5_5(L6_6)
end
L5_5 = _util
L5_5 = L5_5.GetReason
L5_5 = L5_5()
L6_6 = _const
L6_6 = L6_6.TOUCHED
if L5_5 == L6_6 then
  L5_5 = _util
  L5_5 = L5_5.GetVar
  L6_6 = "M8_touchGiftDoor"
  L5_5 = L5_5(L6_6)
  if L5_5 == 0 then
    L5_5 = _util
    L5_5 = L5_5.SetVar
    L6_6 = "M8_touchGiftDoor"
    L5_5(L6_6, 1)
    L5_5 = _util
    L5_5 = L5_5.AddPlayerThought
    L6_6 = _text
    L6_6 = L6_6.ITEM_TUNNEL_PIPE_TOUCH
    L5_5(L6_6, _const.END_DIALOG, -1, 1)
  else
    L5_5 = _util
    L5_5 = L5_5.GetVar
    L6_6 = "M8_touchGiftDoor"
    L5_5 = L5_5(L6_6)
    if L5_5 == 1 then
      L5_5 = _util
      L5_5 = L5_5.SetVar
      L6_6 = "M8_touchGiftDoor"
      L5_5(L6_6, 0)
      L5_5 = _util
      L5_5 = L5_5.AddPlayerThought
      L6_6 = _text
      L6_6 = L6_6.ITEM_TUNNEL_PIPE_TOUCH2
      L5_5(L6_6, _const.END_DIALOG, -1, 0)
    end
  end
end
L5_5 = _util
L5_5 = L5_5.GetReason
L5_5 = L5_5()
L6_6 = _const
L6_6 = L6_6.ITEM_DROPPED
if L5_5 == L6_6 then
  L5_5 = _util
  L5_5 = L5_5.GetSource
  L5_5 = L5_5()
  L6_6 = _id
  L6_6 = L6_6.Inventory_WrenchTool
  if L5_5 == L6_6 then
    function L6_6()
      _util.ChangeBaseAnim("MissionObjects/MysteriousTremors/scripted/pipe", _id.M8_UG_PipeoverDoor, "wrench")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M8_UG_PipeoverDoor)
      _util.DelItem(_id.M8_UG_PipeoverDoor)
      _util.SetExitLocked(_id.Door_UGGift_GiftShop, false)
      _util.SetExitLocked(_id.M8_GiftDoor2UG, false)
    end
    scriptPlay(L6_6)
  end
end
