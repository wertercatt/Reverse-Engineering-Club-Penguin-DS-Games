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
  L1_1 = 0
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("beansClean")
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.AddDialog
    L2_2(965, _const.END_DIALOG, L0_0)
  else
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("beansClean")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("thanksForCleaning")
      if L2_2 == 1 and L0_0 == 0 then
        function L2_2()
          _util.DisplayPopUp(493, "UI/Smilie", false)
          repeat
            scriptWait()
          until _util.IsPopUpVisible() == false
          _util.AddConversation(967, 968, -1, _const.CHANGE_DIALOG, 77)
        end
        scriptPlay(L2_2)
      end
    elseif L0_0 == 77 then
      L2_2 = _util
      L2_2 = L2_2.AddDialog
      L2_2(969)
      L2_2 = _util
      L2_2 = L2_2.AddDialogButton
      L2_2(970, _const.CHANGE_DIALOG, 0)
      L2_2 = _util
      L2_2 = L2_2.SetVar
      L2_2("thanksForCleaning", 2)
    else
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("beansClean")
      if L2_2 == 1 then
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L2_2 = L2_2("puffleHappy")
        if L2_2 == 0 then
          L2_2 = _util
          L2_2 = L2_2.GetVar
          L2_2 = L2_2("thanksForCleaning")
          if L2_2 == 2 and L0_0 == 0 then
            L2_2 = _util
            L2_2 = L2_2.AddLoopingConv
            L2_2(971)
            L2_2 = _util
            L2_2 = L2_2.AddLoopingOption
            L2_2(972, 980, _const.CHANGE_DIALOG, 1)
            L2_2 = _util
            L2_2 = L2_2.AddLoopingOption
            L2_2(973, 976, _const.UPDATE_LOOP)
            L2_2 = _util
            L2_2 = L2_2.AddLoopingOption
            L2_2(974, -1, _const.CHANGE_DIALOG, 101)
          end
        end
      elseif L0_0 == 101 then
        L2_2 = _util
        L2_2 = L2_2.AddDialog
        L2_2(4369, _const.END_DIALOG, 0)
      elseif L0_0 == 1 then
        L2_2 = _util
        L2_2 = L2_2.AddLoopingConv
        L2_2(975)
        L2_2 = _util
        L2_2 = L2_2.AddLoopingOption
        L2_2(977, 980, _const.UPDATE_LOOP)
        L2_2 = _util
        L2_2 = L2_2.AddLoopingOption
        L2_2(978, 981, _const.UPDATE_LOOP)
        L2_2 = _util
        L2_2 = L2_2.AddLoopingOption
        L2_2(979, -1, _const.CHANGE_DIALOG, 102)
      elseif L0_0 == 102 then
        L2_2 = _util
        L2_2 = L2_2.AddDialog
        L2_2(4370, _const.END_DIALOG, 0)
      else
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L2_2 = L2_2("puffleHappy")
        if L2_2 == 1 then
          L2_2 = _util
          L2_2 = L2_2.AddConversation
          L2_2(985, -1, -1, _const.END_DIALOG, L0_0)
        elseif L0_0 == 99 then
          L2_2 = _util
          L2_2 = L2_2.GetVar
          L2_2 = L2_2("signatureCount")
          if L2_2 == 0 then
            function L2_2()
              _util.DisableInput()
              _util.RemoveInventoryItem(_id.Inventory_PostCardPen)
              _util.SwitchState("sign", _util.GetSelf())
              repeat
                _UPVALUE0_ = _UPVALUE0_ + 1
                scriptWait()
                if _UPVALUE0_ == 15 then
                  _util.PlaySFX(119)
                end
              until not _util.IsAnimPlaying(_util.GetSelf())
              _util.SwitchState("", _util.GetSelf())
              _util.EnableInput()
              _util.AddInventoryItem(_id.Inventory_SignedCard1)
              repeat
                scriptWait()
              until _util.IsPopUpVisible() == false
              _util.PopCamera()
              _util.SetVar("signatureBarista", 1)
              _util.IncVar("signatureCount")
              _util.SetConversationCount(0)
            end
            scriptPlay(L2_2)
          end
        elseif L0_0 == 99 then
          L2_2 = _util
          L2_2 = L2_2.GetVar
          L2_2 = L2_2("signatureCount")
          if L2_2 == 1 then
            function L2_2()
              _util.DisableInput()
              _util.RemoveInventoryItem(_id.Inventory_SignedCard1)
              _util.SwitchState("sign", _util.GetSelf())
              repeat
                _UPVALUE0_ = _UPVALUE0_ + 1
                scriptWait()
                if _UPVALUE0_ == 15 then
                  _util.PlaySFX(119)
                end
              until not _util.IsAnimPlaying(_util.GetSelf())
              _util.SwitchState("", _util.GetSelf())
              _util.EnableInput()
              _util.AddInventoryItem(_id.Inventory_SignedCard2)
              repeat
                scriptWait()
              until _util.IsPopUpVisible() == false
              _util.PopCamera()
              _util.SetVar("signatureBarista", 1)
              _util.IncVar("signatureCount")
              _util.SetConversationCount(0)
            end
            scriptPlay(L2_2)
          end
        elseif L0_0 == 99 then
          L2_2 = _util
          L2_2 = L2_2.GetVar
          L2_2 = L2_2("signatureCount")
          if L2_2 == 2 then
            function L2_2()
              _util.DisableInput()
              _util.RemoveInventoryItem(_id.Inventory_SignedCard2)
              _util.SwitchState("sign", _util.GetSelf())
              repeat
                _UPVALUE0_ = _UPVALUE0_ + 1
                scriptWait()
                if _UPVALUE0_ == 15 then
                  _util.PlaySFX(119)
                end
              until not _util.IsAnimPlaying(_util.GetSelf())
              _util.SwitchState("", _util.GetSelf())
              _util.EnableInput()
              _util.AddInventoryItem(_id.Inventory_SignedCard3)
              repeat
                scriptWait()
              until _util.IsPopUpVisible() == false
              _util.PopCamera()
              _util.SetVar("signatureBarista", 1)
              _util.IncVar("signatureCount")
              _util.SetConversationCount(0)
            end
            scriptPlay(L2_2)
          end
        elseif L0_0 == 99 then
          L2_2 = _util
          L2_2 = L2_2.GetVar
          L2_2 = L2_2("signatureCount")
          if L2_2 == 3 then
            function L2_2()
              _util.DisableInput()
              _util.RemoveInventoryItem(_id.Inventory_SignedCard3)
              _util.SwitchState("sign", _util.GetSelf())
              repeat
                _UPVALUE0_ = _UPVALUE0_ + 1
                scriptWait()
                if _UPVALUE0_ == 15 then
                  _util.PlaySFX(119)
                end
              until not _util.IsAnimPlaying(_util.GetSelf())
              _util.SwitchState("", _util.GetSelf())
              _util.EnableInput()
              _util.AddInventoryItem(_id.Inventory_SignedCard4)
              repeat
                scriptWait()
              until _util.IsPopUpVisible() == false
              _util.PopCamera()
              _util.SetVar("signatureBarista", 1)
              _util.IncVar("signatureCount")
              _util.SetConversationCount(0)
            end
            scriptPlay(L2_2)
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
L1_1 = L1_1.ITEM_DROPPED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("thanksForCleaning")
  if L2_2 < 2 then
    L2_2 = _util
    L2_2 = L2_2.ActivateNpc
    L2_2(_util.GetSelf(), 0)
  else
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("thanksForCleaning")
    if L2_2 == 2 then
      L2_2 = _id
      L2_2 = L2_2.Inventory_Pen
      if L1_1 == L2_2 then
        L2_2 = _util
        L2_2 = L2_2.AddDialog
        L2_2(982, _const.END_DIALOG, L0_0)
      else
        L2_2 = _id
        L2_2 = L2_2.Inventory_PostCard
        if L1_1 == L2_2 then
          L2_2 = _util
          L2_2 = L2_2.AddDialog
          L2_2(983, _const.END_DIALOG, L0_0)
        else
          L2_2 = _id
          L2_2 = L2_2.Inventory_PostCardPen
          if L1_1 == L2_2 then
            L2_2 = _util
            L2_2 = L2_2.GetVar
            L2_2 = L2_2("signatureBarista")
            if L2_2 == 0 then
              L2_2 = _util
              L2_2 = L2_2.AddDialog
              L2_2(984, _const.CHANGE_DIALOG, 99)
            end
          else
            L2_2 = _id
            L2_2 = L2_2.Inventory_SignedCard1
            if L1_1 == L2_2 then
              L2_2 = _util
              L2_2 = L2_2.GetVar
              L2_2 = L2_2("signatureBarista")
              if L2_2 == 0 then
                L2_2 = _util
                L2_2 = L2_2.AddDialog
                L2_2(984, _const.CHANGE_DIALOG, 99)
              end
            else
              L2_2 = _id
              L2_2 = L2_2.Inventory_SignedCard2
              if L1_1 == L2_2 then
                L2_2 = _util
                L2_2 = L2_2.GetVar
                L2_2 = L2_2("signatureBarista")
                if L2_2 == 0 then
                  L2_2 = _util
                  L2_2 = L2_2.AddDialog
                  L2_2(984, _const.CHANGE_DIALOG, 99)
                end
              else
                L2_2 = _id
                L2_2 = L2_2.Inventory_SignedCard3
                if L1_1 == L2_2 then
                  L2_2 = _util
                  L2_2 = L2_2.GetVar
                  L2_2 = L2_2("signatureBarista")
                  if L2_2 == 0 then
                    L2_2 = _util
                    L2_2 = L2_2.AddDialog
                    L2_2(984, _const.CHANGE_DIALOG, 99)
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
