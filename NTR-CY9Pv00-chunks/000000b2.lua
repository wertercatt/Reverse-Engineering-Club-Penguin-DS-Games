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
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetVar
  L1_1 = "DugTMTunnel"
  L0_0 = L0_0(L1_1)
  if L0_0 == 1 then
    L0_0 = _util
    L0_0 = L0_0.GetVar
    L1_1 = "RescuedPufflesInCage"
    L0_0 = L0_0(L1_1)
    if L0_0 == 1 then
      L0_0 = _util
      L0_0 = L0_0.GetVar
      L1_1 = "SavedRookie"
      L0_0 = L0_0(L1_1)
      if L0_0 == 1 then
        L0_0 = _util
        L0_0 = L0_0.ChangeRoom
        L1_1 = 112
        L0_0(L1_1)
      end
    end
  else
    L0_0 = _util
    L0_0 = L0_0.GetVar
    L1_1 = "RescuedPufflesInCage"
    L0_0 = L0_0(L1_1)
    if L0_0 == 1 then
      L0_0 = _util
      L0_0 = L0_0.GetVar
      L1_1 = "SavedRookie"
      L0_0 = L0_0(L1_1)
      if L0_0 == 1 then
        L0_0 = _util
        L0_0 = L0_0.GetVar
        L1_1 = "DugTMTunnel"
        L0_0 = L0_0(L1_1)
        if L0_0 == 0 then
          L0_0 = _util
          L0_0 = L0_0.AddPlayerThought
          L1_1 = _text
          L1_1 = L1_1.C3_SNOW_DOOR2_JPG
          L0_0(L1_1)
        end
      end
    else
      L0_0 = _util
      L0_0 = L0_0.GetVar
      L1_1 = "gotHat"
      L0_0 = L0_0(L1_1)
      if L0_0 == 1 then
        L0_0 = _util
        L0_0 = L0_0.GetVar
        L1_1 = "RescuedPufflesInCage"
        L0_0 = L0_0(L1_1)
        if L0_0 == 1 then
          L0_0 = _util
          L0_0 = L0_0.AddPlayerThought
          L1_1 = _text
          L1_1 = L1_1.C3_TM_JPG_TUNNEL2
          L0_0(L1_1)
        end
      else
        L0_0 = _util
        L0_0 = L0_0.AddPlayerThought
        L1_1 = _text
        L1_1 = L1_1.C3_TM_JPG_TUNNEL
        L0_0(L1_1)
      end
    end
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.ITEM_DROPPED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _id
  L1_1 = L1_1.C3_JackHammer
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("RescuedPufflesInCage")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("SavedRookie")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("DugTMTunnel")
        if L1_1 == 0 then
          function L1_1()
            _util.StartMiniGame(_const.JACKHAMMERIN, 2, 2)
            repeat
              scriptWait()
            until _util.GetGameState() ~= _const.MISSION
            repeat
              scriptWait()
              if _util.GetMinigameOutput1() == 1 and false == false then
                _util.SetVar("DugTMTunnel", 1)
                _util.SetNextRoom(112)
              end
            until _util.GetGameState() == _const.MISSION
            if _util.GetMinigameOutput1() == 1 then
              _util.AddItem(_id.C4_HoleInSnowPile)
            end
          end
          scriptPlay(L1_1)
        else
          L1_1 = _util
          L1_1 = L1_1.ChangeRoom
          L1_1(112)
        end
      end
    else
      L1_1 = _util
      L1_1 = L1_1.AddPlayerThought
      L1_1(_text.C3_TM_JPG_TUNNEL)
    end
  end
end
