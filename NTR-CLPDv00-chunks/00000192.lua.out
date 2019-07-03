if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
  _util.AddInterest(_const.COMMUNICATOR)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M1C3_introDotSnowman") == 0 then
    if _util.GetConversationCount() == 0 then
      _util.AddConversation(454, 455, -1, _const.CHANGE_DIALOG, 1)
      _util.RemoveMapAlert(_const.M1C3MISSIONSTART)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(456, _const.CHANGE_DIALOG, 2)
    elseif _util.GetConversationCount() == 2 then
      _util.AddConversation(457, 458, -1, _const.CHANGE_DIALOG, 3)
    elseif _util.GetConversationCount() == 3 then
      _util.AddConversation(459, 460, -1, _const.CHANGE_DIALOG, 4)
    elseif _util.GetConversationCount() == 4 then
      _util.AddConversation(461, 462, -1, _const.CHANGE_DIALOG, 5)
    elseif _util.GetConversationCount() == 5 then
      _util.AddConversation(463, 464, -1, _const.END_DIALOG, 0)
      if _util.GetVar("M1C3_uberVariable") == 0 then
        _util.SetVar("M1C3_uberVariable", 1)
      end
      _util.SetVar("M1C3_introDotSnowman", 1)
    end
  elseif _util.GetVar("M1C3_uberVariable") == 1 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(466)
      _util.AddLoopingOption(468, 473, _const.UPDATE_LOOP)
      _util.AddLoopingOption(470, 475, _const.UPDATE_LOOP)
      _util.AddLoopingOption(471, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(477, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C3_uberVariable") == 2 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(466)
      _util.AddLoopingOption(478, 480, _const.CHANGE_DIALOG, 1)
      _util.AddLoopingOption(479, -1, _const.CHANGE_DIALOG, 10)
    elseif _util.GetConversationCount() == 10 then
      _util.AddDialog(481, _const.END_DIALOG, 0)
    elseif _util.GetConversationCount() == 1 then
      _util.AddLoopingConv(480)
      _util.AddLoopingOption(482, 484, _const.UPDATE_LOOP)
      _util.AddLoopingOption(483, -1, _const.CHANGE_DIALOG, 11)
    elseif _util.GetConversationCount() == 11 then
      _util.AddDialog(485, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C3_uberVariable") == 3 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(466)
      _util.AddLoopingOption(486, 488, _const.UPDATE_LOOP)
      _util.AddLoopingOption(487, -1, _const.CHANGE_DIALOG, 10)
    elseif _util.GetConversationCount() == 10 then
      _util.AddDialog(489, _const.END_DIALOG, 0)
    elseif _util.GetConversationCount() == 1 then
      _util.AddConversation(488, 490, -1, _const.CHANGE_DIALOG, 2)
    elseif _util.GetConversationCount() == 2 then
      _util.AddDialog(491, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C3_uberVariable") == 4 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(466)
      _util.AddLoopingOption(492, 494, _const.UPDATE_LOOP)
      _util.AddLoopingOption(493, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(495, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C3_uberVariable") == 5 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(496)
      _util.AddLoopingOption(497, 499, _const.UPDATE_LOOP)
      _util.AddLoopingOption(498, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(500, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C3_uberVariable") == 6 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(501)
      _util.AddLoopingOption(502, 504, _const.UPDATE_LOOP)
      _util.AddLoopingOption(503, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(505, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C3_uberVariable") == 7 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(506)
      _util.AddLoopingOption(507, 509, _const.UPDATE_LOOP)
      _util.AddLoopingOption(508, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(510, _const.END_DIALOG, 0)
    end
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and (_util.GetSource() == _id.Inventory_PuffleRed or _util.GetSource() == _id.Inventor_PuffleBlue) then
  _util.AddMonologue(465)
end
if _util.GetReason() == _const.COMMUNICATOR then
  if _util.GetVar("M1C3_uberVariable") < 8 or _util.GetVar("M1C3_uberVariable") > 11 then
    if _util.GetComCount() == 0 then
      _util.AddComText(512)
      _util.AddComOption(513, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C3_uberVariable") == 8 then
    if _util.GetComCount() == 0 then
      _util.AddComText(514)
      _util.AddComOption(515, _const.CHANGE_DIALOG, 1)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(517)
      _util.AddComOption(516, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C3_uberVariable") == 9 then
    if _util.GetComCount() == 0 then
      _util.AddComText(514)
      _util.AddComOption(518, _const.CHANGE_DIALOG, 1)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(519, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C3_uberVariable") == 10 then
    if _util.GetComCount() == 0 then
      _util.AddComText(514)
      _util.AddComOption(520, _const.CHANGE_DIALOG, 1)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(521, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C3_uberVariable") == 11 then
    if _util.GetComCount() == 0 then
      _util.AddComText(522)
      _util.AddComOption(523, _const.CHANGE_DIALOG, 1)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(524)
      _util.AddComOption(525, _const.CHANGE_DIALOG, 2)
    elseif _util.GetComCount() == 2 then
      _util.AddComText(526, _const.CHANGE_DIALOG, 3)
    elseif _util.GetComCount() == 3 then
      _util.AddComText(527)
      _util.AddComOption(528, _const.CHANGE_DIALOG, 4)
    elseif _util.GetComCount() == 4 then
      _util.AddComText(529)
      _util.AddComOption(530, _const.CHANGE_DIALOG, 5)
    elseif _util.GetComCount() == 5 then
      _util.AddComText(531)
      _util.AddComOption(532, _const.END_DIALOG, 0)
      _util.SetVar("M1C3_calledDot", 1)
    end
  end
end
