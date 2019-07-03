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
    function L1_1()
      _util.DisableInput()
      _util.ChangeBaseAnim("CutsceneAnims/C2/KlutzyHerbBase", _id.C2_HBStorage_Klutzy)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.C2_HBStorage_Klutzy)
      _util.ChangeBaseAnim("NPC/M2/Klutzy/KlutzyCorn", _id.C2_HBStorage_Klutzy)
      _util.EnableInput(true)
      _util.ActivateNpc(_id.C2_HBStorage_Klutzy, 1)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C2_A_KLU_1A, _const.CHANGE_DIALOG, -1, 2)
  elseif L0_0 == 2 then
    function L1_1()
      _util.DisableInput()
      repeat
        scriptWait()
      until 0 + 1 > 40
      _util.EnableInput(true)
      _util.StartMiniGame(_const.MIRROR, 0)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      if _util.GetMinigameOutput1() == 1 then
        _util.SetVar("C2_Event", _id.C2_FooledKlutzy)
        _util.DelItem(_id.C2_HBStorage_Klutzy)
      else
        _util.ActivateNpc(_id.C2_HBStorage_Klutzy, 1)
      end
    end
    scriptPlay(L1_1)
  end
end
