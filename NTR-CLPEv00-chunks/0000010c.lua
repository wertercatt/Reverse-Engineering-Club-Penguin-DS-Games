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
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(381, _const.CHANGE_DIALOG, 1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(382, 383, -1, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(384, 385, -1, _const.CHANGE_DIALOG, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(386, _const.CHANGE_DIALOG, 4)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(387, -1, -1, _const.END_DIALOG, 5)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("M1C2_introDirector", 1)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M1C2_spyPodCombined")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddLoopingConv
      L1_1(388)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(390, 391, _const.UPDATE_LOOP)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(392, 393, _const.CHANGE_DIALOG, 6)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(396, -1, _const.CHANGE_DIALOG, 55)
    end
  elseif L0_0 == 55 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(397, -1, -1, _const.END_DIALOG, 5)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(393, _const.CHANGE_DIALOG, 7)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(394, _const.CHANGE_DIALOG, 8)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(395, 396, -1, _const.CHANGE_DIALOG, 55)
  elseif L0_0 == 30 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M1C2_spyPodCombined")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(398, _const.CHANGE_DIALOG, 9)
    end
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(399, _const.CHANGE_DIALOG, 10)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(400, 401, -1, _const.CHANGE_DIALOG, 11)
  elseif L0_0 == 11 then
    function L1_1()
      _util.DisableInput()
      _util.SwitchState("turnOFF", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.DelItem(_id.M1C2_Director_CR)
      _util.AddItem(_id.M1C2_SecretCode)
      _util.AddItem(_id.M1C2_TableBox)
      _util.PlaySFX(111)
      _util.SwitchState("opening", _id.M1C2_TableBox)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M1C2_TableBox)
      _util.DelItem(_id.M1C2_TableBox)
      _util.AddItem(_id.M1C2_TableOpen)
      _util.EnableInput()
    end
    scriptPlay(L1_1)
    _util.SetConversationCount(13)
  elseif L0_0 == 19 then
    L1_1 = _util
    L1_1 = L1_1.AddItem
    L1_1(_id.M1C2_Dot_CR2)
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(443, _const.CHANGE_NPC, _id.M1C2_Dot_CR2, 20)
  elseif L0_0 == 22 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(446, 447, -1, _const.CHANGE_DIALOG, 23)
  elseif L0_0 == 23 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(448, 449, -1, _const.CHANGE_DIALOG, 24)
  elseif L0_0 == 24 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(450, _const.CHANGE_DIALOG, 25)
  elseif L0_0 == 25 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(451, _const.CHANGE_NPC, _id.M1C2_Dot_CR2, 30)
  end
end
