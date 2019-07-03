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
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("M3C3_outroCommenced")
  if L1_1 == 0 then
    if L0_0 == 100 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(1845, _const.CHANGE_NPC, _id.M3C3_Director, 200)
    elseif L0_0 == 300 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(1847, _const.CHANGE_NPC, _id.M3C3_Director, 400)
      L1_1 = _util
      L1_1 = L1_1.SetConversationCount
      L1_1(0)
    elseif L0_0 == 500 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(1852, _const.CHANGE_DIALOG, 501)
    elseif L0_0 == 501 then
      function L1_1()
        local L0_2, L1_3, L2_4
        L0_2 = _util
        L0_2 = L0_2.DisableInput
        L0_2()
        L0_2 = 600
        L1_3 = _util
        L1_3 = L1_3.GetY
        L2_4 = _id
        L2_4 = L2_4.M3C3_Gary_CR
        L1_3 = L1_3(L2_4)
        L2_4 = 120
        _util.PopCamera()
        _util.SetCursorPos(_util.GetX(_id.Screen_CR), _util.GetY(_id.Screen_CR), 1)
        _util.SwitchState("walkRight", _id.M3C3_Gary_CR)
        _util.MoveObject(_id.M3C3_Gary_CR, L0_2, L1_3, L2_4)
        repeat
          print(_util.GetX(_id.M3C3_Gary_CR))
          scriptWait()
        until _util.GetX(_id.M3C3_Gary_CR) == L0_2
        _util.SetVar("M3C3_chapterIntroComplete", 1)
        _util.SetSpawn(0, _id.M3C3_Director)
        _util.SetSpawn(0, _id.M3C3_Gary_CR)
        _util.ShowMap()
        _util.EnableInput()
        _util.EnableDpadScrolling()
        _util.DelItem(_id.M3C3_Gary_CR)
      end
      scriptPlay(L1_1)
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M3C3_chapterIntroComplete")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(1852, _const.END_DIALOG, 0)
      end
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C3_outroCommenced")
    if L1_1 == 1 then
      if L0_0 == 230 then
        L1_1 = _util
        L1_1 = L1_1.AddMapAlert
        L1_1(_const.STORY_MISSION, 210, 130, _const.M4C3MISSIONSTART, 70, 70)
        L1_1 = _util
        L1_1 = L1_1.IsCommandCoachActive
        L1_1 = L1_1()
        if L1_1 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(2061, _const.CHANGE_DIALOG, 533)
        else
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(2061, _const.END_MISSION)
        end
      elseif L0_0 == 533 then
        function L1_1()
          _util.DisplayPopUp(626, "UI/Smilie", false)
          repeat
            scriptWait()
          until _util.IsPopUpVisible() == false
          _util.AddSmileys(100, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
          repeat
            scriptWait()
          until 0 + 1 == 40
          _util.EndMission()
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
L1_1 = L1_1.COMMUNICATOR
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetComCount
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("M3C3_garysRoomIntroComplete")
  if L1_1 == 1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C3_haveCocoaMachine")
    if L1_1 == 0 then
      if L0_0 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddComText
        L1_1(1869)
        L1_1 = _util
        L1_1 = L1_1.AddComOption
        L1_1(1870, _const.END_DIALOG, 0)
      end
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C3_haveCocoaMachine")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M3C3_gadgetRoomIntroComplete")
      if L1_1 == 0 then
        if L0_0 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddComText
          L1_1(1871)
          L1_1 = _util
          L1_1 = L1_1.AddComOption
          L1_1(1872, _const.END_DIALOG, 0)
        end
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M3C3_wildernessIntroComplete")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M3C3_FoundClues")
        if L1_1 == 0 then
          if L0_0 == 0 then
            L1_1 = _util
            L1_1 = L1_1.AddComText
            L1_1(1873)
            L1_1 = _util
            L1_1 = L1_1.AddComOption
            L1_1(1874, _const.END_DIALOG, 0)
          end
        end
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M3C3_FoundClues")
        if L1_1 == 1 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("M3C3_WasLockedIn")
          if L1_1 == 0 then
            if L0_0 == 0 then
              L1_1 = _util
              L1_1 = L1_1.AddComText
              L1_1(1875)
              L1_1 = _util
              L1_1 = L1_1.AddComOption
              L1_1(1876, _const.CHANGE_DIALOG, 40)
              L1_1 = _util
              L1_1 = L1_1.AddComOption
              L1_1(1877, _const.END_DIALOG, 0)
            elseif L0_0 == 40 then
              L1_1 = _util
              L1_1 = L1_1.AddComText
              L1_1(1878, _const.END_DIALOG, 0)
            end
          end
        else
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("M3C3_WasLockedIn")
          if L1_1 == 1 then
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L1_1 = L1_1("M3C3_talkedToCatOnce")
            if L1_1 == 0 then
              if L0_0 == 0 then
                L1_1 = _util
                L1_1 = L1_1.AddComText
                L1_1(1879)
                L1_1 = _util
                L1_1 = L1_1.AddComOption
                L1_1(1880, _const.CHANGE_DIALOG, 50)
              elseif L0_0 == 50 then
                L1_1 = _util
                L1_1 = L1_1.AddComText
                L1_1(1881)
                L1_1 = _util
                L1_1 = L1_1.AddComOption
                L1_1(1882, _const.CHANGE_DIALOG, 51)
              elseif L0_0 == 51 then
                L1_1 = _util
                L1_1 = L1_1.AddComText
                L1_1(1883)
                L1_1 = _util
                L1_1 = L1_1.AddComOption
                L1_1(1884, _const.END_DIALOG, 0)
              end
            end
          else
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L1_1 = L1_1("M3C3_talkedToCatOnce")
            if L1_1 == 1 then
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L1_1 = L1_1("M3C3_Arrived2Mine")
              if L1_1 == 0 then
                if L0_0 == 0 then
                  L1_1 = _util
                  L1_1 = L1_1.AddComText
                  L1_1(1885)
                  L1_1 = _util
                  L1_1 = L1_1.AddComOption
                  L1_1(1886, _const.CHANGE_DIALOG, 60)
                elseif L0_0 == 60 then
                  L1_1 = _util
                  L1_1 = L1_1.AddComText
                  L1_1(1887)
                  L1_1 = _util
                  L1_1 = L1_1.AddComOption
                  L1_1(1888, _const.CHANGE_DIALOG, 61)
                elseif L0_0 == 61 then
                  L1_1 = _util
                  L1_1 = L1_1.AddComText
                  L1_1(1889)
                  L1_1 = _util
                  L1_1 = L1_1.AddComOption
                  L1_1(1890, _const.END_DIALOG, 0)
                end
              end
            else
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L1_1 = L1_1("M3C3_Arrived2Mine")
              if L1_1 == 1 then
                L1_1 = _util
                L1_1 = L1_1.GetVar
                L1_1 = L1_1("M3C3_outroCommenced")
                if L1_1 == 0 then
                  if L0_0 == 0 then
                    L1_1 = _util
                    L1_1 = L1_1.AddComText
                    L1_1(1891)
                    L1_1 = _util
                    L1_1 = L1_1.AddComOption
                    L1_1(1892, _const.CHANGE_DIALOG, 70)
                  elseif L0_0 == 70 then
                    L1_1 = _util
                    L1_1 = L1_1.AddComText
                    L1_1(1893)
                    L1_1 = _util
                    L1_1 = L1_1.AddComOption
                    L1_1(1894, _const.END_DIALOG, 0)
                  end
                end
              else
                L1_1 = _util
                L1_1 = L1_1.GetVar
                L1_1 = L1_1("M3C3_Arrived2Mine")
                if L1_1 == 1 then
                  L1_1 = _util
                  L1_1 = L1_1.GetVar
                  L1_1 = L1_1("M3C3_outroCommenced")
                  if L1_1 == 1 then
                    if L0_0 == 0 then
                      L1_1 = _util
                      L1_1 = L1_1.AddComText
                      L1_1(2079)
                      L1_1 = _util
                      L1_1 = L1_1.AddComOption
                      L1_1(2080, _const.CHANGE_DIALOG, 80)
                    elseif L0_0 == 80 then
                      L1_1 = _util
                      L1_1 = L1_1.AddComText
                      L1_1(2081, _const.END_DIALOG, 0)
                    end
                  end
                else
                  L1_1 = _util
                  L1_1 = L1_1.AddComText
                  L1_1(4650)
                end
              end
            end
          end
        end
      end
    end
  end
end
