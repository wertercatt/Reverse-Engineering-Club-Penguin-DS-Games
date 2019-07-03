local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
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
if L3_3 == _const.TOUCHED then
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L3_3 = L3_3("cupPlaced")
  if L3_3 == 0 then
    L3_3 = _util
    L3_3 = L3_3.AddMonologue
    L3_3(_text.M5_COFFEESHOP_CHOCOBUTTON_NOCUP, "DialogStrings", _const.END_DIALOG, 0)
  else
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("hotOn")
    if L3_3 == 0 then
      L3_3 = _util
      L3_3 = L3_3.AddMonologue
      L3_3(_text.M5_COFFEESHOP_CHOCOBUTTON_NOHOT, "DialogStrings", _const.END_DIALOG, 0)
    else
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("chocolateFilled")
      if L3_3 == 0 then
        L3_3 = _util
        L3_3 = L3_3.AddMonologue
        L3_3(_text.M5_COFFEESHOP_CHOCOBUTTON_NOCHOCO, "DialogStrings", _const.END_DIALOG, 0)
      else
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L3_3 = L3_3("milkFixed")
        if L3_3 == 0 then
          L3_3 = _util
          L3_3 = L3_3.AddMonologue
          L3_3(_text.M5_COFFEESHOP_CHOCOBUTTON_NOMILK, "DialogStrings", _const.END_DIALOG, 0)
        else
          L3_3 = _util
          L3_3 = L3_3.GetVar
          L3_3 = L3_3("M5_cupFilled")
          if L3_3 == 0 then
            function L3_3()
              _util.DisableInput()
              _util.CloseInventory()
              _util.SetVar("M5_cupFilled", 1)
              _util.SwitchState("fill", _id.M5_CocoaCup)
              _util.PlaySFX(197)
              repeat
                scriptWait()
              until not _util.IsAnimPlaying(_id.M5_CocoaCup)
              _util.EnableInput()
              _util.DelItem(_id.M5_CocoaCup)
              _util.DelItem(62493)
              _util.SetSpawn(0, _id.M5_CocoaCup)
              _util.SetSpawn(0, 62493)
              _util.AddItem(_id.M5_HotChocolate)
            end
            scriptPlay(L3_3)
          end
        end
      end
    end
  end
end
