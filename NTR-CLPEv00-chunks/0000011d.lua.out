local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L1_1 = "M3C3_WasLockedIn"
  L0_0(L1_1, 0)
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
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C3_chapterIntroComplete")
    if L1_1 ~= 1 then
      if L0_0 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(1838, _const.CHANGE_DIALOG, 1)
      elseif L0_0 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(1839, 1840, -1, _const.CHANGE_DIALOG, 2)
      elseif L0_0 == 2 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(1841, 1842, -1, _const.CHANGE_DIALOG, 3)
      elseif L0_0 == 3 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(1843, _const.CHANGE_DIALOG, 4)
      elseif L0_0 == 4 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(1844, _const.CHANGE_NPC, _id.M3C3_Gary_CR, 100)
      elseif L0_0 == 200 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(1846, _const.CHANGE_NPC, _id.M3C3_Gary_CR, 300)
      elseif L0_0 == 400 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(1848, 1849, -1, _const.CHANGE_DIALOG, 401)
      elseif L0_0 == 401 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(1850, _const.CHANGE_DIALOG, 402)
      elseif L0_0 == 402 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(1851, _const.CHANGE_DIALOG, 403)
      elseif L0_0 == 403 then
        function L1_1()
          _util.DisableInput()
          _util.SwitchState("turnOFF", _id.M3C3_Director)
          repeat
            scriptWait()
          until not _util.IsAnimPlaying(_id.M3C3_Director)
          _util.SwitchState("turnOFF", _id.ScreenOn_CR)
          repeat
            scriptWait()
          until not _util.IsAnimPlaying(_id.ScreenOn_CR)
          _util.DelItem(_id.ScreenOn_CR)
          _util.AddItem(_id.Screen_CR)
          _util.SwitchState("", _id.Screen_CR)
          _util.DelItem(_id.M3C3_Director)
          _util.EnableInput()
          _util.ActivateNpc(_id.M3C3_Gary_CR, 500)
        end
        scriptPlay(L1_1)
      end
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C3_outroCommenced")
    if L1_1 == 1 then
      if L0_0 == 220 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(2055, _const.CHANGE_DIALOG, 221)
      elseif L0_0 == 221 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(2056, 2057, -1, _const.CHANGE_DIALOG, 222)
      elseif L0_0 == 222 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(2058, 2059, -1, _const.CHANGE_DIALOG, 223)
      elseif L0_0 == 223 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(2060, _const.CHANGE_NPC, _id.M3C3_Gary_CR2, 230)
        L1_1 = _util
        L1_1 = L1_1.SetConversationCount
        L1_1(224)
      elseif L0_0 == 240 then
        L1_1 = _util
        L1_1 = L1_1.AddConversation
        L1_1(2062, 2063, -1, _const.CHANGE_DIALOG, 241)
      elseif L0_0 == 241 then
        L1_1 = _util
        L1_1 = L1_1.AddMapAlert
        L1_1(_const.STORY_MISSION, 210, 130, _const.M4C1MISSIONSTART, 70, 70)
        L1_1 = _util
        L1_1 = L1_1.IsCommandCoachActive
        L1_1 = L1_1()
        if L1_1 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(2064, 2065, -1, _const.CHANGE_DIALOG, 533)
        else
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(2064, 2065, -1, _const.END_MISSION)
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
