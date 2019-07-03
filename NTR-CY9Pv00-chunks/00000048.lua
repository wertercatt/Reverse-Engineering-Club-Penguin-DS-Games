local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.TOUCHED then
  function L1_1()
    _util.DisableInput()
    _util.AddInventoryItem(_id.M1_rope)
    repeat
      scriptWait()
    until _util.IsPopUpVisible()
    _util.EnableInput()
    repeat
      scriptWait()
    until not _util.IsPopUpVisible()
    _util.DisableInput()
    _util.AddInventoryItem(_id.M1_TC_anchor)
    repeat
      scriptWait()
    until _util.IsPopUpVisible()
    _util.EnableInput()
    repeat
      scriptWait()
    until not _util.IsPopUpVisible()
    _util.DisableInput()
    _util.AddInventoryItem(_id.C1_InventoryItem_DirtyJackHammerParts)
    _util.SetVar("C1_Event", _id.C1_crossedRiver)
    _util.MarkObjComplete(_text.C1_OBJ2)
    _util.AddObjective(_text.C1_OBJ4)
    _util.AddSubObjective(_text.C1_OBJ4, _text.C1_4SUBOBJ1)
    _util.AddItem(_id.C1_EmptyBox)
    _util.EnableInput()
    _util.DelItem(_util.GetSelf())
    _util.MarkObjComplete(_text.C1_OBJ2)
  end
  scriptPlay(L1_1)
end
