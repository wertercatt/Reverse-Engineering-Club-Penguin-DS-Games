if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.AFTER_DIALOG)
end
if _util.GetReason() == _const.TOUCHED then
  function turnBackAround()
    _util.DisableInput()
    _util.SwitchState("turnBack")
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_util.GetSelf())
    _util.ChangeBaseAnim("NPC/SpySeek/DockNPC/DockNPCFix")
    _util.EnableInput()
  end
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(_text.M9_DOCK_NPC_GREET)
    _util.AddLoopingOption(_text.M9_DOCK_NPCA_Q1, -1, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(_text.M9_DOCK_NPCA_Q2, -1, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(_text.M9_DOCK_NPCA_Q3, -1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(_text.M9_DOCK_NPCA_A_2B, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    function turnAround()
      _util.DisableInput()
      _util.SwitchState("turn")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.ChangeBaseAnim("NPC/SpySeek/DockNPC/DockNPCSad2")
      _util.EnableInput()
      _util.ActivateNpc(_id.M9_DockNPC, 11)
    end
    scriptPlay(turnAround)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(_text.M9_DOCK_NPCA_A3_2B, _const.CHANGE_DIALOG, 4)
  elseif _util.GetConversationCount() == 4 then
    function turnAround()
      _util.DisableInput()
      _util.SwitchState("turn")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.ChangeBaseAnim("NPC/SpySeek/DockNPC/DockNPCSad2")
      _util.EnableInput()
      _util.ActivateNpc(_id.M9_DockNPC, 14)
    end
    scriptPlay(turnAround)
  elseif _util.GetConversationCount() == 5 then
    _util.SetVar("M9_offeredBoatHelp", 1)
    _util.AddDialog(_text.M9_DOCK_NPCB_A1, _const.END_DIALOG, 5)
  elseif _util.GetConversationCount() == 6 then
    _util.AddDialog(_text.M9_DOCK_NPCB_QUITRESPONSE, _const.CHANGE_DIALOG, 13)
  elseif _util.GetConversationCount() == 7 then
    function jump()
      _util.DisableInput()
      _util.ChangeBaseAnim("NPC/SpySeek/DockNPC/DockNPCHappy", _util.GetSelf(), "jump")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("")
      _util.EnableInput()
      _util.ActivateNpc(_id.M9_DockNPC, 12)
    end
    scriptPlay(jump)
  elseif _util.GetConversationCount() == 8 then
    _util.SetVar("M9_Anim_dockNpcRope", 1)
    _util.SetVar("M9_boatStart", 1)
    _util.AddLoopingConv(_text.M9_DOCK_NPCC_A1)
    _util.AddLoopingOption(_text.M9_DOCK_NPCD_QUIT, -1, _const.CHANGE_DIALOG, 9)
  elseif _util.GetConversationCount() == 9 then
    _util.AddDialog(_text.M9_DOCK_NPCD_QUITRESPONSE, _const.END_DIALOG, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(_text.M9_DOCK_NPC_GREET2, _const.END_DIALOG, 10)
  elseif _util.GetConversationCount() == 11 then
    _util.AddLoopingConv(_text.M9_DOCK_NPCA_B)
    _util.AddLoopingOption(_text.M9_DOCK_NPCB_Q1, -1, _const.CHANGE_DIALOG, 5)
    _util.AddLoopingOption(_text.M9_DOCK_NPCB_QUIT, -1, _const.CHANGE_DIALOG, 6)
  elseif _util.GetConversationCount() == 12 then
    _util.AddLoopingConv(_text.M9_DOCK_NPC_BOATSTART)
    _util.AddLoopingOption(_text.M9_DOCK_NPCC_Q1, -1, _const.CHANGE_DIALOG, 8)
  elseif _util.GetConversationCount() == 13 then
    _util.SetConversationCount(0)
    scriptPlay(turnBackAround)
  elseif _util.GetConversationCount() == 14 then
    _util.AddLoopingConv(_text.M9_DOCK_NPCA_B3_2B)
    _util.AddLoopingOption(_text.M9_DOCK_NPCB_Q1, -1, _const.CHANGE_DIALOG, 5)
    _util.AddLoopingOption(_text.M9_DOCK_NPCB_QUIT, -1, _const.CHANGE_DIALOG, 6)
  end
end
if _util.GetReason() == _const.AFTER_DIALOG and _util.GetVar("M9_Anim_dockNpcRope") == 1 then
  _util.SetVar("M9_Anim_dockNpcRope", 0)
  _util.ChangeBaseAnim("NPC/SpySeek/DockNPC/docksRope")
  _util.SwitchState("", _util.GetSelf())
end
