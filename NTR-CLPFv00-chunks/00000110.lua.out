local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
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
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C3_jpgTalked")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(2720, 2721, -1, _const.CHANGE_DIALOG, 1)
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M4C3_jpgTalked")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M4C3_combinedJetPack")
        if L1_1 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L1_1(2724, 2725, -1, _const.CHANGE_DIALOG, 42)
        end
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M4C3_jpgTalked")
        if L1_1 == 1 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("M4C3_combinedJetPack")
          if L1_1 == 1 then
            L1_1 = _util
            L1_1 = L1_1.AddConversation
            L1_1(2726, 2727, -1, _const.CHANGE_DIALOG, 52)
          end
        end
      end
    end
  elseif L0_0 == 42 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4487, _const.END_DIALOG, 0)
  elseif L0_0 == 52 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4489, _const.END_DIALOG, 0)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C3_jpgTalked")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(2722, 2723, -1, _const.CHANGE_DIALOG, 32)
    end
  elseif L0_0 == 32 then
    function L1_1()
      _util.AddDialog(4485, _const.END_DIALOG, 0)
      _util.DisableInput()
      _util.SwitchState("give", _id.M4C3_JPG_WC)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M4C3_JPG_WC)
      _util.SwitchState("", _id.M4C3_JPG_WC)
      _util.AddItem(_id.M4C3_Jetpack)
      _util.SetVar("M4C3_introJPG", 1)
      _util.SetVar("M4C3_jpgTalked", 1)
      _util.EnableInput()
    end
    scriptPlay(L1_1)
  elseif L0_0 == 100 then
    function L1_1()
      local L0_2, L1_3, L2_4
      L0_2 = _util
      L0_2 = L0_2.DisableInput
      L0_2()
      L0_2 = _util
      L0_2 = L0_2.SetConversationCount
      L1_3 = 0
      L0_2(L1_3)
      L0_2 = _util
      L0_2 = L0_2.SwitchState
      L1_3 = "down"
      L2_4 = _util
      L2_4 = L2_4.GetSelf
      L2_4 = L2_4()
      L0_2(L1_3, L2_4, L2_4())
      L0_2 = -130
      L1_3 = 90
      L2_4 = _util
      L2_4 = L2_4.GetY
      L2_4 = L2_4(_util.GetSelf())
      L2_4 = L2_4 - L0_2
      _util.MoveObject(_util.GetSelf(), _util.GetX(_util.GetSelf()), L2_4, L1_3)
      repeat
        scriptWait()
      until _util.GetY(_util.GetSelf()) == L2_4
      _util.SwitchState("", _util.GetSelf())
      _util.SetSpawn(1, _util.GetSelf())
      _util.EnableInput()
      _util.AddConversation(2713, 2714, -1, _const.END_DIALOG, 0)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 200 then
    L1_1 = _util
    L1_1 = L1_1.SetCursorPos
    L1_1(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(2720, 2727, -1, _const.END_DIALOG, 0)
  elseif L0_0 == 300 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(2729, 2730, -1, _const.END_DIALOG, 0)
  end
end
