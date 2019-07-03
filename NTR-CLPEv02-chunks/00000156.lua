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
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  if L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.GetSelf
    L1_1 = L1_1()
    L2_2 = _util
    L2_2 = L2_2.DisableInput
    L2_2()
    function L2_2()
      local L0_3, L1_4, L2_5, L3_6, L4_7, L5_8, L6_9
      L0_3 = _id
      L0_3 = L0_3.NPC_FlareSad
      L1_4 = _util
      L1_4 = L1_4.PushCamera
      L1_4(L2_5)
      L1_4 = {L2_5}
      for L5_8, L6_9 in L2_5(L3_6) do
        print("Lua: playing animation:", L6_9)
        _util.SwitchState(L6_9, L0_3)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(L0_3)
      end
      L2_5()
      L2_5()
    end
    scriptPlay(L2_2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.GetSelf
    L1_1 = L1_1()
    function L2_2()
      local L0_10, L1_11, L2_12, L3_13, L4_14, L5_15
      L0_10 = _util
      L0_10 = L0_10.DisableInput
      L0_10()
      L0_10 = _util
      L0_10 = L0_10.PushCamera
      L0_10(L1_11)
      L0_10 = {L1_11, L2_12}
      for L4_14, L5_15 in L1_11(L2_12) do
        print("Lua: playing animation:", L5_15)
        _util.SwitchState(L5_15, _id.NPC_FlareSad)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.NPC_FlareSad)
      end
      L1_11(L2_12, L3_13)
      L4_14 = false
      L1_11(L2_12, L3_13, L4_14)
      L1_11()
      repeat
        L1_11()
      until L1_11 == false
      L1_11(L2_12)
      L1_11(L2_12, L3_13)
      L1_11(L2_12, L3_13)
    end
    scriptPlay(L2_2)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "puffleHappy"
    L1_1 = L1_1(L2_2)
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L2_2 = 951
      L1_1(L2_2)
    end
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
  L1_1 = L1_1.Inventory_PostCard
  if L0_0 == L1_1 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = 952
    L0_0(L1_1)
  else
    L0_0 = _util
    L0_0 = L0_0.GetSource
    L0_0 = L0_0()
    L1_1 = _id
    L1_1 = L1_1.Inventory_PostCardPen
    if L0_0 == L1_1 then
      L0_0 = _util
      L0_0 = L0_0.AddMonologue
      L1_1 = 952
      L0_0(L1_1)
    else
      L0_0 = _util
      L0_0 = L0_0.GetSource
      L0_0 = L0_0()
      L1_1 = _id
      L1_1 = L1_1.Inventory_SignedCard1
      if L0_0 == L1_1 then
        L0_0 = _util
        L0_0 = L0_0.AddMonologue
        L1_1 = 952
        L0_0(L1_1)
      else
        L0_0 = _util
        L0_0 = L0_0.GetSource
        L0_0 = L0_0()
        L1_1 = _id
        L1_1 = L1_1.Inventory_SignedCard2
        if L0_0 == L1_1 then
          L0_0 = _util
          L0_0 = L0_0.AddMonologue
          L1_1 = 952
          L0_0(L1_1)
        else
          L0_0 = _util
          L0_0 = L0_0.GetSource
          L0_0 = L0_0()
          L1_1 = _id
          L1_1 = L1_1.Inventory_SignedCard3
          if L0_0 == L1_1 then
            L0_0 = _util
            L0_0 = L0_0.AddMonologue
            L1_1 = 952
            L0_0(L1_1)
          else
            L0_0 = _util
            L0_0 = L0_0.GetSource
            L0_0 = L0_0()
            L1_1 = _id
            L1_1 = L1_1.Inventory_SignedCard4
            if L0_0 == L1_1 then
              L0_0 = _util
              L0_0 = L0_0.PushCamera
              L0_0()
              L0_0 = _util
              L0_0 = L0_0.AddDialogButton
              L1_1 = 953
              L2_2 = _const
              L2_2 = L2_2.CHANGE_DIALOG
              L0_0(L1_1, L2_2, 2)
              L0_0 = _util
              L0_0 = L0_0.RemoveInventoryItem
              L1_1 = _id
              L1_1 = L1_1.Inventory_SignedCard4
              L0_0(L1_1)
              L0_0 = _util
              L0_0 = L0_0.EnablePuffle
              L1_1 = _const
              L1_1 = L1_1.FLAG_BLACK
              L0_0(L1_1)
            end
          end
        end
      end
    end
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.COLLIDED
if L0_0 == L1_1 then
end
