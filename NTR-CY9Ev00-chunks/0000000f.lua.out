local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.CREATED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.AddInterest
  L2_2 = _const
  L2_2 = L2_2.ITEM_DROPPED
  L1_1(L2_2)
  L1_1 = _util
  L1_1 = L1_1.AddInterest
  L2_2 = _const
  L2_2 = L2_2.COLLIDED
  L1_1(L2_2)
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.TOUCHED
if L1_1 == L2_2 then
  if L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "M10_fixVaultHinge"
    L1_1 = L1_1(L2_2)
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "M10_fixVaultLock"
      L1_1 = L1_1(L2_2)
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L2_2 = "M10_fixVault"
        L1_1 = L1_1(L2_2)
        if L1_1 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddPlayerThought
          L2_2 = _text
          L2_2 = L2_2.M10_VAULT_TOUCH
          L1_1(L2_2)
        end
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "M10_fixVaultHinge"
      L1_1 = L1_1(L2_2)
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddPlayerThought
        L2_2 = _text
        L2_2 = L2_2.M10_VAULTHINGE_TOUCH
        L1_1(L2_2)
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L2_2 = "M10_fixVaultLock"
        L1_1 = L1_1(L2_2)
        if L1_1 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddPlayerThought
          L2_2 = _text
          L2_2 = L2_2.M10_VAULTLOCK_TOUCH
          L1_1(L2_2)
        else
          L1_1 = _util
          L1_1 = L1_1.AddPlayerThought
          L2_2 = _text
          L2_2 = L2_2.M10_VAULTALL_FIX
          L1_1(L2_2)
        end
      end
    end
  else
    L1_1 = _util
    L1_1 = L1_1.AddPlayerThought
    L2_2 = _text
    L2_2 = L2_2.VAULTDOOR_TOUCH
    L1_1(L2_2)
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.ITEM_DROPPED
if L1_1 == L2_2 and L0_0 == 6 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L3_3 = "M10_fixVault"
  L2_2 = L2_2(L3_3)
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.AddPlayerThought
    L3_3 = _text
    L3_3 = L3_3.M10_VAULT_TOUCH
    L2_2(L3_3)
  else
    L2_2 = _id
    L2_2 = L2_2.Inventory_PuffleBlack
    if L1_1 == L2_2 then
      L2_2 = _util
      L2_2 = L2_2.SetSuccess
      L3_3 = _util
      L3_3 = L3_3.GetSelf
      L3_3 = L3_3()
      L2_2(L3_3, true)
      L2_2 = _util
      L2_2 = L2_2.SetVar
      L3_3 = "M10_fixVaultHinge"
      L2_2(L3_3, 1)
    else
      L2_2 = _id
      L2_2 = L2_2.Inventory_WrenchTool
      if L1_1 == L2_2 then
        L2_2 = _util
        L2_2 = L2_2.SetVar
        L3_3 = "M10_fixVaultLock"
        L2_2(L3_3, 1)
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L3_3 = "M10_fixVaultHinge"
        L2_2 = L2_2(L3_3)
        if L2_2 == 0 then
          L2_2 = _util
          L2_2 = L2_2.AddPlayerThought
          L3_3 = _text
          L3_3 = L3_3.M10_VAULTLOCK_FIX
          L2_2(L3_3)
        else
          function L2_2()
            _util.DisableInput()
            _util.ChangeBaseAnim("Location/GiftShop/state/GiftVaultDoorOpening1", _util.GetSelf())
            repeat
              scriptWait()
            until not _util.IsAnimPlaying(_util.GetSelf())
            _util.ChangeBaseAnim("Location/GiftShop/state/GiftVaultDoorOpening2", _util.GetSelf())
            repeat
              scriptWait()
            until not _util.IsAnimPlaying(_util.GetSelf())
            _util.ChangeBaseAnim("Location/GiftShop/state/GiftVaultDoorOpen", _util.GetSelf())
            _util.EnableInput(true)
            _util.AddPlayerThought(_text.M10_VAULTALL_FIX)
          end
          L3_3 = scriptPlay
          L3_3(L2_2)
        end
      end
    end
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.COLLIDED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _util
  L2_2 = L2_2.GetSelf
  L2_2 = L2_2()
  L3_3 = _id
  L3_3 = L3_3.Inventory_PuffleBlack
  if L1_1 == L3_3 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("M10_fixVaultLock")
    if L3_3 == 0 then
      L3_3 = _util
      L3_3 = L3_3.AddPlayerThought
      L3_3(_text.M10_VAULTHINGE_FIX)
    else
      function L3_3()
        _util.DisableInput()
        repeat
          scriptWait()
        until 0 + 1 >= 40
        _util.ChangeBaseAnim("Location/GiftShop/state/GiftVaultDoorOpening1", _id.M6_GiftVaultDoor)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M6_GiftVaultDoor)
        _util.ChangeBaseAnim("Location/GiftShop/state/GiftVaultDoorOpening2", _id.M6_GiftVaultDoor)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M6_GiftVaultDoor)
        _util.ChangeBaseAnim("Location/GiftShop/state/GiftVaultDoorOpen", _id.M6_GiftVaultDoor)
        _util.EnableInput(true)
        _util.AddPlayerThought(_text.M10_VAULTALL_FIX)
      end
      scriptPlay(L3_3)
    end
  end
end
