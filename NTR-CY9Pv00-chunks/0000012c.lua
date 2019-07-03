if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("GiftShopItems") == 4 then
    if _util.GetConversationCount() == 0 then
      _util.AddDialog(_text.M8_TOWN_PENGUIN2_GREET, _const.END_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(_text.M8_TOWN_PENGUIN2_GREET2, _const.END_DIALOG, 1)
    end
  else
    if _util.GetVar("M8_Obj_heardAboutGS") == 0 and _util.GetVar("SeenUgGiftShop") == 0 then
      _util.AddObjective(_text.M8_OBJ4)
      _util.AddSubObjective(_text.M8_OBJ4, _text.M8_OBJ_4A)
      _util.SetVar("M8_Obj_heardAboutGS", 1)
    end
    _util.AddDialog(_text.M8_TOWN_PENGUIN2_GREETTREMORS, _const.END_DIALOG, 0)
  end
end
