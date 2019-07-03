local L0_0, L1_1
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
      _util.SwitchState("turn", _id.C4_GIFTSHOP_OWNER)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.C4_GIFTSHOP_OWNER)
      _util.ChangeBaseAnim("NPC/WaddleSquad/GiftShopOwner/owner", _id.C4_GIFTSHOP_OWNER)
      _util.EnableInput()
      _util.ActivateNpc(_id.C4_GIFTSHOP_OWNER, 1)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_NPC_GIFT_SHOP_1)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C4_NPC_GIFT_SHOP_1A, _const.CHANGE_DIALOG, -1, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_NPC_GIFT_SHOP_2, _const.END_DIALOG, -1, 0)
  end
end
