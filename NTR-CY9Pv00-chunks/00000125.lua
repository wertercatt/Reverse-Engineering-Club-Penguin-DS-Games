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
    L1_1 = L1_1.AddDialog
    L1_1(_text.C1_CR_ROOKIE_1, _const.CHANGE_NPC, _id.M1_CRJPG, 7)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.C1_CR_ROOKIE_1A_1, _const.CHANGE_NPC, _id.M1_CRDot, 7)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.C1_CR_ROOKIE_1A_2, _const.CHANGE_NPC, _id.M1_CRDot, 1)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.C1_CR_ROOKIE_1B_1, _const.CHANGE_NPC, _id.M1_CRDot, 3)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.C1_CR_ROOKIE_1C_1, _const.CHANGE_NPC, _id.M1_CRJPG, 2)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(_text.C1_CR_ROOKIE_2)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(_text.C1_CR_A_2A, -1, _const.CHANGE_DIALOG, 6)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(_text.C1_CR_A_2B, -1, _const.CHANGE_DIALOG, -1)
  elseif L0_0 == -1 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("c1_noClue", 1)
    L1_1 = _util
    L1_1 = L1_1.ActivateNpc
    L1_1(_util.GetSelf(), 6)
  elseif L0_0 == 6 then
    function L1_1()
      _util.DisableInput()
      _util.DelItem(_id.M1_CRScreen_EPFLogo)
      _util.AddItem(_id.M1_CRDirector)
      _util.ChangeBaseAnim("NPC/M1/Director/Director", _id.M1_CRDirector, "TurnON")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M1_CRDirector)
      if _util.GetVar("c1_noClue") == 0 then
        _util.ActivateNpc(_id.M1_CRDirector, 0)
      else
        _util.ActivateNpc(_id.M1_CRDirector, 2)
      end
      _util.EnableInput()
    end
    scriptPlay(L1_1)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(_text.C1_CR_ROOKIE_3)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(_text.C1_CR_A_3A, -1, _const.CHANGE_NPC, _id.M1_CRDirector, 4)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(_text.C1_CR_A_3B, -1, _const.CHANGE_NPC, _id.M1_CRDirector, 4)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(_text.C1_CR_ROOKIE_4)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(_text.C1_CR_A_5A, -1, _const.CHANGE_NPC, _id.M1_CRJPG, 4)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(_text.C1_CR_A_5B, -1, _const.CHANGE_NPC, _id.M1_CRDirector, 10)
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.C1_CR_ROOKIE_4A_1, _const.CHANGE_NPC, _id.M1_CRDirector, 10)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.C1_CR_ROOKIE_5, _const.CHANGE_NPC, _id.M1_CRJPG, 5)
  end
end
