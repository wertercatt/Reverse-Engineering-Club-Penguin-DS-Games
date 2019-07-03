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
  if L0_0 == 0 then
    L2_2 = _util
    L2_2 = L2_2.AddLoopingConv
    L2_2(1026)
    L2_2 = _util
    L2_2 = L2_2.AddLoopingOption
    L2_2(1027, 1030, _const.UPDATE_LOOP)
    L2_2 = _util
    L2_2 = L2_2.AddLoopingOption
    L2_2(1028, 1031, _const.UPDATE_LOOP)
    L2_2 = _util
    L2_2 = L2_2.AddLoopingOption
    L2_2(1029, -1, _const.CHANGE_DIALOG, 1)
  elseif L0_0 == 1 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("gotCard")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.AddConversation
      L2_2(1032, 1033, -1, _const.CHANGE_DIALOG, 2)
    end
  elseif L0_0 == 2 then
    L2_2 = _util
    L2_2 = L2_2.AddConversation
    L2_2(1034, 1035, -1, _const.CHANGE_DIALOG, 3)
  elseif L0_0 == 3 then
    L2_2 = _util
    L2_2 = L2_2.AddConversation
    L2_2(1036, 1037, -1, _const.CHANGE_DIALOG, 4)
    L2_2 = _util
    L2_2 = L2_2.SetCursorPos
    L2_2(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
  elseif L0_0 == 4 then
    function L2_2()
      _util.DisableInput()
      _util.SwitchState("give", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _util.GetSelf())
      _util.EnableInput()
      _util.AddInventoryItem(_id.Inventory_PostCard)
      _util.SetVar("gotCard", 1)
      _util.SetConversationCount(5)
    end
    scriptPlay(L2_2)
  elseif L0_0 == 5 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("gotCard")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.AddLoopingConv
      L2_2(1038)
      L2_2 = _util
      L2_2 = L2_2.AddLoopingOption
      L2_2(1039, 1040, _const.UPDATE_LOOP)
      L2_2 = _util
      L2_2 = L2_2.AddLoopingOption
      L2_2(1028, 1031, _const.UPDATE_LOOP)
      L2_2 = _util
      L2_2 = L2_2.AddLoopingOption
      L2_2(1029, -1, _const.CHANGE_DIALOG, 101)
    end
  elseif L0_0 == 101 then
    L2_2 = _util
    L2_2 = L2_2.AddDialog
    L2_2(4375, _const.END_DIALOG, 5)
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
        _util.SetVar("signatureAuntArtic", 1)
        _util.IncVar("signatureCount")
        _util.SetSpawn(0, _util.GetSelf())
        _util.SetConversationCount(5)
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
        _util.SetVar("signatureAuntArtic", 1)
        _util.IncVar("signatureCount")
        _util.SetSpawn(0, _util.GetSelf())
        _util.SetConversationCount(5)
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
        _util.SetVar("signatureAuntArtic", 1)
        _util.IncVar("signatureCount")
        _util.SetSpawn(0, _util.GetSelf())
        _util.SetConversationCount(5)
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
        _util.SetVar("signatureAuntArtic", 1)
        _util.IncVar("signatureCount")
        _util.SetSpawn(0, _util.GetSelf())
        _util.SetConversationCount(5)
      end
      scriptPlay(L2_2)
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
  L1_1 = L1_1.Inventory_Pen
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "gotCard"
    L1_1 = L1_1(L2_2)
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L2_2 = 1041
      L1_1(L2_2, _const.END_DIALOG, 0)
    end
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_Pen
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "gotCard"
      L1_1 = L1_1(L2_2)
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L2_2 = 1041
        L1_1(L2_2, _const.END_DIALOG, 5)
      end
    else
      L1_1 = _id
      L1_1 = L1_1.Inventory_PostCard
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L2_2 = 1042
        L1_1(L2_2, _const.END_DIALOG, 5)
      else
        L1_1 = _id
        L1_1 = L1_1.Inventory_PostCardPen
        if L0_0 == L1_1 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L2_2 = "signatureAuntArtic"
          L1_1 = L1_1(L2_2)
          if L1_1 == 0 then
            L1_1 = _util
            L1_1 = L1_1.AddDialog
            L2_2 = 1043
            L1_1(L2_2, _const.CHANGE_DIALOG, 99)
          end
        else
          L1_1 = _id
          L1_1 = L1_1.Inventory_SignedCard1
          if L0_0 == L1_1 then
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L2_2 = "signatureAuntArtic"
            L1_1 = L1_1(L2_2)
            if L1_1 == 0 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L2_2 = 1043
              L1_1(L2_2, _const.CHANGE_DIALOG, 99)
            end
          else
            L1_1 = _id
            L1_1 = L1_1.Inventory_SignedCard2
            if L0_0 == L1_1 then
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L2_2 = "signatureAuntArtic"
              L1_1 = L1_1(L2_2)
              if L1_1 == 0 then
                L1_1 = _util
                L1_1 = L1_1.AddDialog
                L2_2 = 1043
                L1_1(L2_2, _const.CHANGE_DIALOG, 99)
              end
            else
              L1_1 = _id
              L1_1 = L1_1.Inventory_SignedCard3
              if L0_0 == L1_1 then
                L1_1 = _util
                L1_1 = L1_1.GetVar
                L2_2 = "signatureAuntArtic"
                L1_1 = L1_1(L2_2)
                if L1_1 == 0 then
                  L1_1 = _util
                  L1_1 = L1_1.AddDialog
                  L2_2 = 1043
                  L1_1(L2_2, _const.CHANGE_DIALOG, 99)
                end
              end
            end
          end
        end
      end
    end
  end
end
