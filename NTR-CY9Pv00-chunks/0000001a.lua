local L0_0, L1_1
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
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetVar
  L1_1 = "M9_phonePlaced"
  L0_0 = L0_0(L1_1)
  if L0_0 == 1 then
    L0_0 = _util
    L0_0 = L0_0.GetVar
    L1_1 = "M9_treeCamIn"
    L0_0 = L0_0(L1_1)
    L1_1 = _util
    L1_1 = L1_1.GetSelf
    L1_1 = L1_1()
    if L0_0 == L1_1 then
      L0_0 = _util
      L0_0 = L0_0.AddMonologue
      L1_1 = _text
      L1_1 = L1_1.M9_TREE_CAM
      L0_0(L1_1, "DialogStrings", _const.END_DIALOG, 0)
    else
      L0_0 = _util
      L0_0 = L0_0.AddMonologue
      L1_1 = _text
      L1_1 = L1_1.M9_TREE_OTHER_CAM
      L0_0(L1_1, "DialogStrings", _const.END_DIALOG, 0)
    end
  else
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = _text
    L1_1 = L1_1.M9_TREE_NO_CAM
    L0_0(L1_1, "DialogStrings", _const.END_DIALOG, 0)
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.ITEM_DROPPED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _id
  L1_1 = L1_1.M9_SpyCameraPhone
  if L0_0 == L1_1 then
    function L1_1()
      _util.DisableInput()
      _util.MarkObjComplete(_text.M9_OBJ_6)
      _util.SetVar("M9_phonePlaced", 1)
      _util.SetVar("M9_treeCamIn", _util.GetSelf())
      _util.RemoveInventoryItem(_id.M9_SpyCameraPhone)
      _util.AddItem(_id.M9_SpyPhone1)
      if _util.GetSelf() == 65503 then
        _util.SetX(153, _id.M9_SpyPhone1)
        _util.SetY(68, _id.M9_SpyPhone1)
      elseif _util.GetSelf() == 65447 then
        _util.SetX(681, _id.M9_SpyPhone1)
        _util.SetY(60, _id.M9_SpyPhone1)
      end
      _util.SwitchState("appear", _id.M9_SpyPhone1)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M9_SpyPhone1)
      _util.EnableInput()
      _util.LaunchCommunicator()
    end
    scriptPlay(L1_1)
  end
end
