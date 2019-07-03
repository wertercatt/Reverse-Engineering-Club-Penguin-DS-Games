local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = 33723
L3_3 = 52
L4_4 = _util
L4_4 = L4_4.GetReason
L4_4 = L4_4()
L5_5 = _const
L5_5 = L5_5.CREATED
if L4_4 == L5_5 then
  L4_4 = _util
  L4_4 = L4_4.AddInterest
  L5_5 = _const
  L5_5 = L5_5.ITEM_DROPPED
  L4_4(L5_5)
end
L4_4 = _util
L4_4 = L4_4.GetReason
L4_4 = L4_4()
L5_5 = _const
L5_5 = L5_5.TOUCHED
if L4_4 == L5_5 then
  L4_4 = _util
  L4_4 = L4_4.GetVar
  L5_5 = "triedCookie"
  L4_4 = L4_4(L5_5)
  if L4_4 == 1 then
    L4_4 = _util
    L4_4 = L4_4.GetVar
    L5_5 = "M8_FlitHat"
    L4_4 = L4_4(L5_5)
    if L4_4 == 0 then
      L4_4 = _util
      L4_4 = L4_4.AddMonologue
      L5_5 = _text
      L5_5 = L5_5.M8_TOWN_PUFFLE_FAIL
      L6_6 = "DialogStrings"
      L4_4(L5_5, L6_6, _const.END_DIALOG, 0)
    end
  else
    L4_4 = _util
    L4_4 = L4_4.GetVar
    L5_5 = "mapPiece"
    L4_4 = L4_4(L5_5)
    if L4_4 ~= 1 then
      L4_4 = _util
      L4_4 = L4_4.AddMonologue
      L5_5 = _text
      L5_5 = L5_5.M8_TOWN_PUFFLE_TOUCH2
      L6_6 = "DialogStrings"
      L4_4(L5_5, L6_6, _const.END_DIALOG, 0)
    end
  end
end
function L4_4()
  local L0_7, L1_8, L2_9
  L0_7 = _util
  L0_7 = L0_7.GetVar
  L1_8 = "GiftShopItems"
  L0_7 = L0_7(L1_8)
  if L0_7 == 0 then
    L0_7 = _util
    L0_7 = L0_7.SwitchState
    L1_8 = "float"
    L2_9 = _id
    L2_9 = L2_9.M8_TownTremors_Paper
    L0_7(L1_8, L2_9)
    L0_7 = 389
    L1_8 = 170
    L2_9 = 100
    _util.MoveObject(_id.M8_TownTremors_Paper, L0_7, L1_8, L2_9, 1)
    repeat
      scriptWait()
    until L0_7 <= _util.GetX(_id.M8_TownTremors_Paper)
    _util.SwitchState("", _id.M8_TownTremors_Paper)
    _util.SetVar("mapPiece", 1)
    _util.DelItem(_id.M8_TOWNTREMORS_PuffleHat)
    _util.SetSpawn(0, _id.M8_TOWNTREMORS_PuffleHat)
    _util.SetSpawn(0, _id.M8_TOWN0_PuffleHat)
  else
    L0_7 = _util
    L0_7 = L0_7.SwitchState
    L1_8 = "float"
    L2_9 = _id
    L2_9 = L2_9.M8_Town0_Paper
    L0_7(L1_8, L2_9)
    L0_7 = 389
    L1_8 = 170
    L2_9 = 100
    _util.MoveObject(_id.M8_Town0_Paper, L0_7, L1_8, L2_9, 1)
    repeat
      scriptWait()
    until L0_7 <= _util.GetX(_id.M8_Town0_Paper)
    _util.SwitchState("", _id.M8_Town0_Paper)
    _util.SetVar("mapPiece", 1)
    _util.DelItem(_id.M8_TOWN0_PuffleHat)
    _util.SetSpawn(0, _id.M8_TOWN0_PuffleHat)
    _util.SetSpawn(0, _id.M8_TOWNTREMORS_PuffleHat)
  end
  L0_7 = _util
  L0_7 = L0_7.SetVar
  L1_8 = "puffleGotPaper"
  L2_9 = 1
  L0_7(L1_8, L2_9)
