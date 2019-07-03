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
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COLLIDED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.TOUCHED
if L1_1 == L2_2 then
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C3_TM_JPG_1
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C3_TM_JPG_2
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L2_2 = "ReelInJPG"
    L1_1(L2_2, 1)
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C3_TM_JPG_3
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C3_TM_JPG_3A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 3)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C3_TM_JPG_3B
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.M10_NIGHTCLUB_ROOKIEB_2
    L1_1(L2_2, _const.END_DIALOG, -1, 30)
  elseif L0_0 == 30 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C3_TM_JPG_12
    L1_1(L2_2, _const.END_DIALOG, -1, 30)
  elseif L0_0 == 31 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C3_TM_JPG_13
    L1_1(L2_2, _const.END_DIALOG, -1, 31)
  elseif L0_0 == 32 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C3_TM_JPG_14
    L1_1(L2_2, _const.END_DIALOG, -1, 32)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C3_TM_JPG_4
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 5)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L2_2 = "SavedJPG"
    L1_1(L2_2, 1)
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "MoveBoulder"
    L1_1 = L1_1(L2_2, 1)
    if L1_1 then
      L1_1 = _util
      L1_1 = L1_1.MarkSubObjComplete
      L2_2 = _text
      L2_2 = L2_2.C3_OBJ4
      L1_1(L2_2, _text.C3_4SUBOBJ4)
    end
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "SavedDot"
    L1_1 = L1_1(L2_2)
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddNPCText
      L2_2 = _text
      L2_2 = L2_2.C3_TM_JPG_5
      L1_1(L2_2)
      L1_1 = _util
      L1_1 = L1_1.AddPlayerOption
      L2_2 = _text
      L2_2 = L2_2.C3_TM_JPG_5A
      L1_1(L2_2, _const.CHANGE_DIALOG, -1, 6)
    else
      L1_1 = _util
      L1_1 = L1_1.SetConversationCount
      L2_2 = 10
      L1_1(L2_2, _id.C3_TM_Rookie)
      L1_1 = _util
      L1_1 = L1_1.AddNPCText
      L2_2 = _text
      L2_2 = L2_2.C3_TM_JPG_5B
      L1_1(L2_2, _const.END_DIALOG, -1, 5)
      L1_1 = _util
      L1_1 = L1_1.MarkObjComplete
      L2_2 = _text
      L2_2 = L2_2.C3_OBJ4
      L1_1(L2_2)
    end
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C3_TM_JPG_6
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 7)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L2_2 = "MoveBoulder"
    L1_1(L2_2, 1)
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C3_TM_JPG_7
    L1_1(L2_2, _const.END_DIALOG, -1, 7)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.ChangeBaseAnim
    L2_2 = "NPC/M3/JPG/jpgRope"
    L1_1(L2_2, _id.C3_TM_JPG)
    L1_1 = _util
    L1_1 = L1_1.ActivateNpc
    L2_2 = _util
    L2_2 = L2_2.GetSelf
    L2_2 = L2_2()
    L1_1(L2_2, 4)
  elseif L0_0 == 100 then
    function L1_1()
      _util.AddItem(_id.C3_FallingBoulder)
      _util.PushCamera(_id.C3_FallingBoulder)
      _util.DisableInput()
      _util.ChangeBaseAnim("MissionObjects/M3/rockDebrisFall_Down", _id.C3_FallingBoulder)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.C3_FallingBoulder)
      _util.SetExitLocked(_id.TallestMtDoorToRookie, true)
      _util.PopCamera()
      _util.EnableInput()
      _util.ActivateNpc(_util.GetSelf(), 31)
      _util.AddItem(_id.C3_Boulder)
      _util.DelItem(_id.C3_FallingBoulder)
    end
    L2_2 = scriptPlay
    L2_2(L1_1)
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.ITEM_DROPPED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _id
  L2_2 = L2_2.C3_FishingPole
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("ReelInJPG")
    if L2_2 == 1 then
      function L2_2()
        local L0_3
        L0_3 = _util
        L0_3 = L0_3.StartMiniGame
        L0_3(_const.JPG_REEL, 0)
        repeat
          L0_3 = scriptWait
          L0_3()
          L0_3 = _util
          L0_3 = L0_3.GetGameState
          L0_3 = L0_3()
        until L0_3 ~= _const.MISSION
        repeat
          L0_3 = scriptWait
          L0_3()
          L0_3 = _util
          L0_3 = L0_3.GetGameState
          L0_3 = L0_3()
        until L0_3 == _const.MISSION
        L0_3 = _util
        L0_3 = L0_3.GetMinigameOutput1
        L0_3 = L0_3()
        if L0_3 == 1 then
          L0_3 = _util
          L0_3 = L0_3.DisableInput
          L0_3()
          L0_3 = _util
          L0_3 = L0_3.SetVar
          L0_3("ReelInJPG", 2)
          L0_3 = _util
          L0_3 = L0_3.SetVar
          L0_3("UsePuffle", 1)
          L0_3 = _util
          L0_3 = L0_3.AddItem
          L0_3(_id.C3_MountainTop_FishPole)
          L0_3 = _util
          L0_3 = L0_3.ChangeBaseAnim
          L0_3("NPC/M3/JPG/jpgHitMountain", _id.C3_TM_JPGonRocket)
          L0_3 = _util
          L0_3 = L0_3.ChangeBaseAnim
          L0_3("NPC/M3/JPG/FishRodHitMountain", _id.C3_MountainTop_FishPole)
          repeat
            L0_3 = scriptWait
            L0_3()
            L0_3 = _util
            L0_3 = L0_3.IsAnimPlaying
            L0_3 = L0_3(_id.C3_TM_JPGonRocket)
          until not L0_3
          L0_3 = _util
          L0_3 = L0_3.ChangeBaseAnim
          L0_3("NPC/M3/JPG/jpgUnderControl", _id.C3_TM_JPGonRocket)
          L0_3 = _util
          L0_3 = L0_3.ChangeBaseAnim
          L0_3("NPC/M3/JPG/FishRodUnderControl", _id.C3_MountainTop_FishPole)
          L0_3 = _util
          L0_3 = L0_3.MarkSubObjComplete
          L0_3(_text.C3_OBJ4, _text.C3_4SUBOBJ1)
          L0_3 = _util
          L0_3 = L0_3.RemoveInventoryItem
          L0_3(_id.C3_FishingPole)
          function L0_3()
            _util.ScreenShake(60)
            count = 0
            repeat
              count = count + 1
              scriptWait()
            until 60 <= count
          end
          scriptPlay(L0_3)
          _util.EnableInput()
          _util.ActivateNpc(_id.C3_TM_JPGonRocket, 100)
        end
      end
      scriptPlay(L2_2)
    end
  end
  L2_2 = _id
  L2_2 = L2_2.Inventory_PuffleYellow
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("UsePuffle")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.SetSuccess
      L2_2(_util.GetSelf(), true)
    end
  else
    L2_2 = _id
    L2_2 = L2_2.Inventory_PufflePink
    if L1_1 == L2_2 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("UsePuffle")
      if L2_2 == 1 then
        L2_2 = _util
        L2_2 = L2_2.SetSuccess
        L2_2(_util.GetSelf(), true)
      end
    else
      L2_2 = _id
      L2_2 = L2_2.Inventory_PuffleWhite
      if L1_1 == L2_2 then
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L2_2 = L2_2("UsePuffle")
        if L2_2 == 1 then
          L2_2 = _util
          L2_2 = L2_2.SetSuccess
          L2_2(_util.GetSelf(), true)
        end
      end
    end
  end
  L2_2 = _id
  L2_2 = L2_2.Inventory_ScissorsTool
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("UseScissors")
    if L2_2 == 1 then
      function L2_2()
        _util.DisableInput()
        _util.SetVar("UseScissors", 2)
        _util.ChangeBaseAnim("NPC/M3/JPG/jpgCutRope", _id.C3_TM_JPG)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_util.GetSelf())
        _util.ChangeBaseAnim("NPC/M3/JPG/jpgFree", _id.C3_TM_JPG)
        _util.ChangeBaseAnim("NPC/M3/JPG/FishRodFree", _id.C3_MountainTop_FishPole)
        _util.EnableInput()
        _util.ActivateNpc(_util.GetSelf(), 4)
      end
      scriptPlay(L2_2)
    end
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.COLLIDED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _id
  L2_2 = L2_2.Inventory_PuffleYellow
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("UsePuffle")
    if L2_2 == 1 then
      function L2_2()
        _util.AddItem(_id.C3_TM_JPG)
        _util.DelItem(_id.C3_TM_JPGonRocket)
        _util.ChangeBaseAnim("NPC/M3/JPG/FishRodFree", _id.C3_MountainTop_FishPole)
        _util.SetVar("UsePuffle", 2)
        _util.SetVar("UseScissors", 1)
        _util.ActivateNpc(_id.C3_TM_JPG, 32)
      end
      scriptPlay(L2_2)
    end
  else
    L2_2 = _id
    L2_2 = L2_2.Inventory_PufflePink
    if L1_1 == L2_2 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("UsePuffle")
      if L2_2 == 1 then
        function L2_2()
          _util.AddItem(_id.C3_TM_JPG)
          _util.DelItem(_id.C3_TM_JPGonRocket)
          _util.ChangeBaseAnim("NPC/M3/JPG/FishRodFree", _id.C3_MountainTop_FishPole)
          _util.SetVar("UsePuffle", 2)
          _util.SetVar("UseScissors", 1)
          _util.ActivateNpc(_id.C3_TM_JPG, 32)
        end
        scriptPlay(L2_2)
      end
    else
      L2_2 = _id
      L2_2 = L2_2.Inventory_PuffleWhite
      if L1_1 == L2_2 then
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L2_2 = L2_2("UsePuffle")
        if L2_2 == 1 then
          function L2_2()
            _util.AddItem(_id.C3_TM_JPG)
            _util.DelItem(_id.C3_TM_JPGonRocket)
            _util.ChangeBaseAnim("NPC/M3/JPG/FishRodFree", _id.C3_MountainTop_FishPole)
            _util.SetVar("UsePuffle", 2)
            _util.SetVar("UseScissors", 1)
            _util.ActivateNpc(_id.C3_TM_JPG, 32)
          end
          scriptPlay(L2_2)
        end
      end
    end
  end
end
