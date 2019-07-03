local L0_0, L1_1, L2_2
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
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.TOUCHED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L2_2 = "C2_BeltBroken"
  L1_1 = L1_1(L2_2)
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddPlayerThought
    L2_2 = _text
    L2_2 = L2_2.C4_CUTBELT_PLACEHOLDER3
    L1_1(L2_2)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "C2_BeltBroken"
    L1_1 = L1_1(L2_2)
    if L1_1 > 0 then
      L1_1 = _util
      L1_1 = L1_1.AddPlayerThought
      L2_2 = _text
      L2_2 = L2_2.C4_CUTBELT_PLACEHOLDER2
      L1_1(L2_2)
    end
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.ITEM_DROPPED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _id
  L2_2 = L2_2.Inventory_ScissorsTool
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("C2_BeltBroken")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.AddPlayerThought
      L2_2(_text.C4_CUTBELT_PLACEHOLDER)
      function L2_2()
        _util.DisableInput()
        _util.AddItem(_id.C4_ScissorsBreak)
        _util.ChangeBaseAnim("MissionObjects/M4/scissorsBreak", _id.C4_ScissorsBreak)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.C4_ScissorsBreak)
        _util.DisableSpyPodFunc(_const.FLAG_SCISSORS)
        _util.ActivateNpc(_id.C4_SkiVillage_Klutzy, 1)
      end
      scriptPlay(L2_2)
    end
  end
end
