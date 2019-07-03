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
  if L0_0 == 300 then
    function L1_1()
      _util.DisplayPopUp(488, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.AddSmileys(100, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      repeat
        scriptWait()
      until 0 + 1 == 40
      _util.EnableSpyPodFunc(_const.FLAG_SNOWCAT)
      _util.ShowMap()
      _util.EndMission()
    end
    scriptPlay(L1_1)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C3_fightJB")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M4C3_deadSB")
      if L1_1 < 3 then
        if L0_0 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddMonologue
          L1_1(2742)
        end
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M4C3_fightJB")
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L1_1(2743, "DialogStrings", _const.CHANGE_NPC, _id.M4C3_JBot_Far, 345)
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M4C3_fightJB")
        if L1_1 == 1 then
          L1_1 = _util
          L1_1 = L1_1.AddMonologue
          L1_1(2743, "DialogStrings", _const.CHANGE_NPC, _id.M4C3_JBot_Close, 345)
        else
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("M4C3_fightJB")
          if L1_1 == 2 then
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L1_1 = L1_1("M4C3_deadJB")
            if L1_1 == 0 then
              L1_1 = _util
              L1_1 = L1_1.AddMonologue
              L1_1(2744)
            end
          else
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L1_1 = L1_1("M4C3_deadJB")
            if L1_1 > 0 then
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L1_1 = L1_1("M4C3_deadSB")
              if L1_1 < 4 then
                L1_1 = _util
                L1_1 = L1_1.AddMonologue
                L1_1(2745)
              end
            end
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
L1_1 = L1_1.ITEM_DROPPED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _id
  L1_1 = L1_1.Inventory_PufflePurple
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C3_deadSB")
    if not (L1_1 < 3) then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M4C3_deadJB")
      if L1_1 > 0 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M4C3_deadSB")
      end
    elseif L1_1 == 3 then
      L1_1 = _util
      L1_1 = L1_1.SetSuccess
      L1_1(_util.GetSelf(), true)
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("M4C3_hit", 0)
    end
  else
    L1_1 = _util
    L1_1 = L1_1.ActivateNpc
    L1_1(_util.GetSelf(), 0)
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
  L1_1 = _id
  L1_1 = L1_1.Inventory_PufflePurple
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C3_hit")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("M4C3_hit", 1)
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M4C3_deadSB")
      if L1_1 < 3 then
        function L1_1()
          _util.DisableInput()
          _util.PlaySFX(84)
          _util.SwitchState("bubble", _id.M4C3_SBot_TM)
          repeat
            scriptWait()
          until not _util.IsAnimPlaying(_id.M4C3_SBot_TM)
          _util.SwitchState("bubbled", _id.M4C3_SBot_TM)
          _util.SetVar("M4C3_deadSB", 3)
          _util.AddItem(_id.M4C3_JBot_Pop)
          _util.SetConversationCount(0)
          _util.EnableInput()
          _util.AddMonologue(2746, "DialogStrings", _const.CHANGE_NPC, _id.M4C3_JBot_Pop, 100)
        end
        scriptPlay(L1_1)
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M4C3_deadSB")
        if L1_1 == 3 then
          function L1_1()
            local L0_2, L1_3, L2_4
            L0_2 = _util
            L0_2 = L0_2.DisableInput
            L0_2()
            L0_2 = _util
            L0_2 = L0_2.PlaySFX
            L1_3 = 84
            L0_2(L1_3)
            L0_2 = _util
            L0_2 = L0_2.SwitchState
            L1_3 = "bubble"
            L2_4 = _id
            L2_4 = L2_4.M4C3_SBot_TM
            L0_2(L1_3, L2_4)
            repeat
              L0_2 = scriptWait
              L0_2()
              L0_2 = _util
              L0_2 = L0_2.IsAnimPlaying
              L1_3 = _id
              L1_3 = L1_3.M4C3_SBot_TM
              L0_2 = L0_2(L1_3)
            until not L0_2
            L0_2 = _util
            L0_2 = L0_2.SwitchState
            L1_3 = "bubbled"
            L2_4 = _id
            L2_4 = L2_4.M4C3_SBot_TM
            L0_2(L1_3, L2_4)
            L0_2 = 30
            L1_3 = 90
            L2_4 = _util
            L2_4 = L2_4.GetY
            L2_4 = L2_4(_id.M4C3_SBot_TM)
            L2_4 = L2_4 - L0_2
            _util.MoveObject(_id.M4C3_SBot_TM, _util.GetX(_id.M4C3_SBot_TM), L2_4, L1_3)
            repeat
              scriptWait()
            until _util.GetY(_id.M4C3_SBot_TM) == L2_4
            _util.SetVar("M4C3_deadSB", 4)
            _util.EnableInput()
            if _util.GetVar("M4C3_deadJB") == 2 then
              _util.AddMapAlert(_const.STORY_MISSION, 564, 295, _const.M5C1MISSIONSTART, 153, 135)
              if _util.IsCommandCoachActive() then
                _util.ActivateNpc(_id.M4C3_SBot_TM, 300)
              else
                _util.ShowMap()
                _util.EndMission()
              end
            end
          end
          scriptPlay(L1_1)
        end
      end
    end
  end
end
