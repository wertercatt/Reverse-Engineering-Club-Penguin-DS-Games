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
  L1_1 = L1_1.TOUCHED
  L0_0(L1_1)
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
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M1C2_decoded")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(403, "DialogStrings", _const.CHANGE_DIALOG, 1)
    end
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(404, "DialogStrings", _const.END_DIALOG, 0)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M1C2_decoded")
    if L1_1 == 1 and L0_0 ~= 90 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(405)
    elseif L0_0 == 80 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(407, "DialogStrings", _const.END_DIALOG, 0)
    elseif L0_0 == 90 then
      function L1_1()
        _util.StartMiniGame(_const.DECODER, 409)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        if _util.GetMinigameOutput1() == 1 then
          _util.SetVar("M1C2_decoded", 1)
        end
      end
      scriptPlay(L1_1)
      _util.SetConversationCount(0)
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
  L1_1 = L1_1.Inventory_DecoderSpypod
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(408, "DialogStrings", _const.CHANGE_DIALOG, 90)
  else
    L1_1 = _id
    L1_1 = L1_1.M1C2_DecoderGadget
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(406, "DialogStrings", _const.CHANGE_DIALOG, 80)
    end
  end
end
