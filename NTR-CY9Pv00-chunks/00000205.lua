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
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.ActivateNpc
    L1_1(_id.M1_TC4_Rookie, 0)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.C1_TC3_JPG_1, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.C1_TC3_JPG_2, _const.CHANGE_DIALOG, 3)
  elseif L0_0 == 3 then
    function L1_1()
      _util.DisableInput()
      _util.ChangeBaseAnim("NPC/M1/JetPackGuy/JetPackGuyFlyUpCliff")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SetVar("C1_Event", _id.C1_MakeGrapplingHook)
      _util.ActivateNpc(_id.M1_TC4_Dot, 2)
      _util.DelItem(_util.GetSelf())
      _util.EnableInput()
    end
    scriptPlay(L1_1)
  end
end
