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
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("M5C1_GadgetRoomDotIntro")
  if L1_1 == 0 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(2972, 2973, -1, _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(2974, 2975, -1, _const.CHANGE_DIALOG, 2)
    elseif L0_0 == 2 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(2976, 2977, -1, _const.CHANGE_DIALOG, 3)
    elseif L0_0 == 3 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(2978, 2979, -1, _const.CHANGE_DIALOG, 4)
    elseif L0_0 == 4 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(2980, 2981, -1, _const.CHANGE_DIALOG, 5)
    elseif L0_0 == 5 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("M5C1_GadgetRoomDotIntro", 1)
      L1_1 = _util
      L1_1 = L1_1.EnableSpyPodFunc
      L1_1(_const.FLAG_SNOWCAT)
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(2982, _const.END_DIALOG, 0)
    elseif L0_0 == 6 then
      function L1_1()
        local L0_2
        L0_2 = 50
        _util.DisableInput()
        _util.PushCamera()
        _util.MoveObject(_util.GetSelf(), 950, _util.GetY(_util.GetSelf()), L0_2)
        _util.SwitchState("walk", _util.GetSelf())
        repeat
          scriptWait()
        until _util.GetX(_util.GetSelf()) == 950
        _util.SwitchState("", _util.GetSelf())
        _util.PopCamera()
        _util.EnableInput()
      end
      scriptPlay(L1_1)
      _util.SetConversationCount(0)
    end
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(2984)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(2986, 2989, _const.UPDATE_LOOP)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(2987, 2990, _const.UPDATE_LOOP)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(2988, -1, _const.CHANGE_DIALOG, 1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(2991, _const.END_DIALOG, 0)
  end
end
