local L0_0, L1_1, L2_2, L3_3, L4_4
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
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COLLIDED
  L0_0(L1_1)
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
L4_4 = _const
L4_4 = L4_4.TOUCHED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L4_4 = "M9_canFixMine"
  L3_3 = L3_3(L4_4)
  if L3_3 == 1 then
    function L3_3()
      _util.ChangeRoom(124)
    end
    L4_4 = scriptPlay
    L4_4(L3_3)
  else
    L3_3 = _util
    L3_3 = L3_3.AddPlayerThought
    L4_4 = _text
    L4_4 = L4_4.M9_TROUGH_TOUCH
    L3_3(L4_4)
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.ITEM_DROPPED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetSource
  L3_3 = L3_3()
  L4_4 = _id
  L4_4 = L4_4.Inventory_PuffleBlue
  if L3_3 == L4_4 then
    L4_4 = _util
    L4_4 = L4_4.SetSuccess
    L4_4(_util.GetSelf(), true)
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.COLLIDED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetSource
  L3_3 = L3_3()
  L4_4 = _id
  L4_4 = L4_4.Inventory_PuffleBlue
  if L3_3 == L4_4 then
    function L4_4()
      _util.ChangeBaseAnim("MissionObjects/SpySeek/scripted/troughDownToUp", _id.M9_TroughUp)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M9_TroughUp)
      _util.ChangeBaseAnim("MissionObjects/SpySeek/scripted/troughDown", _id.M9_TroughUp)
      _util.SetVar("M9_canFixMine", 2)
      _util.ActivateNpc(_id.M9_Rory, 4)
    end
    scriptPlay(L4_4)
  end
end
