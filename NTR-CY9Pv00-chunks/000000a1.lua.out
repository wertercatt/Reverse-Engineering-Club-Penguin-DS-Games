local L0_0, L1_1, L2_2, L3_3
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
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.AFTER_DIALOG
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetConversationCount
L2_2 = L2_2()
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.TOUCHED then
  if L2_2 == 0 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M10_GIFTSHOP_ROOKIE_GREET)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M10_GIFTSHOP_ROOKIEA_Q1, _const.CHANGE_DIALOG, -1, 1)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M10_GIFTSHOP_ROOKIEA_Q2, _const.CHANGE_DIALOG, -1, 1)
  elseif L2_2 == 1 then
    function L3_3()
      _util.DisableInput()
      _util.PushCamera()
      _util.ChangeBaseAnim("NPC/WaddleSquad/Rookie/rMagnetSalute", _id.M10_GiftShop_Rookie, "turn")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M10_GiftShop_Rookie)
      _util.PopCamera()
      _util.EnableInput()
      _util.AddNPCText(_text.M10_GIFTSHOP_ROOKIEA_A)
      _util.AddPlayerOption(_text.M10_GIFTSHOP_ROOKIEB_Q1, _const.CHANGE_DIALOG, -1, 2)
      _util.AddPlayerOption(_text.M10_GIFTSHOP_ROOKIEB_Q2, _const.CHANGE_DIALOG, -1, 2)
    end
    scriptPlay(L3_3)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M10_GIFTSHOP_ROOKIEB_A_2B, _const.CHANGE_DIALOG, -1, 3)
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/WaddleSquad/Rookie/rMagnetHappy", _id.M10_GiftShop_Rookie, "talkB")
  elseif L2_2 == 3 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M10_GIFTSHOP_ROOKIEB_B)
    L3_3 = _util
    L3_3 = L3_3.SwitchState
    L3_3("talkB", _id.M10_GiftShop_Rookie)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M10_GIFTSHOP_ROOKIEC_Q1, _const.CHANGE_DIALOG, -1, 4)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M10_GIFTSHOP_ROOKIEC_Q2, _const.CHANGE_DIALOG, -1, 4)
  elseif L2_2 == 4 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("foundPanel")
    if L3_3 == 0 then
      L3_3 = _util
      L3_3 = L3_3.AddNPCText
      L3_3(_text.M10_GIFTSHOP_ROOKIEC_A_2B, _const.CHANGE_DIALOG, -1, 5)
    else
      L3_3 = _util
      L3_3 = L3_3.SwitchState
      L3_3("talkB", _id.M10_GiftShop_Rookie)
      L3_3 = _util
      L3_3 = L3_3.AddNPCText
      L3_3(_text.M10_GIFTSHOP_ROOKIEC_A_2B)
      L3_3 = _util
      L3_3 = L3_3.AddPlayerOption
      L3_3(_text.M10_GIFTSHOP_ROOKIEC_B1, _const.CHANGE_DIALOG, -1, 6)
    end
  elseif L2_2 == 5 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M10_GIFTSHOP_ROOKIEC_B)
    L3_3 = _util
    L3_3 = L3_3.SwitchState
    L3_3("talkB", _id.M10_GiftShop_Rookie)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M10_GIFTSHOP_ROOKIED_Q1, _const.CHANGE_DIALOG, -1, 6)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M10_GIFTSHOP_ROOKIED_Q2, _const.CHANGE_DIALOG, -1, 6)
  elseif L2_2 == 6 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("foundPanel")
    if L3_3 == 0 then
      L3_3 = _util
      L3_3 = L3_3.AddSubObjective
      L3_3(_text.M10_OBJ2, _text.M10_2SUBOBJ1, true)
      L3_3 = _util
      L3_3 = L3_3.AddSubObjective
      L3_3(_text.M10_OBJ2, _text.M10_2SUBOBJ2, true)
      L3_3 = _util
      L3_3 = L3_3.SwitchState
      L3_3("TO", _id.M10_GiftShop_Rookie)
      L3_3 = _util
      L3_3 = L3_3.AddNPCText
      L3_3(_text.M10_GIFTSHOP_ROOKIED_A, _const.CHANGE_DIALOG, -1, 7)
    else
      L3_3 = _util
      L3_3 = L3_3.SwitchState
      L3_3("TO", _id.M10_GiftShop_Rookie)
      L3_3 = _util
      L3_3 = L3_3.AddNPCText
      L3_3(_text.M10_GIFTSHOP_ROOKIED_A, _const.CHANGE_DIALOG, -1, 70)
      L3_3 = _util
      L3_3 = L3_3.HasSubObjective
      L3_3 = L3_3(_text.M10_OBJ2, _text.M10_2SUBOBJ2, true)
      if not L3_3 then
        _util.AddSubObjective(_text.M10_OBJ2, _text.M10_2SUBOBJ2, true)
      end
    end
  elseif L2_2 == 7 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("foundPanel")
    if L3_3 == 0 then
      L3_3 = _util
      L3_3 = L3_3.AddNPCText
      L3_3(_text.M10_GIFTSHOP_ROOKIE_GREET2, _const.END_DIALOG, -1, 7)
    else
      L3_3 = _util
      L3_3 = L3_3.AddNPCText
      L3_3(_text.M10_GIFTSHOP_ROOKIE_GREET3, _const.END_DIALOG, -1, 7)
      L3_3 = _util
      L3_3 = L3_3.SetVar
      L3_3("FixMagnet", 1)
    end
  elseif L2_2 == 70 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M10_GIFTSHOP_ROOKIE_GREET3_ALT, _const.END_DIALOG, -1, 70)
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("FixMagnet", 1)
  elseif L2_2 == 8 then
    L3_3 = _util
    L3_3 = L3_3.SetCursorPos
    L3_3(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M10_GIFTSHOP_ROOKIE_FAIL, _const.END_DIALOG, -1, 8)
  elseif L2_2 == 9 then
    L3_3 = _util
    L3_3 = L3_3.SetCursorPos
    L3_3(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/WaddleSquad/Rookie/rMagnetHappy")
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M10_GIFTSHOP_ROOKIE_PASS)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M10_GIFTSHOP_ROOKIE_PASS_Q1, _const.CHANGE_DIALOG, -1, 10)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L3_3(_text.M10_GIFTSHOP_ROOKIE_PASS_Q2, _const.CHANGE_DIALOG, -1, 10)
  elseif L2_2 == 10 then
    L3_3 = _util
    L3_3 = L3_3.MarkObjComplete
    L3_3(_text.M10_OBJ2, true)
    L3_3 = _util
    L3_3 = L3_3.ChangeBaseAnim
    L3_3("NPC/WaddleSquad/Rookie/rMagnetSalute")
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L3_3("M10_RookieComplete", 1)
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L3_3(_text.M10_GIFTSHOP_ROOKIE_PASS_A, _const.CHANGE_DIALOG, -1, 11)
  elseif L2_2 == 11 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("M10_foundHerbAtNC")
    if L3_3 == 1 then
      L3_3 = _util
      L3_3 = L3_3.ChangeBaseAnim
      L3_3("NPC/WaddleSquad/Rookie/rMagnetHappy", _id.M10_GiftShop_Rookie, "TO")
      L3_3 = _util
      L3_3 = L3_3.AddNPCText
      L3_3(_text.M10_GIFTSHOP_ROOKIE_FOUNDHERBERT, _const.END_DIALOG, -1, 11)
    else
      L3_3 = _util
      L3_3 = L3_3.SetCursorPos
      L3_3(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      L3_3 = _util
      L3_3 = L3_3.ChangeBaseAnim
      L3_3("NPC/WaddleSquad/Rookie/rMagnetHappy", _id.M10_GiftShop_Rookie, "TO")
      L3_3 = _util
      L3_3 = L3_3.AddNPCText
      L3_3(_text.M10_GIFTSHOP_ROOKIE_GREET4, _const.END_DIALOG, -1, 11)
    end
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.COMMUNICATOR then
  L3_3 = _util
  L3_3 = L3_3.GetComCount
  L3_3 = L3_3()
  if L3_3 == 0 then
    _util.SetVar("M10_alreadyInComm", 1)
    _util.AddComText(_text.M10_DOCK_ROOKIE_COMM, _const.END_DIALOG, 0)
    _util.AddObjective(_text.M10_OBJ7)
    _util.AddSubObjective(_text.M10_OBJ7, _text.M10_7SUBOBJ1)
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.AFTER_DIALOG then
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L3_3 = L3_3("M10_alreadyInComm")
  if L3_3 == 0 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("M10_JPGComplete")
    if L3_3 == 1 then
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("M10_trapComplete")
      if L3_3 == 1 then
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L3_3 = L3_3("M10_RookieComplete")
        if L3_3 == 1 then
          L3_3 = _util
          L3_3 = L3_3.GetVar
          L3_3 = L3_3("M10_ComDock")
          if L3_3 == 0 then
            L3_3 = _util
            L3_3 = L3_3.SetupComNpc
            L3_3(_const.COM_JPG, _id.M10_HQGary, 1)
            L3_3 = _util
            L3_3 = L3_3.SetVar
            L3_3("M10_ComDock", 1)
            L3_3 = _util
            L3_3 = L3_3.SwitchState
            L3_3("", _util.GetSelf())
            L3_3 = _util
            L3_3 = L3_3.LaunchCommunicator
            L3_3()
          end
        end
      end
    end
    L3_3 = _util
    L3_3 = L3_3.SetCursorPos
    L3_3(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
  end
  L3_3 = _util
  L3_3 = L3_3.SetVar
  L3_3("M10_alreadyInComm", 0)
end
