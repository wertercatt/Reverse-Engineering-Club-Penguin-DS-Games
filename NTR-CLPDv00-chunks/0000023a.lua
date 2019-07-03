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
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COLLIDED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3216, _const.CHANGE_DIALOG, 1)
    L1_1 = _util
    L1_1 = L1_1.PlaySFX
    L1_1(98)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(3217, "DialogStrings", _const.END_DIALOG, 0)
  elseif L0_0 == 50 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3205, _const.CHANGE_DIALOG, 51)
    L1_1 = _util
    L1_1 = L1_1.PlaySFX
    L1_1(98)
  elseif L0_0 == 51 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(3206, "DialogStrings", _const.END_DIALOG, 0)
  elseif L0_0 == 100 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3201, 3202, -1, _const.CHANGE_NPC, _id.M5C1_Gary_Beacon, 10)
    L1_1 = _util
    L1_1 = L1_1.PlaySFX
    L1_1(98)
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(0)
  elseif L0_0 == 201 then
    function L1_1()
      _util.DisableInput()
      _util.PlaySFX(67)
      _util.SwitchState("fail", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("", _util.GetSelf(), 1)
      _util.EnableInput()
    end
    scriptPlay(L1_1)
  elseif L0_0 == 204 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M5C1_AnvilHit")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.PlaySFX
      L1_1(67)
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(3222, "DialogStrings", _const.END_DIALOG, 0)
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M5C1_AnvilHit")
      if L1_1 == 1 then
        function L1_1()
          _util.DisableInput()
          _util.PlaySFX(55)
          _util.SetSpawn(1, _id.M5C1_Bouncer_Beacon)
          _util.SetSpawn(1, _id.M5C1_SuperRobot_TM1)
          _util.SetSpawn(1, _id.M5C1_Gary_TM1)
          _util.SetVisible(0, _id.M5C1_Gary_TM1)
          _util.SetSpawn(0, _id.M5C1_SuperRobot_Beacon)
          _util.SetSpawn(0, _id.M5C1_Gary_Beacon)
          _util.SetSpawn(0, _id.M5C1_Anvil)
          _util.SetSpawn(0, _id.M5C1_Balloon)
          _util.StartCutscene(_const.M5C1BEACON)
          repeat
            scriptWait()
          until _util.GetGameState() ~= _const.MISSION
          repeat
            scriptWait()
          until _util.GetGameState() == _const.MISSION
          _util.SetCursorPos(_util.GetX(_id.M5C1_Bouncer_Beacon), _util.GetY(_id.M5C1_Bouncer_Beacon))
          _util.EnableInput()
          _util.RemoveMapAlert(_const.M5C1ROBOTBEACON)
        end
        scriptPlay(L1_1)
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
  L1_1 = _util
  L1_1 = L1_1.SetVar
  L1_1("collided", 0)
  L1_1 = _id
  L1_1 = L1_1.Inventory_PuffleRed
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.SetSuccess
    L1_1(_util.GetSelf(), true)
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_PuffleGreen
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.SetSuccess
      L1_1(_util.GetSelf(), true)
    else
      L1_1 = _id
      L1_1 = L1_1.Inventory_PuffleBlack
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L1_1(3220)
      else
        L1_1 = _id
        L1_1 = L1_1.Inventory_PufflePink
        if L0_0 == L1_1 then
          L1_1 = _util
          L1_1 = L1_1.SetSuccess
          L1_1(_util.GetSelf(), true)
        else
          L1_1 = _id
          L1_1 = L1_1.Inventory_MechanoDuster
          if L0_0 == L1_1 then
            L1_1 = _util
            L1_1 = L1_1.AddMonologue
            L1_1(3219)
          end
        end
      end
    end
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.COLLIDED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("collided")
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("collided", 1)
    function L1_1()
      _util.DisableInput()
      if _UPVALUE0_ == _id.Inventory_PuffleRed then
      else
      end
      repeat
        scriptWait()
      until 100 <= 0 + 1
      _util.EnableInput()
      if _UPVALUE0_ == _id.Inventory_PuffleRed or _UPVALUE0_ == _id.Inventory_PufflePink then
        _util.AddDialog(3218, _const.CHANGE_DIALOG, 201)
        _util.PlaySFX(98)
      elseif _UPVALUE0_ == _id.Inventory_PuffleGreen then
        _util.AddDialog(3221, _const.CHANGE_DIALOG, 204)
        _util.PlaySFX(98)
      end
    end
    scriptPlay(L1_1)
  end
end
