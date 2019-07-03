local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
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
L4_4 = _const
L4_4 = L4_4.TOUCHED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L4_4 = "M6_HerbIntro"
  L3_3 = L3_3(L4_4)
  if L3_3 == 0 then
    L3_3 = _util
    L3_3 = L3_3.AddMonologue
    L4_4 = _text
    L4_4 = L4_4.M6_WILDERNESS_PETDOOR_TOUCH
    L5_5 = "DialogStrings"
    L6_6 = _const
    L6_6 = L6_6.END_DIALOG
    L7_7 = 0
    L3_3(L4_4, L5_5, L6_6, L7_7)
  else
    L3_3 = _util
    L3_3 = L3_3.ChangeRoom
    L4_4 = 16
    L3_3(L4_4)
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.ITEM_DROPPED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetSource
  L3_3 = L3_3()
  L4_4 = _id
  L4_4 = L4_4.M5_OberryBag
  L4_4 = L3_3 == L4_4
  L5_5 = _util
  L5_5 = L5_5.GetPuffle
  L5_5 = L5_5()
  L6_6 = _id
  L6_6 = L6_6.Inventory_PuffleBlack
  L5_5 = L5_5 == L6_6
  L6_6 = _util
  L6_6 = L6_6.GetPuffle
  L6_6 = L6_6()
  if L5_5 and L4_4 then
    L7_7 = _util
    L7_7 = L7_7.GetVar
    L7_7 = L7_7("M5_havePuffle")
    if L7_7 == 1 then
      L7_7 = _util
      L7_7 = L7_7.GetVar
      L7_7 = L7_7("M6_HerbIntro")
      if L7_7 == 0 then
        function L7_7()
          _util.SetVar("M6_PuffleEnterCave", 1)
          _util.DisableInput()
          if not _util.IsCommandCoachActive() then
            movePuffle(_util.GetPuffleX(), _util.GetPuffleY(), 488, 168, 30, true)
          end
          _util.HidePuffle()
          _util.SwitchState("opening", _util.GetSelf())
          repeat
            scriptWait()
          until not _util.IsAnimPlaying(_util.GetSelf())
          _util.AddItem(_id.M6_OpenDoor2Cave)
          _util.EnableInput(true)
          _util.DelItem(_util.GetSelf())
        end
        scriptPlay(L7_7)
      end
    end
  elseif L4_4 then
    if L5_5 then
      L7_7 = _util
      L7_7 = L7_7.GetVar
      L7_7 = L7_7("M5_havePuffle")
    elseif L7_7 == 0 then
      L7_7 = _util
      L7_7 = L7_7.GetVar
      L7_7 = L7_7("M6_HerbIntro")
      if L7_7 == 0 then
        function L7_7()
          _util.DisableInput()
          _util.ChangeBaseAnim("MissionObjects/QuestionsCrab/state/OutsideCaveDoor2CaveHerbnopuffle", _id.M6_HerbsPetDoor, "opening")
          repeat
            scriptWait()
          until not _util.IsAnimPlaying(_util.GetSelf())
          _util.ChangeBaseAnim("MissionObjects/QuestionsCrab/state/OutsideCaveDoor2CaveHerb", _id.M6_HerbsPetDoor)
          _util.EnableInput(true)
          if _util.GetVar("M5_havePuffle") == 1 then
            if _UPVALUE0_ == _id.Inventory_NoPuffle then
              _util.AddPlayerThought(_text.M3_NOPUFFLE_OBERRYDROP)
            else
              _util.AddPlayerThought(_text.M3_WRONGPUFFLE_OBERRYDROP)
            end
          end
        end
        scriptPlay(L7_7)
      end
    end
  end
end
