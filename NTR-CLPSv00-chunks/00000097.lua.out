if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 100 then
    _util.AddConversation(1974, 1975, -1, _const.CHANGE_DIALOG, 101)
  elseif _util.GetConversationCount() == 101 then
    _util.AddConversation(1976, 1977, -1, _const.CHANGE_DIALOG, 102)
  elseif _util.GetConversationCount() == 102 then
    _util.SetVar("M3C3_minerIntroComplete", 1)
    _util.AddConversation(1978, 1979, -1, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(1986)
    _util.AddLoopingOption(1987, 1990, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1988, 1991, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1989, -1, _const.CHANGE_DIALOG, 222)
  elseif _util.GetConversationCount() == 222 then
    _util.AddDialog(4476, _const.END_DIALOG, 0)
  end
  if _util.GetConversationCount() == 200 and _util.GetVar("M3C3_outroCommenced") == 0 then
    _util.SetVar("M3C3_outroCommenced", 1)
    _util.ShowMap()
    _util.SetExitLocked(_id.Doors_MineShack2MineInt, false)
    _util.EnableSpyPodFunc(_const.FLAG_HEADQUARTERS)
    _util.AddConversation(1993, 1994, -1, _const.END_DIALOG, 300)
  elseif _util.GetConversationCount() == 300 and _util.GetVar("M3C3_outroCommenced") == 1 then
    _util.AddConversation(2040, 2041, -1, _const.CHANGE_DIALOG, 301)
  elseif _util.GetConversationCount() == 301 and _util.GetVar("M3C3_outroCommenced") == 1 then
    _util.AddConversation(2042, -1, -1, _const.END_DIALOG, 300)
    _util.SetSpawn(0, _id.Screen_CR)
    _util.SetSpawn(0, _id.ScreenOn_CR)
  end
end