end
L5_5 = _util
L5_5 = L5_5.GetReason
L5_5 = L5_5()
L6_6 = _const
L6_6 = L6_6.ITEM_DROPPED
if L5_5 == L6_6 then
  L5_5 = _util
  L5_5 = L5_5.GetSource
  L5_5 = L5_5()
  function L6_6()
    local L0_10
    L0_10 = _UPVALUE0_
    if L0_10 == _id.Inventory_PropellorHat then
      L0_10 = _util
      L0_10 = L0_10.DisableInput
      L0_10()
      L0_10 = _util
      L0_10 = L0_10.RemoveInventoryItem
      L0_10(_id.Inventory_PropellorHat)
      L0_10 = _util
      L0_10 = L0_10.SwitchState
      L0_10("2Hat", _util.GetSelf())
      repeat
        L0_10 = scriptWait
        L0_10()
        L0_10 = _util
        L0_10 = L0_10.IsAnimPlaying
        L0_10 = L0_10(_util.GetSelf())
      until not L0_10
      L0_10 = _util
      L0_10 = L0_10.MarkSubObjComplete
      L0_10(_text.M8_OBJ2, _text.M8_OBJ_2B)
      L0_10 = -1
      if _util.GetVar("GiftShopItems") > 0 then
        _util.AddItem(_id.M8_TOWN0_PuffleHat)
        L0_10 = _id.M8_TOWN0_PuffleHat
        _util.DelItem(_id.M8_TOWN0_PuffleHappy)
        _util.DelItem(_id.M8_TOWN0_PuffleSad)
      else
        _util.AddItem(_id.M8_TOWNTREMORS_PuffleHat)
        L0_10 = _id.M8_TOWNTREMORS_PuffleHat
        _util.DelItem(_id.M8_TOWNTREMORS_PuffleHappy)
        _util.DelItem(_id.M8_TOWNTREMORS_PuffleSad)
      end
      _util.SetSpawn(1, _id.M8_TOWN0_PuffleHat)
      _util.SetSpawn(1, _id.M8_TOWNTREMORS_PuffleHat)
      _util.SetSpawn(0, _id.M8_TOWNTREMORS_PuffleHappy)
      _util.SetSpawn(0, _id.M8_TOWN0_PuffleHappy)
      _util.SetSpawn(0, _id.M8_TOWN0_PuffleSad)
      _util.SetSpawn(0, _id.M8_TOWNTREMORS_PuffleSad)
      _util.SetVar("M8_FlitHat", 1)
      if _util.GetVar("TriedCookie") == 1 then
        _util.SwitchState("NoCookie", L0_10)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(L0_10)
        scriptPlay(_UPVALUE1_)
      end
      _util.EnableInput()
    else
      L0_10 = _UPVALUE0_
      if L0_10 == _id.Inventory_Cookie then
        L0_10 = _util
        L0_10 = L0_10.RemoveInventoryItem
        L0_10(_id.Inventory_Cookie)
        L0_10 = _util
        L0_10 = L0_10.GetVar
        L0_10 = L0_10("M8_FlitHat")
        if L0_10 == 0 then
          L0_10 = _util
          L0_10 = L0_10.DisableInput
          L0_10()
          L0_10 = _util
          L0_10 = L0_10.SwitchState
          L0_10("2Cookie", _util.GetSelf())
          L0_10 = _util
          L0_10 = L0_10.SetVar
          L0_10("TriedCookie", 1)
          repeat
            L0_10 = scriptWait
            L0_10()
            L0_10 = _util
            L0_10 = L0_10.IsAnimPlaying
            L0_10 = L0_10(_util.GetSelf())
          until not L0_10
          L0_10 = _util
          L0_10 = L0_10.EnableInput
          L0_10(true)
          L0_10 = _util
          L0_10 = L0_10.AddSubObjective
          L0_10(_text.M8_OBJ2, _text.M8_OBJ_2B)
          L0_10 = _util
          L0_10 = L0_10.AddMonologue
          L0_10(_text.M8_TOWN_PUFFLE_FAIL, "DialogStrings", _const.END_DIALOG, 0)
        else
          L0_10 = _util
          L0_10 = L0_10.DisableInput
          L0_10()
          L0_10 = _util
          L0_10 = L0_10.SwitchState
          L0_10("Hat2Both", _util.GetSelf())
          repeat
            L0_10 = scriptWait
            L0_10()
            L0_10 = _util
            L0_10 = L0_10.IsAnimPlaying
            L0_10 = L0_10(_util.GetSelf())
          until not L0_10
          L0_10 = scriptPlay
          L0_10(_UPVALUE1_)
          L0_10 = _util
          L0_10 = L0_10.EnableInput
          L0_10()
        end
      end
    end
  end
  scriptPlay(L6_6)
end
