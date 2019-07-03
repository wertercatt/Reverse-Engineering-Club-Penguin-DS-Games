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
  L1_1 = L1_1.COMBINE
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
  L1_1 = L1_1.IsPlayerInRoom
  L2_2 = 41
  L1_1 = L1_1(L2_2)
  if L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "GrabRookieCornClues"
    L1_1 = L1_1(L2_2)
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L2_2 = _text
      L2_2 = L2_2.M11_GS_TALKWITH_ROOKIE1ST
      L1_1(L2_2, "DialogStrings", _const.END_DIALOG, 0)
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "GrabRookieCornClues"
      L1_1 = L1_1(L2_2)
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.DisableInput
        L1_1()
        L1_1 = _util
        L1_1 = L1_1.HasInventoryItem
        L2_2 = _id
        L2_2 = L2_2.M11_KernelClue2
        L1_1 = L1_1(L2_2)
        if L1_1 then
          L1_1 = _util
          L1_1 = L1_1.AddInventoryItem
          L2_2 = _id
          L2_2 = L2_2.M11_AllKernelClues
          L1_1(L2_2)
          L1_1 = _util
          L1_1 = L1_1.RemoveInventoryItem
          L2_2 = _id
          L2_2 = L2_2.M11_KernelClue2
          L1_1(L2_2)
        else
          L1_1 = _util
          L1_1 = L1_1.AddInventoryItem
          L2_2 = _id
          L2_2 = L2_2.M11_KernelClue1
          L1_1(L2_2)
        end
        L1_1 = _util
        L1_1 = L1_1.DelItem
        L2_2 = _id
        L2_2 = L2_2.M11_KernelClue1
        L1_1(L2_2)
        L1_1 = _util
        L1_1 = L1_1.SetVar
        L2_2 = "HaveCornRookie"
        L1_1(L2_2, 1)
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L2_2 = "HaveCornRookie"
        L1_1 = L1_1(L2_2)
        if L1_1 == 1 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L2_2 = "FoundCornJPG"
          L1_1 = L1_1(L2_2)
          if L1_1 == 1 then
            L1_1 = _util
            L1_1 = L1_1.SetExitLocked
            L2_2 = _id
            L2_2 = L2_2.Doors_GiftShop2Town
            L1_1(L2_2, false)
          end
        end
        function L1_1()
          repeat
            scriptWait()
          until _util.IsPopUpVisible()
          _util.EnableInput()
          repeat
            scriptWait()
          until not _util.IsPopUpVisible()
          _util.DisableInput()
          repeat
            scriptWait()
          until 40 - 1 == 0
          _util.EnableInput()
          _util.ActivateNpc(_id.M11_GS_NPC_Rookie, 50)
        end
        L2_2 = scriptPlay
        L2_2(L1_1)
      end
    end
  else
    L1_1 = _util
    L1_1 = L1_1.IsPlayerInRoom
    L2_2 = 37
    L1_1 = L1_1(L2_2)
    if L1_1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "GrabJPGCornClues"
      L1_1 = L1_1(L2_2)
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L2_2 = _text
        L2_2 = L2_2.M11_GO_TALKWITH_JPG1ST
        L1_1(L2_2, "DialogStrings", _const.END_DIALOG, 0)
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L2_2 = "GrabJPGCornClues"
        L1_1 = L1_1(L2_2)
        if L1_1 == 1 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L2_2 = "HaveALookAround"
          L1_1 = L1_1(L2_2)
          if L1_1 == 1 then
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L2_2 = "CheckForClues"
            L1_1 = L1_1(L2_2)
            if L1_1 == 1 then
              L1_1 = _util
              L1_1 = L1_1.HasInventoryItem
              L2_2 = _id
              L2_2 = L2_2.M11_KernelClue1
              L1_1 = L1_1(L2_2)
              if L1_1 then
                L1_1 = _util
                L1_1 = L1_1.AddInventoryItem
                L2_2 = _id
                L2_2 = L2_2.M11_AllKernelClues
                L1_1(L2_2)
                L1_1 = _util
                L1_1 = L1_1.RemoveInventoryItem
                L2_2 = _id
                L2_2 = L2_2.M11_KernelClue1
                L1_1(L2_2)
              else
                L1_1 = _util
                L1_1 = L1_1.AddInventoryItem
                L2_2 = _id
                L2_2 = L2_2.M11_KernelClue2
                L1_1(L2_2)
              end
              L1_1 = _util
              L1_1 = L1_1.DelItem
              L2_2 = _id
              L2_2 = L2_2.M11_KernelClue2
              L1_1(L2_2)
              L1_1 = _util
              L1_1 = L1_1.SetVar
              L2_2 = "FoundCornJPG"
              L1_1(L2_2, 1)
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L2_2 = "HaveCornRookie"
              L1_1 = L1_1(L2_2)
              if L1_1 == 1 then
                L1_1 = _util
                L1_1 = L1_1.GetVar
                L2_2 = "FoundCornJPG"
                L1_1 = L1_1(L2_2)
                if L1_1 == 1 then
                  L1_1 = _util
                  L1_1 = L1_1.SetExitLocked
                  L2_2 = _id
                  L2_2 = L2_2.Doors_GiftShop2Town
                  L1_1(L2_2, false)
                end
              end
              function L1_1()
                repeat
                  scriptWait()
                until _util.IsPopUpVisible()
                _util.EnableInput()
                repeat
                  scriptWait()
                until not _util.IsPopUpVisible()
                _util.DisableInput()
                repeat
                  scriptWait()
                until 40 - 1 == 0
                _util.EnableInput()
                _util.ActivateNpc(_id.M11_GS_NPC_JPG, 5)
              end
              L2_2 = scriptPlay
              L2_2(L1_1)
            end
          end
        end
      end
    end
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.COMBINE
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSelf
  L1_1 = L1_1()
  L2_2 = _util
  L2_2 = L2_2.GetSource
  L2_2 = L2_2()
  if L2_2 == _id.M11_KernelClue1 or L2_2 == _id.M11_KernelClue2 then
    _util.RemoveInventoryItem(L1_1)
    _util.RemoveInventoryItem(L2_2)
    _util.AddInventoryItem(_id.M11_AllKernelClues)
    _util.SetCombinationSuccess(1)
  end
end
