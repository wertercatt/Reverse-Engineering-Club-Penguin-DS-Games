if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
  _util.AddInterest(_const.COMMUNICATOR)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M1C3_introDotSnowman") == 0 then
    if _util.GetConversationCount() == 0 then
      _util.AddConversation(469, 470, -1, _const.CHANGE_DIALOG, 1)
      _util.RemoveMapAlert(_const.M1C3MISSIONSTART)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(471, _const.CHANGE_DIALOG, 2)
    elseif _util.GetConversationCount() == 2 then
      _util.AddConversation(472, 473, -1, _const.CHANGE_DIALOG, 3)
    elseif _util.GetConversationCount() == 3 then
      _util.AddConversation(474, 475, -1, _const.CHANGE_DIALOG, 4)
    elseif _util.GetConversationCount() == 4 then
      _util.AddConversation(476, 477, -1, _const.CHANGE_DIALOG, 5)
    elseif _util.GetConversationCount() == 5 then
      _util.AddConversation(478, 479, -1, _const.END_DIALOG, 0)
      if _util.GetVar("M1C3_uberVariable") == 0 then
        _util.SetVar("M1C3_uberVariable", 1)
      end
      _util.SetVar("M1C3_introDotSnowman", 1)
    end
  elseif _util.GetVar("M1C3_uberVariable") == 1 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(481)
      _util.AddLoopingOption(483, 488, _const.UPDATE_LOOP)
      _util.AddLoopingOption(485, 490, _const.UPDATE_LOOP)
      _util.AddLoopingOption(486, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(492, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C3_uberVariable") == 2 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(481)
      _util.AddLoopingOption(493, 495, _const.CHANGE_DIALOG, 1)
      _util.AddLoopingOption(494, -1, _const.CHANGE_DIALOG, 10)
    elseif _util.GetConversationCount() == 10 then
      _util.AddDialog(496, _const.END_DIALOG, 0)
    elseif _util.GetConversationCount() == 1 then
      _util.AddLoopingConv(495)
      _util.AddLoopingOption(497, 499, _const.UPDATE_LOOP)
      _util.AddLoopingOption(498, -1, _const.CHANGE_DIALOG, 11)
    elseif _util.GetConversationCount() == 11 then
      _util.AddDialog(500, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C3_uberVariable") == 3 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(481)
      _util.AddLoopingOption(501, 503, _const.UPDATE_LOOP)
      _util.AddLoopingOption(502, -1, _const.CHANGE_DIALOG, 10)
    elseif _util.GetConversationCount() == 10 then
      _util.AddDialog(504, _const.END_DIALOG, 0)
    elseif _util.GetConversationCount() == 1 then
      _util.AddConversation(503, 505, -1, _const.CHANGE_DIALOG, 2)
    elseif _util.GetConversationCount() == 2 then
      _util.AddDialog(506, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C3_uberVariable") == 4 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(481)
      _util.AddLoopingOption(507, 509, _const.UPDATE_LOOP)
      _util.AddLoopingOption(508, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(510, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C3_uberVariable") == 5 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(511)
      _util.AddLoopingOption(512, 514, _const.UPDATE_LOOP)
      _util.AddLoopingOption(513, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(515, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C3_uberVariable") == 6 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(516)
      _util.AddLoopingOption(517, 519, _const.UPDATE_LOOP)
      _util.AddLoopingOption(518, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(520, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C3_uberVariable") == 7 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(521)
      _util.AddLoopingOption(522, 524, _const.UPDATE_LOOP)
      _util.AddLoopingOption(523, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(525, _const.END_DIALOG, 0)
    end
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and (_util.GetSource() == _id.Inventory_PuffleRed or _util.GetSource() == _id.Inventor_PuffleBlue) then
  _util.AddMonologue(480)
end
if _util.GetReason() == _const.COMMUNICATOR then
  if _util.GetVar("M1C3_uberVariable") < 8 or _util.GetVar("M1C3_uberVariable") > 11 then
    if _util.GetComCount() == 0 then
      _util.AddComText(527)
      _util.AddComOption(528, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C3_uberVariable") == 8 then
    if _util.GetComCount() == 0 then
      _util.AddComText(529)
      _util.AddComOption(530, _const.CHANGE_DIALOG, 1)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(532)
      _util.AddComOption(531, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C3_uberVariable") == 9 then
    if _util.GetComCount() == 0 then
      _util.AddComText(529)
      _util.AddComOption(533, _const.CHANGE_DIALOG, 1)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(534, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C3_uberVariable") == 10 then
    if _util.GetComCount() == 0 then
      _util.AddComText(529)
      _util.AddComOption(535, _const.CHANGE_DIALOG, 1)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(536, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M1C3_uberVariable") == 11 then
    if _util.GetComCount() == 0 then
      _util.AddComText(537)
      _util.AddComOption(538, _const.CHANGE_DIALOG, 1)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(539)
      _util.AddComOption(540, _const.CHANGE_DIALOG, 2)
    elseif _util.GetComCount() == 2 then
      _util.AddComText(541, _const.CHANGE_DIALOG, 3)
    elseif _util.GetComCount() == 3 then
      _util.AddComText(542)
      _util.AddComOption(543, _const.CHANGE_DIALOG, 4)
    elseif _util.GetComCount() == 4 then
      _util.AddComText(544)
      _util.AddComOption(545, _const.CHANGE_DIALOG, 5)
    elseif _util.GetComCount() == 5 then
      _util.AddComText(546)
      _util.AddComOption(547, _const.END_DIALOG, 0)
      _util.SetVar("M1C3_calledDot", 1)
    end
  end
end
