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
  L0_0 = L0_0.GetVar
  L0_0 = L0_0("WeldCart")
  if L0_0 == 1 then
    function L0_0()
      _util.StartMiniGame(_const.WELDING, 0)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      if _util.GetMinigameOutput1() == 1 then
        _util.SetVar("M9_canFixMine", 4)
        _util.SetVar("WeldCart", 2)
        _util.AddPlayerThought(_text.M9_MINECART_FIXED)
        _util.MarkSubObjComplete(_text.M9_OBJ_2, _text.M9_OBJ_2A)
      end
    end
    scriptPlay(L0_0)
  else
    L0_0 = _util
    L0_0 = L0_0.AddPlayerThought
    L0_0(_text.M9_MINECART_FIXED)
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.ITEM_DROPPED then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  if _util.GetVar("WeldCart") == 2 and (L0_0 == _id.M9_Receiver1 or L0_0 == _id.M9_Receiver2 or L0_0 == _id.M9_Receiver3) then
    if L0_0 == _id.M9_Receiver1 then
      _util.RemoveInventoryItem(_id.M9_Receiver1)
    elseif L0_0 == _id.M9_Receiver2 then
      _util.RemoveInventoryItem(_id.M9_Receiver2)
    elseif L0_0 == _id.M9_Receiver3 then
      _util.RemoveInventoryItem(_id.M9_Receiver3)
    end
    _util.SetVar("M9_cart", 1)
    _util.AddItem(_id.M9_MineCartReceiver)
    _util.ActivateNpc(_id.M9_MineCartReceiver, 0)
    _util.DelItem(_util.GetSelf())
  end
end
