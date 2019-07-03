local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L1_1 = "introDone"
  L2_2 = 0
  L0_0(L1_1, L2_2)
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L1_1 = "puffleHappy"
  L2_2 = 0
  L0_0(L1_1, L2_2)
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L1_1 = "keyWelded"
  L2_2 = 0
  L0_0(L1_1, L2_2)
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L1_1 = "gotCard"
  L2_2 = 0
  L0_0(L1_1, L2_2)
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L1_1 = "beansClean"
  L2_2 = 0
  L0_0(L1_1, L2_2)
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L1_1 = "thanksForCleaning"
  L2_2 = 0
  L0_0(L1_1, L2_2)
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L1_1 = "mapFound"
  L2_2 = 0
  L0_0(L1_1, L2_2)
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L1_1 = "plansDecoded"
  L2_2 = 0
  L0_0(L1_1, L2_2)
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L1_1 = "note4Dot"
  L2_2 = 0
  L0_0(L1_1, L2_2)
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L1_1 = "signatureAuntArtic"
  L2_2 = 0
  L0_0(L1_1, L2_2)
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L1_1 = "signatureBarista"
  L2_2 = 0
  L0_0(L1_1, L2_2)
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L1_1 = "signatureSnowFortNPC1"
  L2_2 = 0
  L0_0(L1_1, L2_2)
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L1_1 = "signatureSnowFortNPC2"
  L2_2 = 0
  L0_0(L1_1, L2_2)
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L1_1 = "signatureCount"
  L2_2 = 0
  L0_0(L1_1, L2_2)
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
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L2_2 = "introDone"
  L1_1 = L1_1(L2_2)
  if L1_1 == 0 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L2_2 = 936
      L1_1(L2_2, 937, -1, _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L2_2 = 938
      L1_1(L2_2, 939, -1, _const.CHANGE_DIALOG, 2)
    elseif L0_0 == 2 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L2_2 = 940
      L1_1(L2_2, -1, -1, _const.CHANGE_DIALOG, 99)
    elseif L0_0 == 99 then
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
        L1_4 = {L2_5, L3_6}
        for L5_8, L6_9 in L2_5(L3_6) do
          print("Lua: playing animation:", L6_9)
          _util.SwitchState(L6_9, L0_3)
          repeat
            scriptWait()
          until not _util.IsAnimPlaying(L0_3)
        end
        L2_5(L3_6, L4_7)
        L2_5(L3_6, L4_7)
        L2_5()
      end
      scriptPlay(L2_2)
    elseif L0_0 == 3 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L2_2 = "introDone"
      L1_1(L2_2, 1)
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L2_2 = 941
      L1_1(L2_2, -1, -1, _const.END_DIALOG, 4)
      L1_1 = _util
      L1_1 = L1_1.SetObjective
      L2_2 = 645
      L1_1(L2_2)
    end
  end
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L2_2 = "puffleHappy"
  L1_1 = L1_1(L2_2)
  if L1_1 == 1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "keyWelded"
    L1_1 = L1_1(L2_2)
    if L1_1 == 0 then
      if L0_0 == 8 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L2_2 = 4368
        L1_1(L2_2, _const.END_DIALOG, 4)
      else
        L1_1 = _util
        L1_1 = L1_1.AddLoopingConv
        L2_2 = 957
        L1_1(L2_2)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L2_2 = 958
        L1_1(L2_2, 961, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L2_2 = 959
        L1_1(L2_2, 962, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L2_2 = 960
        L1_1(L2_2, -1, _const.CHANGE_DIALOG, 8)
      end
    end
  end
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L2_2 = "puffleHappy"
  L1_1 = L1_1(L2_2)
  if L1_1 == 0 and L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L2_2 = 942
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L2_2 = 943
    L1_1(L2_2, 947, _const.CHANGE_DIALOG, 5)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L2_2 = 944
    L1_1(L2_2, 948, _const.UPDATE_LOOP)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L2_2 = 946
    L1_1(L2_2, -1, _const.CHANGE_DIALOG, 7)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L2_2 = 947
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddDialogButton
    L2_2 = 945
    L1_1(L2_2, _const.CHANGE_DIALOG, 6)
    L1_1 = _util
    L1_1 = L1_1.AddDialogButton
    L2_2 = 946
    L1_1(L2_2, _const.CHANGE_DIALOG, 7)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L2_2 = 949
    L1_1(L2_2, _const.END_DIALOG, 4)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L2_2 = 4367
    L1_1(L2_2, _const.END_DIALOG, 4)
  elseif L0_0 == 333 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L2_2 = 954
    L1_1(L2_2, _const.CHANGE_DIALOG, 335)
  elseif L0_0 == 335 then
    L1_1 = _util
    L1_1 = L1_1.AddDialogButton
    L2_2 = 955
    L1_1(L2_2, _const.CHANGE_DIALOG, 334)
  elseif L0_0 == 334 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L2_2 = 956
    L1_1(L2_2, _const.END_DIALOG, 4)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L2_2 = "puffleHappy"
    L1_1(L2_2, 1)
    L1_1 = _util
    L1_1 = L1_1.SetPuffle
    L2_2 = _id
    L2_2 = L2_2.Inventory_PuffleBlack
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.EnablePuffle
    L2_2 = _const
    L2_2 = L2_2.FLAG_BLACK
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.DelItem
    L2_2 = _id
    L2_2 = L2_2.NPC_FlareSad
    L1_1(L2_2)
  end
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L2_2 = "keyWelded"
  L1_1 = L1_1(L2_2)
  if L1_1 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L2_2 = 963
    L1_1(L2_2, _const.END_DIALOG, L0_0)
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.ITEM_DROPPED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _id
  L2_2 = L2_2.Inventory_Pen
  if L1_1 == L2_2 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L2_2 = 950
    L1_1(L2_2, _const.END_DIALOG, L0_0)
  else
    L1_1 = _util
    L1_1 = L1_1.GetSource
    L1_1 = L1_1()
    L2_2 = _id
    L2_2 = L2_2.Inventory_PostCard
    if L1_1 == L2_2 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L2_2 = 950
      L1_1(L2_2, _const.END_DIALOG, L0_0)
    else
      L1_1 = _util
      L1_1 = L1_1.GetSource
      L1_1 = L1_1()
      L2_2 = _id
      L2_2 = L2_2.Inventory_PostCardPen
      if L1_1 == L2_2 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L2_2 = 950
        L1_1(L2_2, _const.END_DIALOG, L0_0)
      else
        L1_1 = _util
        L1_1 = L1_1.GetSource
        L1_1 = L1_1()
        L2_2 = _id
        L2_2 = L2_2.Inventory_SignedCard1
        if L1_1 == L2_2 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L2_2 = 950
          L1_1(L2_2, _const.END_DIALOG, L0_0)
        else
          L1_1 = _util
          L1_1 = L1_1.GetSource
          L1_1 = L1_1()
          L2_2 = _id
          L2_2 = L2_2.Inventory_SignedCard2
          if L1_1 == L2_2 then
            L1_1 = _util
            L1_1 = L1_1.AddDialog
            L2_2 = 950
            L1_1(L2_2, _const.END_DIALOG, L0_0)
          else
            L1_1 = _util
            L1_1 = L1_1.GetSource
            L1_1 = L1_1()
            L2_2 = _id
            L2_2 = L2_2.Inventory_SignedCard3
            if L1_1 == L2_2 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L2_2 = 950
              L1_1(L2_2, _const.END_DIALOG, L0_0)
            else
              L1_1 = _util
              L1_1 = L1_1.GetSource
              L1_1 = L1_1()
              L2_2 = _id
              L2_2 = L2_2.Inventory_SignedCard4
              if L1_1 == L2_2 then
                L1_1 = _util
                L1_1 = L1_1.AddDialog
                L2_2 = 950
                L1_1(L2_2, _const.END_DIALOG, L0_0)
              else
                L1_1 = _util
                L1_1 = L1_1.GetSource
                L1_1 = L1_1()
                if L1_1 == 27681 then
                  L1_1 = _util
                  L1_1 = L1_1.AddDialog
                  L2_2 = 964
                  L1_1(L2_2, _const.END_DIALOG, L0_0)
                end
              end
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
