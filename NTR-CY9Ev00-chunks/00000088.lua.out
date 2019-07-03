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
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.TOUCHED then
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("C4_HerbFloaties")
    if L1_1 < 3 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("C4_Talk2Gary")
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddNPCText
        L1_1(_text.C4_COMM_GARY_25, _const.CHANGE_DIALOG, -1, 100)
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("FoundAllInflatibles")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddNPCText
        L1_1(_text.C4_IB_GARY_1)
        L1_1 = _util
        L1_1 = L1_1.AddPlayerOption
        L1_1(_text.C4_IB_GARY_1A, _const.CHANGE_DIALOG, -1, 2)
        L1_1 = _util
        L1_1 = L1_1.AddPlayerOption
        L1_1(_text.C4_IB_GARY_1B, _const.CHANGE_DIALOG, -1, 2)
      else
        L1_1 = _util
        L1_1 = L1_1.AddNPCText
        L1_1(_text.C4_IB_GARY_1)
        L1_1 = _util
        L1_1 = L1_1.AddPlayerOption
        L1_1(_text.C4_IB_GARY_7, _const.CHANGE_DIALOG, -1, 1)
      end
    end
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_IB_GARY_7A, _const.END_DIALOG, -1, 0)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_IB_GARY_2, _const.CHANGE_DIALOG, -1, 3)
  elseif L0_0 == 3 then
    function L1_1()
      _util.DisableInput()
      _util.AddInventoryItem(_id.C4_InventoryItem_SuperHelium)
      repeat
        scriptWait()
      until _util.IsPopUpVisible()
      _util.EnableInput()
      repeat
        scriptWait()
      until not _util.IsPopUpVisible()
      _util.ActivateNpc(_id.C4_IceBerg_Gary, 30)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 30 then
    function L1_1()
      _util.StartMiniGame(_const.AQUAGRABBER, 0)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      if _util.GetMinigameOutput1() == 1 then
        _util.DisableInput()
        repeat
          scriptWait()
        until 0 + 1 > 40
        if 0 < _util.GetVar("CompletedRebalancingWithDot") then
          _util.StartCutscene(_const.ISLANDRAISE2)
          _util.SetSpawn(0, _id.C4_Plaza_Dot)
        else
          _util.StartCutscene(_const.ISLANDRAISE1)
        end
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        _util.EnableInput()
        _util.SetCursorPos(509, 85)
        _util.SetVar("CompletedAquaGrabber", 1)
        _util.MarkObjComplete(_text.C4_OBJ2)
        _util.ActivateNpc(_id.C4_IceBerg_Gary, 4)
        _util.RemoveInventoryItem(_id.C4_InventoryItem_WhaleFloat)
        _util.RemoveInventoryItem(_id.C4_InventoryItem_OctoFloat)
        _util.RemoveInventoryItem(_id.C4_InventoryItem_RubberDucky)
        _util.RemoveInventoryItem(_id.C4_InventoryItem_FestivalFloat)
        _util.RemoveInventoryItem(_id.C4_InventoryItem_LifePreserver)
      end
    end
    scriptPlay(L1_1)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("CompletedRebalancingWithDot")
    if L1_1 >= 1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("CompletedAquaGrabber")
      if L1_1 >= 1 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("freeHerbert")
        if L1_1 >= 2 then
          L1_1 = _util
          L1_1 = L1_1.AddNPCText
          L1_1(_text.C4_IB_GARY_3, _const.CHANGE_DIALOG, -1, 5)
        end
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("CompletedRebalancingWithDot")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddNPCText
        L1_1(_text.C4_IB_GARY_5, _const.CHANGE_DIALOG, -1, 7)
      else
        L1_1 = _util
        L1_1 = L1_1.SetObjective
        L1_1(_text.C4_OBJ3)
        L1_1 = _util
        L1_1 = L1_1.AddNPCText
        L1_1(_text.C4_COMM_GARY_30, _const.CHANGE_DIALOG, -1, 6)
      end
    end
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("C4_SwappedLevel")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("C4_SwappedLevel", 1)
      L1_1 = _util
      L1_1 = L1_1.AddObjective
      L1_1(_text.C4_OBJ4)
      L1_1 = _util
      L1_1 = L1_1.SwapLevel
      L1_1(88, 87)
    end
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_IB_GARY_4, _const.END_DIALOG, -1, 5)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_IB_GARY_6, _const.END_DIALOG, -1, 4)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_COMM_GARY_ANSC_1, _const.CHANGE_DIALOG, -1, 8)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_COMM_GARY_ANSC_2, _const.END_DIALOG, -1, 4)
  elseif L0_0 == 100 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_COMM_GARY_26, _const.CHANGE_DIALOG, -1, 101)
  elseif L0_0 == 101 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_COMM_GARY_27, _const.CHANGE_DIALOG, -1, 102)
  elseif L0_0 == 102 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_COMM_GARY_28, _const.CHANGE_DIALOG, -1, 103)
  elseif L0_0 == 103 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("C4_Talk2Gary", 1)
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_COMM_GARY_29, _const.END_DIALOG, -1, 0)
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.COMMUNICATOR then
  L1_1 = _util
  L1_1 = L1_1.GetComCount
  L1_1 = L1_1()
  if L1_1 == 0 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_25, _const.CHANGE_DIALOG, 1)
    _util.DelItem(_id.C4_SkiVillage_Rookie)
    _util.DelItem(_id.C4_SkiVillage_JPG)
    _util.DelItem(_id.C4_SkiVillage_Klutzy)
    _util.DelItem(_id.C4_SkiVillage_Herb)
  elseif L1_1 == 1 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_26, _const.CHANGE_DIALOG, 2)
  elseif L1_1 == 2 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_27, _const.CHANGE_DIALOG, 3)
  elseif L1_1 == 3 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_28, _const.CHANGE_DIALOG, 4)
  elseif L1_1 == 4 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_29, _const.END_DIALOG, 0)
  elseif L1_1 == 5 then
    if 1 <= _util.GetVar("CompletedRebalancingWithDot") and 1 <= _util.GetVar("CompletedAquaGrabber") and 2 <= _util.GetVar("freeHerbert") then
      _util.AddNPCTextComm(_text.C4_IB_GARY_3, _const.CHANGE_DIALOG, -1, 6)
    elseif _util.GetVar("CompletedAquaGrabber") == 1 then
      _util.AddNPCTextComm(_text.C4_IB_GARY_5, _const.CHANGE_DIALOG, -1, 8)
    else
      _util.SetObjective(_text.C4_OBJ2)
      _util.AddNPCTextComm(_text.C4_COMM_GARY_30, _const.CHANGE_DIALOG, -1, 7)
    end
  elseif L1_1 == 6 then
    if _util.GetVar("C4_SwappedLevel") == 0 then
      _util.SetVar("C4_SwappedLevel", 1)
      _util.AddObjective(_text.C4_OBJ4)
      _util.SwapLevel(88, 87)
    end
    _util.AddNPCTextComm(_text.C4_IB_GARY_4, _const.END_DIALOG, -1, 6)
  elseif L1_1 == 7 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_31, _const.END_DIALOG, -1, 5)
  elseif L1_1 == 8 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_ANSC_1, _const.CHANGE_DIALOG, -1, 9)
  elseif L1_1 == 9 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_ANSC_2, _const.END_DIALOG, -1, 5)
  end
end
