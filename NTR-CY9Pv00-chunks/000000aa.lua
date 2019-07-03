local L0_0, L1_1, L2_2
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
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
function L1_1()
  if _util.GetVar("GoodNews") == 0 then
    _util.AddPlayerOption(_text.C4_PLAZA_DOT_1A, _const.CHANGE_DIALOG, -1, 1)
  end
  if _util.GetVar("BadNews") == 0 then
    _util.AddPlayerOption(_text.C4_PLAZA_DOT_1B, _const.CHANGE_DIALOG, -1, 2)
  end
end
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
if L2_2 == _const.TOUCHED then
  if L0_0 == 0 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C4_PLAZA_DOT_1)
    L2_2 = L1_1
    L2_2()
  elseif L0_0 == 1 then
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("GoodNews", 1)
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("BadNews")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.SetVar
      L2_2("C4_HelpingDot", 1)
      L2_2 = _util
      L2_2 = L2_2.AddNPCText
      L2_2(_text.C4_PLAZA_DOT_2, _const.CHANGE_DIALOG, -1, 3)
    else
      L2_2 = _util
      L2_2 = L2_2.AddNPCText
      L2_2(_text.C4_PLAZA_DOT_2)
      L2_2 = L1_1
      L2_2()
    end
  elseif L0_0 == 2 then
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("BadNews", 1)
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("GoodNews")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.SetVar
      L2_2("C4_HelpingDot", 1)
      L2_2 = _util
      L2_2 = L2_2.AddNPCText
      L2_2(_text.C4_PLAZA_DOT_3, _const.CHANGE_DIALOG, -1, 3)
    else
      L2_2 = _util
      L2_2 = L2_2.AddNPCText
      L2_2(_text.C4_PLAZA_DOT_3)
      L2_2 = L1_1
      L2_2()
    end
  elseif L0_0 == 3 then
    L2_2 = _util
    L2_2 = L2_2.AddSubObjective
    L2_2(_text.C4_OBJ3, _text.C4_3SUBOBJ1)
    L2_2 = _util
    L2_2 = L2_2.AddSubObjective
    L2_2(_text.C4_OBJ3, _text.C4_3SUBOBJ2)
    L2_2 = _util
    L2_2 = L2_2.AddSubObjective
    L2_2(_text.C4_OBJ3, _text.C4_3SUBOBJ3)
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C4_PLAZA_DOT_4, _const.CHANGE_DIALOG, -1, 4)
  elseif L0_0 == 4 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("M10_HaveHat")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("M10_HaveWig")
      if L2_2 == 1 then
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L2_2 = L2_2("M10_HaveBeard")
        if L2_2 == 1 then
          L2_2 = _util
          L2_2 = L2_2.AddNPCText
          L2_2(_text.C4_PLAZA_DOT_7, _const.CHANGE_DIALOG, -1, 8)
        end
      end
    else
      L2_2 = _util
      L2_2 = L2_2.AddNPCText
      L2_2(_text.C4_PLAZA_DOT_5, _const.CHANGE_DIALOG, -1, 5)
    end
  elseif L0_0 == 5 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C4_PLAZA_DOT_6, _const.END_DIALOG, -1, 4)
  elseif L0_0 == 6 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C4_PLAZA_DOT_7, _const.CHANGE_DIALOG, -1, 8)
  elseif L0_0 == 8 then
    function L2_2()
      if _util.GetVar("CompletedAquaGrabber") == 1 then
        _util.SetSpawn(0, _id.C4_IceBerg_Gary)
      end
      _util.QueueMiniGame(_const.BALANCE, 0, _util.GetVar("CompletedAquaGrabber"))
      _util.StartCutscene(_const.BALANCE_GAME_TUT)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      if _util.GetMinigameOutput1() == 1 then
        _util.SetVar("CompletedRebalancingWithDot", 1)
        _util.SetConversationCount(9, _id.C4_Plaza_Dot)
        _util.RemoveInventoryItem(_id.C4_InventoryItem_SenseiHat)
        _util.RemoveInventoryItem(_id.C4_InventoryItem_Wig)
        _util.RemoveInventoryItem(_id.C4_InventoryItem_BlackBeard)
        _util.MarkObjComplete(_text.C4_OBJ3)
        _util.ClearCom()
        _util.SetupComNpc(_const.COM_GARY, _id.C4_IceBerg_Gary, 5)
        _util.EnableInput(true)
        _util.LaunchCommunicator()
      end
    end
    scriptPlay(L2_2)
  elseif L0_0 == 9 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C4_PLAZA_DOTCOMPLETE, _const.END_DIALOG, -1, 9)
  end
end
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
if L2_2 == _const.ITEM_DROPPED then
  function L2_2()
    _util.ActivateNpc(_util.GetSelf(), _util.GetConversationCount())
  end
  scriptPlay(L2_2)
end
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
if L2_2 == _const.COMMUNICATOR then
  L2_2 = _util
  L2_2 = L2_2.GetComCount
  L2_2 = L2_2()
  if L2_2 == 0 then
    _util.AddNPCTextComm(_text.C4_COMM_DOT_1, _const.CHANGE_DIALOG, 1)
  elseif L2_2 == 1 then
    _util.DelItem(_id.C4_SkiVillage_Rookie)
    _util.DelItem(_id.C4_SkiVillage_JPG)
    _util.DelItem(_id.C4_SkiVillage_Klutzy)
    _util.DelItem(_id.C4_SkiVillage_Herb)
    _util.AddNPCTextComm(_text.C4_COMM_DOT_2, _const.END_DIALOG, 1)
  end
end
