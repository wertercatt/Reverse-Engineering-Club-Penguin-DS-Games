if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    if _util.GetVar("GiftShopItems") == 4 then
      _util.AddDialog(_text.M8_TOWN_PENGUIN_GREET2, _const.END_DIALOG, 0)
    else
      if _util.GetVar("M8_Obj_heardAboutGS") == 0 and _util.GetVar("SeenUgGiftShop") == 0 then
        _util.AddObjective(_text.M8_OBJ4)
        _util.AddSubObjective(_text.M8_OBJ4, _text.M8_OBJ_4A)
        _util.SetVar("M8_Obj_heardAboutGS", 1)
      end
      _util.AddLoopingConv(_text.M8_TOWN_PENGUIN_GREET)
      _util.AddLoopingOption(_text.M8_TOWN_PENGUINA_Q1, -1, _const.CHANGE_DIALOG, 1)
      _util.AddLoopingOption(_text.M8_TOWN_PENGUINA_Q2, -1, _const.CHANGE_DIALOG, 1)
    end
  elseif _util.GetConversationCount() == 1 then
    _util.ChangeBaseAnim("NPC/MysteriousTremors/TownNPC2/TownNPC2PointDown")
    _util.SwitchState("talk", _util.GetSelf())
    _util.AddDialog(_text.M8_TOWN_PENGUINA_A1_2B, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.ChangeBaseAnim("NPC/MysteriousTremors/TownNPC2/TownNPC2PointUp")
    _util.SwitchState("talk", _util.GetSelf())
    _util.AddLoopingConv(_text.M8_TOWN_PENGUINA_B1)
    _util.AddLoopingOption(_text.M8_TOWN_PENGUINB_Q1, _text.M8_TOWN_PENGUINB_A1, _const.UPDATE_LOOP)
    _util.AddLoopingOption(_text.M8_TOWN_PENGUINB_Q2, -1, _const.CHANGE_DIALOG, 3)
    _util.AddLoopingOption(_text.M8_TOWN_PENGUINB_Q3, -1, _const.CHANGE_DIALOG, 5)
  elseif _util.GetConversationCount() == 3 then
    _util.ChangeBaseAnim("NPC/MysteriousTremors/TownNPC2/TownNPC2")
    _util.AddDialog(_text.M8_TOWN_PENGUINB_A2_2B, _const.CHANGE_DIALOG, 4)
  elseif _util.GetConversationCount() == 4 then
    _util.ChangeBaseAnim("NPC/MysteriousTremors/TownNPC2/TownNPC2")
    _util.AddDialog(_text.M8_TOWN_PENGUINB_B2, _const.END_DIALOG, 0)
    _util.ClearObjective()
    _util.SetObjective(_text.M8_OBJ2)
  elseif _util.GetConversationCount() == 5 then
    _util.ChangeBaseAnim("NPC/MysteriousTremors/TownNPC2/TownNPC2")
    _util.AddDialog(_text.M8_TOWN_PENGUINB_A3_2B, _const.CHANGE_DIALOG, 6)
  elseif _util.GetConversationCount() == 6 then
    _util.ChangeBaseAnim("NPC/MysteriousTremors/TownNPC2/TownNPC2")
    _util.AddDialog(_text.M8_TOWN_PENGUINB_B3, _const.END_DIALOG, 0)
    _util.ClearObjective()
    _util.SetObjective(_text.M8_OBJ2)
  end
end
