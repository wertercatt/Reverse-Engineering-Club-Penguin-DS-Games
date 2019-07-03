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
    L1_1 = L1_1("FPMission_Started")
    if L1_1 ~= 0 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(3979, _const.END_DIALOG, 0)
    end
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3980, 3981, -1, _const.CHANGE_DIALOG, 1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3982, 3983, -1, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(3984)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3985, -1, _const.CHANGE_DIALOG, 4)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(3986, -1, _const.CHANGE_DIALOG, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3987, _const.END_DIALOG, 0)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("FPMission_Started", 11)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("FPM11_GiftsCompleted", 0)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("FPM11_GiftsTaken", 0)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("SM01_Gift1", 0)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("SM01_Gift2", 0)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("SM01_Gift3", 0)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("SM01_Gift4", 0)
    L1_1 = _util
    L1_1 = L1_1.SetSpawn
    L1_1(1, _id.FPM11_BlazerX)
    L1_1 = _util
    L1_1 = L1_1.SetSpawn
    L1_1(1, _id.FPM11_SickNPC)
    L1_1 = _util
    L1_1 = L1_1.SetSpawn
    L1_1(0, _id.FP_SnowboardPenguin)
    L1_1 = _util
    L1_1 = L1_1.SetSpawn
    L1_1(1, _id.FPM11_GuitarGuy)
    L1_1 = _util
    L1_1 = L1_1.SetSpawn
    L1_1(1, _id.FPM11_Agent)
    L1_1 = _util
    L1_1 = L1_1.AddItem
    L1_1(_id.FPM11_Pogo)
    L1_1 = _util
    L1_1 = L1_1.AddItem
    L1_1(_id.FPM11_TV)
    L1_1 = _util
    L1_1 = L1_1.AddItem
    L1_1(_id.FPM11_Guitar)
    L1_1 = _util
    L1_1 = L1_1.AddItem
    L1_1(_id.FPM11_SnowBoard)
    L1_1 = _util
    L1_1 = L1_1.ActivateNpc
    L1_1(_util.GetSelf(), 5)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3990, 3991, -1, _const.CHANGE_DIALOG, 6)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3992, 3993, -1, _const.CHANGE_DIALOG, 7)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(3994, 3995, -1, _const.CHANGE_DIALOG, 8)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(3996, _const.END_DIALOG, 9)
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPM11_GiftsCompleted")
    if L1_1 >= 4 then
      function L1_1()
        _util.DisplayPopUp(493, "UI/Smilie", false)
        repeat
          scriptWait()
        until _util.IsPopUpVisible() == false
        _util.AddConversation(4010, 4011, -1, _const.CHANGE_DIALOG, 11)
      end
      scriptPlay(L1_1)
    end
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPM11_GiftsTaken")
    if L1_1 < 4 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(4001, 4002, -1, _const.END_DIALOG, 9)
    end
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(4003)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(4004, 4007, _const.UPDATE_LOOP)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(4005, 4008, _const.UPDATE_LOOP)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(4006, -1, _const.CHANGE_DIALOG, 10)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4009, _const.END_DIALOG, 9)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(4012, 4013, -1, _const.CHANGE_DIALOG, 12)
  elseif L0_0 == 12 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(4014, 4015, -1, _const.CHANGE_DIALOG, 13)
  elseif L0_0 == 13 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4016, _const.CHANGE_DIALOG, 14)
  elseif L0_0 == 14 then
    function L1_1()
      _util.SetVar("SNM04_missionComplete", 1)
      _util.SetVar("FPMission_Started", 0)
      _util.SetSpawn(0, _id.FPM11_BlazerXHappy)
      _util.SetSpawn(0, _id.FPM11_SickNPC)
      _util.SetSpawn(1, _id.FP_SnowboardPenguin)
      _util.SetSpawn(0, _id.FPM11_GuitarGuy)
      _util.SetSpawn(0, _id.FPM11_Agent)
      _util.SetConversationCount(0)
      _util.AddCoins(50)
      _util.DisplayPopUp(494, "UI/coin", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.PopCamera()
    end
    scriptPlay(L1_1)
  elseif L0_0 == 15 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4018, _const.END_DIALOG, 15)
  end
end
