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
  L0_0 = _util
  L0_0 = L0_0.EnableInput
  L0_0()
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
    L1_1 = L1_1.AddDialog
    L1_1(2760, _const.CHANGE_DIALOG, 1)
    L1_1 = print
    L1_1("***First Line (Conversation Count = 0) ***")
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(2761, _const.CHANGE_DIALOG, 2)
    L1_1 = print
    L1_1("***Second Line (Conversation Count = 1) ***")
  elseif L0_0 == 2 then
    L1_1 = print
    L1_1("***Third Line (Conversation Count = 2) ***")
    function L1_1()
      _util.DisableInput()
      _util.PlaySFX(52)
      _util.SwitchState("fail", _id.M4C3_SBot_Roped)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M4C3_SBot_Roped)
      _util.DelItem(_util.GetSelf())
      _util.SetVar("M4C3_fightSB", 2)
      _util.SetVar("M4C3_blueSB", 0)
      _util.SetVar("M4C3_blackSB", 0)
      _util.SetVar("M4C3_redSB", 0)
      _util.SetVar("M4C3_purpleSB", 0)
      _util.SetVar("M4C3_greenSB", 0)
      _util.SetVar("M4C3_yellowSB", 0)
      _util.SetVar("M4C3_dusterSB", 0)
      _util.SetVar("M4C3_robotomySB", 0)
      _util.EnableInput()
      _util.AddMonologue(2762, "DialogStrings", _const.CHANGE_ROOM, 48)
      print("***Monologue inside Conversation Count = 2) ***")
    end
    scriptPlay(L1_1)
  end
else
  L0_0 = _util
  L0_0 = L0_0.SetConversationCount
  L1_1 = 0
  L0_0(L1_1)
  L0_0 = print
  L1_1 = "***SPAMMING ERROR IS CORRECTED (Conversation Count = 0) ***"
  L0_0(L1_1)
end
