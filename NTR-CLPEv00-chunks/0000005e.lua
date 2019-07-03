local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
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
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(81, "DialogStrings", _const.CHANGE_DIALOG, 1)
    L1_1 = _util
    L1_1 = L1_1.SetCursorPos
    L1_1(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
    L1_1 = _util
    L1_1 = L1_1.SetExitLocked
    L1_1(_id.Doors_Snow2PlazaUL, true)
    L1_1 = _util
    L1_1 = L1_1.SetExitLocked
    L1_1(_id.Doors_Snow2TownUL, true)
    L1_1 = _util
    L1_1 = L1_1.SetExitLocked
    L1_1(_id.Doors_Snow2IceUL, true)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(82, "DialogStrings", _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(83, "DialogStrings", _const.CHANGE_DIALOG, 3)
  elseif L0_0 == 3 then
    function L1_1()
      _util.PushCamera(_util.GetSelf())
      _util.DisableInput()
      _util.SwitchState("give", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("grab", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.AddItem(_id.M1C1_Hat)
      _util.AddItem(_id.M1C1_SnowFortNPC)
      _util.PopCamera()
      _util.EnableInput()
      _util.SetVar("M1C1_haveCard2", 1)
      _util.AddInventoryItem(_id.M1C1_Card2)
      _util.SwitchState("Raise", _id.M1C1_DotSnowman)
      _util.SetSpawn(0, _id.M1C1_DotSnowman)
      _util.SetSpawn(1, _id.M1C1_DotMailbox)
    end
    scriptPlay(L1_1)
    _util.SetConversationCount(4)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(85)
  elseif L0_0 == 20 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(73, "DialogStrings", _const.CHANGE_DIALOG, 21)
  elseif L0_0 == 21 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(74, "DialogStrings", _const.END_DIALOG, 0)
  end
end
