local L0_0
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.CREATED then
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.TOUCHED then
  L0_0 = _util
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  print("***PLAYEDSNOWCAT: ", _util.GetVar("M3C3_playedSnowCat"))
  print("***M3C3_gadgetRoomIntroComplete: ", _util.GetVar("M3C3_gadgetRoomIntroComplete"))
  print("***M3C3_madeSnowCat: ", _util.GetVar("M3C3_madeSnowCat"))
  if _util.GetVar("M3C3_outroCommenced") == 0 then
    if L0_0 == 999 then
      _util.AddDialog(207, _const.CHANGE_NPC, _id.M3C3_Twin, 999)
    else
      print("******MADE IT TO ELSE*******")
      if _util.GetVar("M3C3_gadgetRoomIntroComplete") == 0 then
        print("******MADE IT INSIDE IF, CONVCOUNT: ", L0_0)
        if L0_0 == 0 then
          _util.AddConversation(1926, 1927, -1, _const.CHANGE_DIALOG, 1)
        elseif L0_0 == 1 then
          _util.AddLoopingConv(1928)
          _util.AddLoopingOption(1929, 1931, _const.UPDATE_LOOP)
          _util.AddLoopingOption(1930, 1932, _const.UPDATE_LOOP)
          _util.AddLoopingOption(1933, -1, _const.CHANGE_DIALOG, 10)
        elseif L0_0 == 10 then
          _util.AddDialog(4781, _const.END_DIALOG, 0)
          _util.HideMap()
          _util.DisableSpyPodFunc(_const.FLAG_HEADQUARTERS)
          _util.SetExitLocked(_id.Doors_Gadget2HQ, true)
          _util.SetVar("M3C3_gadgetRoomIntroComplete", 1)
        end
      elseif _util.GetVar("M3C3_gadgetRoomIntroComplete") == 1 then
        if _util.GetVar("M3C3_madeSnowCat") == 0 then
          if L0_0 == 0 then
            _util.AddConversation(1934, 1935, -1, _const.END_DIALOG, 0)
          end
        elseif _util.GetVar("M3C3_madeSnowCat") == 1 and L0_0 == 0 then
          _util.AddLoopingConv(1936)
          _util.AddLoopingOption(1937, 1940, _const.UPDATE_LOOP)
          _util.AddLoopingOption(1938, 1941, _const.UPDATE_LOOP)
          _util.AddLoopingOption(1939, -1, _const.END_DIALOG, 0)
        end
      end
    end
  elseif _util.GetVar("M3C3_outroCommenced") == 1 then
  end
end
