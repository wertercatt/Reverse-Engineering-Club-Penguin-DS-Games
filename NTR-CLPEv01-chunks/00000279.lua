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
  L1_1 = L1_1.TOUCHED
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
  if L0_0 == 100 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C3_WasLockedIn")
    if L1_1 == 0 then
      function L1_1()
        _util.DisableInput()
        _util.SwitchState("boulder", _util.GetSelf())
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_util.GetSelf())
        _util.DelItem(_id.M3C3_FGRock)
        _util.AddItem(_id.M3C3_Logs)
        _util.AddItem(_id.M3C3_Boulder)
        _util.SetSpawn(1, _id.M3C3_Logs)
        _util.SetSpawn(1, _id.M3C3_Boulder)
        _util.SetSpawn(1, _id.M3C3_Cocoa_2)
        _util.SetSpawn(1, _id.M3C3_Cocoa_3)
        _util.SetSpawn(1, _id.M3C3_Cocoa_4)
        _util.SetSpawn(1, _id.M3C3_Cocoa_5)
        _util.SetSpawn(1, _id.M3C3_Cocoa_6)
        _util.SetSpawn(1, _id.M3C3_Cocoa_7)
        _util.SetSpawn(1, _id.M3C3_SnowCat2)
        _util.SetSpawn(1, _id.M3C3_Miner)
        _util.SetSpawn(1, _id.M3C3_SnowCat3)
        _util.SetSpawn(1, _id.M3C3_Cocoa_1)
        _util.SetSpawn(1, _id.M3C3_SnowStash)
        _util.SetSpawn(0, _id.M3C3_SnowCat)
        _util.SetVar("M3C3_WasLockedIn", 1)
        _util.ScreenShake(60)
        _util.PlaySFX(114)
        _util.DelItem(_id.M3C3_RobotShadow)
        repeat
          scriptWait()
        until 1 <= 0 + 1
        _util.AddItem(_id.M3C3_FGRock)
        repeat
          scriptWait()
        until 0 + 1 + 1 >= 90
        _util.EnableInput()
        _util.AddMonologue(1954, "DialogStrings", _const.CHANGE_DIALOG, 101)
      end
      scriptPlay(L1_1)
    end
  elseif L0_0 == 101 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(1955, "DialogStrings", _const.CHANGE_DIALOG, 102)
  elseif L0_0 == 102 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(1956, "DialogStrings", _const.END_DIALOG, 0)
  end
end
