if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
  _util.AddInterest(_const.COLLIDED)
end
if _util.GetReason() == _const.ITEM_DROPPED and (itemID == _id.Inventory_CombTool or itemID == _id.Inventory_ScissorsTool and _util.GetVar("OpenCase") == 1) then
  _util.AddPlayerThought(_text.M11_SCREEN_PANEL)
  _util.SetVar("FindSignal", 1)
end
