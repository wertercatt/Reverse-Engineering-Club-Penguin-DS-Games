local L0_0
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.CREATED then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L0_0(_const.ITEM_DROPPED)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.TOUCHED then
  L0_0 = _util
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  print("**LOCAL CONVERSATION COUNT: ", L0_0)
  if _util.GetVar("M3C3_coffeeIntroComplete") == 0 then
    if L0_0 == 100 then
      _util.SetCursorPos(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      _util.AddDialog(1897, _const.CHANGE_NPC, _id.M3C3_Rookie, 200)
      _util.SetConversationCount(0)
    end
  elseif _util.GetVar("M3C3_coffeeIntroComplete") == 1 then
    if _util.GetVar("M3C3_askedPermission") == 0 then
      if L0_0 == 0 then
        if _util.GetVar("M3C3_garysRoomIntroComplete") == 1 then
          _util.AddConversation(1910, 1911, -1, _const.CHANGE_DIALOG, 1)
        else
          _util.AddConversation(1910, 1913, -1, _const.CHANGE_DIALOG, 20)
        end
      elseif L0_0 == 20 then
        _util.AddDialog(4779, _const.END_DIALOG, 0)
      elseif L0_0 == 1 then
        _util.SetVar("M3C3_askedPermission", 1)
        _util.AddConversation(1912, 1913, -1, _const.END_DIALOG, 20)
      end
    elseif _util.GetVar("M3C3_askedPermission") == 1 then
      if _util.GetVar("M3C3_haveCocoaMachine") == 0 then
        _util.AddConversation(1914, -1, -1, _const.END_DIALOG, 0)
      elseif L0_0 == 0 then
        _util.AddLoopingConv(1916)
        _util.AddLoopingOption(1917, 1919, _const.CHANGE_DIALOG, 1)
        _util.AddLoopingOption(1918, -1, _const.CHANGE_DIALOG, 30)
      elseif L0_0 == 1 then
        _util.AddDialog(1919, _const.END_DIALOG, 0)
      elseif L0_0 == 30 then
        _util.AddDialog(4780, _const.END_DIALOG, 0)
      end
    end
  end
end
