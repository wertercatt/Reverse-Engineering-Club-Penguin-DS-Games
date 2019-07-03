local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.TOUCHED then
  if L0_0 == 0 then
    function L1_1()
      _util.DisableInput()
      _util.SwitchState("turn", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.EnableInput()
      _util.PopCamera()
      _util.DelItem(_util.GetSelf())
      _util.AddItem(_id.M10_GiftShop_Owner)
      _util.SetCursorPos(_util.GetX(_id.M10_GiftShop_Owner), _util.GetY(_id.M10_GiftShop_Owner))
      _util.ActivateNpc(_id.M10_GiftShop_Owner, 100)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 100 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.M10_GIFTSHOP_OWNER_GREET)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.M10_GIFTSHOP_OWNERA_Q1, _const.CHANGE_DIALOG, -1, 1)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.M10_GIFTSHOP_OWNERA_Q2, _const.CHANGE_DIALOG, -1, 1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(_text.M10_GIFTSHOP_OWNERA_A, _text.M10_GIFTSHOP_OWNERB_Q1, -1, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(_text.M10_GIFTSHOP_OWNERB_A1)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(_text.M10_GIFTSHOP_OWNERC_Q1, -1, _const.CHANGE_DIALOG, 4)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(_text.M10_GIFTSHOP_OWNERC_Q2, -1, _const.CHANGE_DIALOG, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("helpShopOwner", 1)
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.M10_GIFTSHOP_OWNERC_A2, _const.END_DIALOG, 4)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("boxPlaced")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("clothesPlaced")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("tablePlaced")
        if L1_1 == 1 then
          L1_1 = _util
          L1_1 = L1_1.ActivateNpc
          L1_1(_util.GetSelf(), 101)
        end
      end
    end
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("helpShopOwner", 1)
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.M10_GIFTSHOP_OWNER_C1GREET, _const.END_DIALOG, 4)
  elseif L0_0 == 101 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(_text.M10_GIFTSHOP_OWNER_GREET4)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(_text.M10_GIFTSHOP_OWNERD_Q1, -1, _const.CHANGE_DIALOG, 7)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(_text.M10_GIFTSHOP_OWNERD_Q2, -1, _const.CHANGE_DIALOG, 8)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.M10_GIFTSHOP_OWNERD_A1, _const.CHANGE_DIALOG, 102)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.M10_GIFTSHOP_OWNERD_A2, _const.CHANGE_DIALOG, 102)
  elseif L0_0 == 102 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M10_fixVaultHinge")
    if L1_1 ~= 0 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M10_fixVaultLock")
    else
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(_text.M10_GIFTOWNER_DOORHELP, _const.CHANGE_DIALOG, 103)
    end
    else
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(_text.M10_GIFTOWNER_DOORHELP3, _const.END_DIALOG, 104)
    end
  elseif L0_0 == 103 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("M10_fixVault", 1)
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.M10_GIFTOWNER_DOORHELP2, _const.END_DIALOG, 102)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.M10_GIFTSHOP_OWNERC_Q1, _const.END_DIALOG, 102)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.M10_GIFTSHOP_OWNERC_Q2, _const.END_DIALOG, 102)
  elseif L0_0 == 104 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.M10_GIFTSHOP_OWNERC_B1_2C, _const.END_DIALOG, 104)
  else
    L1_1 = _util
    L1_1 = L1_1.ActivateNpc
    L1_1(_util.GetSelf(), 102)
  end
end
