local L0_0
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.CREATED then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L0_0(_const.ITEM_DROPPED)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.TOUCHED then
  L0_0 = _util
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  if L0_0 == 0 and _util.GetVar("puffleHappy") == 0 then
    _util.AddLoopingConv(1030)
    _util.AddLoopingOption(1031, 1034, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1032, 1035, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(1033, -1, _const.CHANGE_DIALOG, 101)
  elseif L0_0 == 101 then
    _util.AddDialog(4681, _const.END_DIALOG, 0)
  elseif L0_0 == 1 then
    _util.AddConversation(1035, -1, -1, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    _util.AddLoopingConv(1036)
    _util.AddLoopingOption(1037, 1040, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1038, 1041, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1039, -1, _const.CHANGE_DIALOG, 102)
  elseif L0_0 == 102 then
    _util.AddDialog(4682, _const.END_DIALOG, 0)
  elseif _util.GetVar("puffleHappy") == 1 then
    _util.AddConversation(1045, -1, -1, _const.END_DIALOG, 0)
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.ITEM_DROPPED then
  L0_0 = _util
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  if _util.GetSource() == _id.Inventory_Pen then
    _util.AddDialog(1042, _const.END_DIALOG, L0_0)
  elseif _util.GetSource() == _id.Inventory_PostCard then
    _util.AddDialog(1043, _const.END_DIALOG, L0_0)
  elseif _util.GetSource() == _id.Inventory_PostCardPen then
    _util.AddDialog(1044, _const.END_DIALOG, L0_0)
  elseif _util.GetSource() == _id.Inventory_SignedCard1 then
    _util.AddDialog(1044, _const.END_DIALOG, L0_0)
  elseif _util.GetSource() == _id.Inventory_SignedCard2 then
    _util.AddDialog(1044, _const.END_DIALOG, L0_0)
  elseif _util.GetSource() == _id.Inventory_SignedCard3 then
    _util.AddDialog(1044, _const.END_DIALOG, L0_0)
  elseif _util.GetSource() == _id.Inventory_SignedCard4 then
    _util.AddDialog(1044, _const.END_DIALOG, L0_0)
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.COLLIDED then
end
