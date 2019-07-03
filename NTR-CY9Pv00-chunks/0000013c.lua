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
  L1_1 = L1_1.COMMUNICATOR
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
function L2_2()
  if _util.GetVar("M8_optionHerbAway") ~= 1 then
    _util.AddPlayerOption(_text.M8_GADGETROOM_GARY_OUTRO_Q1, _const.CHANGE_DIALOG, -1, 150)
  end
  if _util.GetVar("M8_optionDamageUG") ~= 1 then
    _util.AddPlayerOption(_text.M8_GADGETROOM_GARY_OUTRO_Q2, _const.CHANGE_DIALOG, -1, 51)
  end
  if _util.GetVar("M8_optionDuty") ~= 1 then
    _util.AddPlayerOption(_text.M8_GADGETROOM_GARY_OUTRO_Q3, _const.CHANGE_DIALOG, -1, 52)
  end
  if (_util.GetVar("M8_optionHerbAway") == 1 or _util.GetVar("M8_optionDamageUG") == 1 or _util.GetVar("M8_optionDuty") == 1) and _util.GetVar("gotGear") ~= 1 then
    _util.AddPlayerOption(_text.M8_GADGETROOM_GARY_OUTRO2_Q1, _const.CHANGE_DIALOG, -1, 57)
  end
  if (_util.GetVar("M8_optionHerbAway") == 1 or _util.GetVar("M8_optionDamageUG") == 1 or _util.GetVar("M8_optionDuty") == 1) and _util.GetVar("gotGear") == 1 then
    _util.AddPlayerOption(_text.M8_GADGETROOM_GARY_OUTRO_QUIT, _const.CHANGE_DIALOG, -1, 54)
  end
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddItem(_id.M8_GaryHQWait)
    _util.ActivateNpc(_id.M8_GaryHQWait, 10)
    _util.DelItem(_util.GetSelf())
  elseif _util.GetConversationCount() == 10 then
    _util.AddLoopingConv(_text.M8_GADGETROOM_GARY_OUTRO_GREET)
    L2_2()
  elseif _util.GetConversationCount() == 150 then
    _util.SetVar("M8_optionHerbAway", 1)
    _util.AddNPCText(_text.M8_GADGETROOM_GARY_OUTRO_A1)
    L2_2()
  elseif _util.GetConversationCount() == 51 then
    _util.AddDialog(_text.M8_GADGETROOM_GARY_OUTRO_A2_B, _const.CHANGE_DIALOG, 151)
  elseif _util.GetConversationCount() == 151 then
    _util.SetVar("M8_optionDamageUG", 1)
    _util.AddNPCText(_text.M8_GADGETROOM_GARY_OUTRO_B2)
    L2_2()
  elseif _util.GetConversationCount() == 52 then
    _util.SetVar("M8_optionDuty", 1)
    _util.AddNPCText(_text.M8_GADGETROOM_GARY_OUTRO_A3_2OUTRO2)
    L2_2()
  elseif _util.GetConversationCount() == 54 then
    _util.AddDialog(_text.M8_GADGETROOM_GARY_OUTRO_QUITRESPONSE, _const.END_DIALOG, 55)
  elseif _util.GetConversationCount() == 55 then
    _util.AddDialog(_text.M8_GADGETROOM_GARY_OUTRO_GREET_GEAR, _const.END_DIALOG, 55)
  elseif _util.GetConversationCount() == 56 then
    _util.AddConversation(_text.M8_GADGETROOM_GARY_OUTRO_GEAR, _text.M8_GADGETROOM_GARY_OUTRO2_Q1, -1, _const.CHANGE_DIALOG, 57)
  elseif _util.GetConversationCount() == 57 then
    _util.AddDialog(_text.M8_GADGETROOM_GARY_OUTRO2_A1_2B, _const.CHANGE_DIALOG, 58)
  elseif _util.GetConversationCount() == 58 then
    _util.TriggerDGamerHonor(_const.DG_HONOR_SHAKY_PLAN)
    _util.AddDialog(_text.M8_GADGETROOM_GARY_OUTRO2_B1, _const.END_MISSION)
  end
end
if _util.GetReason() == _const.COMMUNICATOR and _util.GetVar("hitBoiler") == 2 then
  _util.AddComText(_text.M8_GADGETROOM_GARY_COM2, _const.END_DIALOG, 0)
end
