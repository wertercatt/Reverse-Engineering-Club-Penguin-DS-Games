local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COMMUNICATOR
  L0_0(L1_1)
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetConversationCount
L2_2 = L2_2()
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.TOUCHED then
  if L2_2 == 0 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M6_FISHINGHOLE_HERBERT_GREET, _const.CHANGE_DIALOG, 100)
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("OverheardHerbert", 1)
  elseif L2_2 == 100 then
    L3_3 = _util
    L3_3 = L3_3.AddMonologue
    L3_3(_text.M6_FISHING_HERBERT_TAP, "DialogStrings", _const.END_DIALOG, 1)
  elseif L2_2 == 1 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M6_FISHINGHOLE_HERBERT_GREET3, _const.END_DIALOG, 2)
    L3_3 = _util
    L3_3 = L3_3.AddSubObjective
    L3_3(_text.M6_OBJ7, _text.M6_7SUBOBJ1)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M6_FISHINGHOLE_HERBERT_GREET2, _const.END_DIALOG, 3)
  elseif L2_2 == 3 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M6_FISHINGHOLE_HERBERT_GREET4, _const.END_DIALOG, 1000)
  elseif L2_2 == 1000 then
    L3_3 = _util
    L3_3 = L3_3.AddMonologue
    L3_3(_text.M6_FISHINGHOLE_MONO_HERBPOKE, "DialogStrings", _const.END_DIALOG, 0)
  elseif L2_2 == 4 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M6_FISHINGHOLE_HERBERT_SEAWEED, _const.CHANGE_DIALOG, 40)
  elseif L2_2 == 40 then
    L3_3 = _util
    L3_3 = L3_3.PushCamera
    L3_3(_id.M6_Shifter)
    L3_3 = _util
    L3_3 = L3_3.HideMap
    L3_3()
    L3_3 = _util
    L3_3 = L3_3.DelItem
    L3_3(_id.M6_FishingSPizza)
    L3_3 = _util
    L3_3 = L3_3.AddItem
    L3_3(_id.M6_Fishing_HerbEat)
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("M6_lever", 1)
    L3_3 = _util
    L3_3 = L3_3.DelItem
    L3_3(_id.M6_HerbChopper)
    L3_3 = _util
    L3_3 = L3_3.MarkSubObjComplete
    L3_3(_text.M6_OBJ7, _text.M6_7SUBOBJ1)
    L3_3 = _util
    L3_3 = L3_3.AddSubObjective
    L3_3(_text.M6_OBJ7, _text.M6_7SUBOBJ2)
  elseif L2_2 == 5 then
    function L3_3()
      _util.DisableInput()
      _util.PushCamera(_id.M6_Shifter)
      _util.DelItem(_id.M6_HerbChopper)
      _util.DelItem(_id.M6_FishingSPizza)
      _util.AddItem(_id.M6_Fishing_HerbEat)
      repeat
        scriptWait()
      until 0 + 1 >= 40
      _util.SwitchState("TossPizza", _id.M6_Fishing_HerbEat)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M6_Fishing_HerbEat)
      _util.AddItem(_id.M6_HerbChopper)
      _util.PopCamera(_id.M6_Shifter)
      _util.ActivateNpc(_id.M6_HerbChopper, 50)
      _util.EnableInput()
      _util.DelItem(_id.M6_Fishing_HerbEat)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 50 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M6_FISHINGHOLE_HERBERT_MEAT, _const.CHANGE_DIALOG, 0)
  elseif L2_2 == 6 then
    function L3_3()
      _util.DisableInput()
      _util.PushCamera(_id.M6_Shifter)
      _util.DelItem(_id.M6_HerbChopper)
      _util.DelItem(_id.M6_FishingSPizza)
      _util.AddItem(_id.M6_Fishing_HerbEat)
      repeat
        scriptWait()
      until 0 + 1 >= 40
      _util.SwitchState("TossPizza", _id.M6_Fishing_HerbEat)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M6_Fishing_HerbEat)
      _util.AddItem(_id.M6_HerbChopper)
      _util.PopCamera(_id.M6_Shifter)
      _util.ActivateNpc(_id.M6_HerbChopper, 60)
      _util.EnableInput()
      _util.DelItem(_id.M6_Fishing_HerbEat)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 60 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M6_FISHINGHOLE_HERBERT_CANDY, _const.CHANGE_DIALOG, 0)
  elseif L2_2 == 70 then
  elseif L2_2 == 8 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M6_FISHINGHOLE_HERBERT_PIZZAGONE2_23, _const.CHANGE_DIALOG, 9)
    L3_3 = _util
    L3_3 = L3_3.PopCamera
    L3_3(_id.M6_Shifter)
    L3_3 = _util
    L3_3 = L3_3.ShowMap
    L3_3()
  elseif L2_2 == 9 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M6_FISHINGHOLE_HERBERT_PIZZAGONE3, _const.CHANGE_DIALOG, 10)
  elseif L2_2 == 10 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M6_FISHINGHOLE_HERBERT_PIZZAGONE4, _const.CHANGE_DIALOG, 11)
  elseif L2_2 == 11 then
    function L3_3()
      _util.DisableInput()
      _util.StartCutscene(_const.HERBBACKFIRE)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.SetCursorPos(481, 168)
      _util.AddItem(_id.M6_Lake_Herbert)
      _util.AddItem(_id.M6_Fishing_Ice1)
      _util.AddItem(_id.M6_Fishing_Ice2)
      _util.AddItem(_id.M6_Fishing_Ice3)
      _util.AddItem(_id.M6_Fishing_Gary)
      _util.DelItem(_id.M6_KlutzyChopper)
      _util.DelItem(_id.M6_ShifterReverse)
      _util.DelItem(_id.M6_ChopperL)
      _util.DelItem(_id.M6_ChopperR)
      _util.ActivateNpc(_id.M6_Fishing_Gary, 0)
      _util.EnableInput()
      _util.DelItem(_id.M6_HerbStanding)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 500 then
    L3_3 = _util
    L3_3 = L3_3.AddDialog
    L3_3(_text.M6_FISHINGHOLE_HERBERT_SPYPHONE, _const.CHANGE_NPC, _id.M6_Fishing_Gary, 3)
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.ITEM_DROPPED then
  L3_3 = _util
  L3_3 = L3_3.GetSource
  L3_3 = L3_3()
  if L3_3 == _id.M6_SeaweedPizza then
    _util.SetVar("M6_hasPizza", 0)
    _util.RemoveInventoryItem(_id.M6_SeaweedPizza)
    _util.AddItem(_id.M6_FishingSPizza)
    _util.AddDialog(_text.M6_FISHINGHOLE_HERBERT_PIZZADROP, _const.CHANGE_DIALOG, 4)
  elseif L3_3 == _id.M6_MeatPizza then
    _util.SetVar("M6_hasPizza", 0)
    _util.RemoveInventoryItem(_id.M6_MeatPizza)
    _util.AddItem(_id.M6_FishingSPizza)
    _util.AddDialog(_text.M6_FISHINGHOLE_HERBERT_PIZZADROP, _const.CHANGE_DIALOG, 5)
  elseif L3_3 == _id.M6_CandyPizza then
    _util.SetVar("M6_hasPizza", 0)
    _util.RemoveInventoryItem(_id.M6_CandyPizza)
    _util.AddItem(_id.M6_FishingSPizza)
    _util.AddDialog(_text.M6_FISHINGHOLE_HERBERT_PIZZADROP, _const.CHANGE_DIALOG, 6)
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.COMMUNICATOR then
  L3_3 = _util
  L3_3 = L3_3.GetComCount
  L3_3 = L3_3()
end
