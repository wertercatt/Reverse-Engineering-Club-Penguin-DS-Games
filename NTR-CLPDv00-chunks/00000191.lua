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
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COLLIDED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  if L0_0 == 10 then
    function L1_1()
      _util.DisableInput()
      _util.SwitchState("loosen", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("loosened", _util.GetSelf())
      _util.AddItem(_id.Doors_MineLair2Out)
      _util.SetVar("M2C3_outroLair", 1)
      _util.SwitchState("", _id.M2C3_Silhouette)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M2C3_Silhouette)
      _util.EnableInput()
      _util.ActivateNpc(_id.M2C3_Gary_MTE, 1)
    end
    if _util.GetVar("M2C3_outroLair") == 0 then
      _util.RemoveInventoryItem(_id.M2C3_Crowbar)
      scriptPlay(L1_1)
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M2C3_outroLair")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(1238)
    end
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
  L1_1 = L1_1.Inventory_PuffleRed
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M2C3_outroLair")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.SetSuccess
      L1_1(_util.GetSelf(), true)
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("M2C3_hit", 0)
    end
  else
    L1_1 = _id
    L1_1 = L1_1.M2C3_Crowbar
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(4322, "DialogStrings", _const.CHANGE_DIALOG, 10)
    end
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.COLLIDED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _id
  L1_1 = L1_1.Inventory_PuffleRed
  if L0_0 == L1_1 then
    function L1_1()
      _util.DisableInput()
      _util.PlaySFX(14)
      _util.SwitchState("break", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("broke", _util.GetSelf())
      _util.AddItem(_id.Doors_MineLair2Out)
      _util.SetVar("M2C3_outroLair", 1)
      _util.SwitchState("", _id.M2C3_Silhouette)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M2C3_Silhouette)
      _util.EnableInput()
      _util.ActivateNpc(_id.M2C3_Gary_MTE, 1)
    end
    if _util.GetVar("M2C3_hit") == 0 then
      _util.SetVar("M2C3_hit", 1)
      scriptPlay(L1_1)
    end
  end
end
