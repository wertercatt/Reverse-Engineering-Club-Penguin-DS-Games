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
    L1_1 = L1_1.AddMonologue
    L1_1(392, "DialogStrings", _const.CHANGE_DIALOG, 10)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.PushCamera
    L1_1()
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M1C2_decoded")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddDialogButton
      L1_1(393, _const.CHANGE_DIALOG, 1)
    end
    L1_1 = _util
    L1_1 = L1_1.AddDialogButton
    L1_1(394, _const.END_DIALOG, 0)
  elseif L0_0 == 1 then
    function L1_1()
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.SetCursorPos(_util.GetX(_id.M1C2_TableOpen), _util.GetY(_id.M1C2_TableOpen))
      if _util.GetMinigameOutput1() == 1 then
        _util.AddMonologue(400, "DialogStrings", _const.CHANGE_NPC, _id.M1C2_TableOpen, 2)
        _util.SetVar("M1C2_comboBoxComplete", 1)
      else
        _util.AddMonologue(397, "DialogStrings", _const.END_DIALOG, 0)
      end
    end
    _util.StartMiniGame(_const.KEYPAD, 0)
    scriptPlay(L1_1)
  elseif L0_0 == 2 then
    function L1_1()
      _util.DisableInput()
      _util.SwitchState("revealWhistle", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.DelItem(_id.M1C2_TableOpen)
      _util.AddItem(_id.M1C2_WhistleBox)
      _util.EnableInput()
    end
    scriptPlay(L1_1)
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
  L1_1 = L1_1.M1C2_DecoderGadget
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(395)
  end
end
