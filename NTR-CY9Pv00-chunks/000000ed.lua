local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COLLIDED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.TOUCHED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L2_2 = "mapPiece"
  L1_1 = L1_1(L2_2)
  if L1_1 == 1 then
    L1_1 = _util
    L1_1 = L1_1.MarkSubObjComplete
    L2_2 = _text
    L2_2 = L2_2.M8_OBJ2
    L1_1(L2_2, _text.M8_OBJ_2A)
    L1_1 = _util
    L1_1 = L1_1.MarkObjComplete
    L2_2 = _text
    L2_2 = L2_2.M8_OBJ2
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddObjective
    L2_2 = _text
    L2_2 = L2_2.M8_OBJ2A
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddInventoryItem
    L2_2 = _id
    L2_2 = L2_2.Inventory_MapRight
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L2_2 = "tookMapPiece"
    L1_1(L2_2, 1)
    L1_1 = _util
    L1_1 = L1_1.DelItem
    L2_2 = _util
    L2_2 = L2_2.GetSelf
    L2_2 = L2_2()
    L1_1(L2_2, L2_2())
    L1_1 = _util
    L1_1 = L1_1.SetSpawn
    L2_2 = 0
    L1_1(L2_2, _id.M8_Town0_Paper)
    L1_1 = _util
    L1_1 = L1_1.SetSpawn
    L2_2 = 0
    L1_1(L2_2, _id.M8_TownTremors_Paper)
  else
    L1_1 = _util
    L1_1 = L1_1.AddPlayerThought
    L2_2 = _text
    L2_2 = L2_2.M8_TOWN_PAPER_TOUCH
    L1_1(L2_2, _const.END_DIALOG, -1, 0)
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.ITEM_DROPPED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _id
  L2_2 = L2_2.Inventory_PuffleGreen
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("mapPiece")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.SetSuccess
      L2_2(_util.GetSelf(), true)
      L2_2 = _util
      L2_2 = L2_2.SetVar
      L2_2("M8PaperHit", 0)
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
  L2_2 = _id
  L2_2 = L2_2.Inventory_PuffleGreen
  if L1_1 == L2_2 then
    function L2_2()
      local L0_3, L1_4, L2_5
      L0_3 = _util
      L0_3 = L0_3.DisableInput
      L0_3()
      L0_3 = _util
      L0_3 = L0_3.SwitchState
      L1_4 = "float"
      L2_5 = _util
      L2_5 = L2_5.GetSelf
      L2_5 = L2_5()
      L0_3(L1_4, L2_5, L2_5())
      L0_3 = 389
      L1_4 = 170
      L2_5 = 100
      _util.MoveObject(_util.GetSelf(), L0_3, L1_4, L2_5, 1)
      repeat
        scriptWait()
      until L0_3 <= _util.GetX(_util.GetSelf())
      _util.SwitchState("", _util.GetSelf())
      _util.EnableInput()
      _util.SetVar("mapPiece", 1)
    end
    if _util.GetVar("M8PaperHit") == 0 then
      _util.SetVar("M8PaperHit", 1)
      scriptPlay(L2_2)
    end
  end
end
