local L0_0, L1_1, L2_2, L3_3
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
  L2_2 = "M2C3_garyIntro"
  L1_1 = L1_1(L2_2)
  if L1_1 == 0 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L2_2 = 1191
      L3_3 = "DialogStrings"
      L1_1(L2_2, L3_3, _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L2_2 = 1192
      L3_3 = 1193
      L1_1(L2_2, L3_3, -1, _const.CHANGE_DIALOG, 2)
    elseif L0_0 == 2 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L2_2 = 1194
      L3_3 = 1195
      L1_1(L2_2, L3_3, -1, _const.CHANGE_DIALOG, 3)
    elseif L0_0 == 3 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L2_2 = 1196
      L3_3 = 1197
      L1_1(L2_2, L3_3, -1, _const.CHANGE_DIALOG, 4)
    elseif L0_0 == 4 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L2_2 = 1198
      L3_3 = 1199
      L1_1(L2_2, L3_3, -1, _const.END_DIALOG, 0)
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L2_2 = "M2C3_garyIntro"
      L3_3 = 1
      L1_1(L2_2, L3_3)
    end
  elseif L0_0 == 90 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L2_2 = 1226
    L3_3 = 1227
    L1_1(L2_2, L3_3, -1, _const.CHANGE_DIALOG, 99)
  elseif L0_0 == 99 then
    function L1_1()
      local L0_4, L1_5, L2_6
      L0_4 = _util
      L0_4 = L0_4.DisableInput
      L0_4()
      L0_4 = 180
      L1_5 = 90
      L2_6 = _util
      L2_6 = L2_6.GetY
      L2_6 = L2_6(_util.GetSelf())
      L2_6 = L2_6 - L0_4
      _util.MoveObject(_util.GetSelf(), _util.GetX(_util.GetSelf()), L2_6, L1_5, 1)
      _util.MoveObject(_id.M2C3_BalloonsFilled, _util.GetX(_id.M2C3_BalloonsFilled), _util.GetY(_id.M2C3_BalloonsFilled) - L0_4, L1_5, 1)
      _util.AddItem(_id.M2C3_GarySit_MCS)
      _util.AddItem(_id.Inventory_Flashlight)
      repeat
        scriptWait()
      until _util.GetY(_util.GetSelf()) == L2_6
      _util.SwitchState("standUp", _id.M2C3_GarySit_MCS)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M2C3_GarySit_MCS)
      _util.AddItem(_id.M2C3_GaryBump_MCS)
      _util.DelItem(_id.M2C3_GarySit_MCS)
      _util.EnableInput()
      _util.DisplayPopUp(626, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.AddSmileys(10, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      _util.ActivateNpc(_id.M2C3_GaryBump_MCS, 100)
    end
    L2_2 = scriptPlay
    L3_3 = L1_1
    L2_2(L3_3)
    L2_2 = _util
    L2_2 = L2_2.SetObjective
    L3_3 = 800
    L2_2(L3_3)
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "emptyBalloons"
    L1_1 = L1_1(L2_2)
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "ropeCart"
      L1_1 = L1_1(L2_2)
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddLoopingConv
        L2_2 = 1200
        L1_1(L2_2)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L2_2 = 1201
        L3_3 = 1204
        L1_1(L2_2, L3_3, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L2_2 = 1202
        L3_3 = 1205
        L1_1(L2_2, L3_3, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L2_2 = 1203
        L3_3 = -1
        L1_1(L2_2, L3_3, _const.CHANGE_DIALOG, 10)
      end
    end
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "emptyBalloons"
    L1_1 = L1_1(L2_2)
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "ropeCart"
      L1_1 = L1_1(L2_2)
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L2_2 = 4691
        L3_3 = _const
        L3_3 = L3_3.END_DIALOG
        L1_1(L2_2, L3_3, 0)
      end
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "inflated"
    L1_1 = L1_1(L2_2)
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "ropeCart"
      L1_1 = L1_1(L2_2)
      if L1_1 == 0 then
        if L0_0 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L2_2 = 1213
          L3_3 = 1214
          L1_1(L2_2, L3_3, -1, _const.CHANGE_DIALOG, 1)
        elseif L0_0 == 1 then
          L1_1 = _util
          L1_1 = L1_1.AddConversation
          L2_2 = 1215
          L3_3 = 1216
          L1_1(L2_2, L3_3, -1, _const.END_DIALOG, 0)
        end
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "emptyBalloons"
      L1_1 = L1_1(L2_2)
      if L1_1 > 0 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L2_2 = "fullBalloons"
        L1_1 = L1_1(L2_2)
        if L1_1 == 0 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L2_2 = "ropeCart"
          L1_1 = L1_1(L2_2)
          if L1_1 ~= 2 then
            if L0_0 == 0 then
              L1_1 = _util
              L1_1 = L1_1.AddConversation
              L2_2 = 1206
              L3_3 = 1207
              L1_1(L2_2, L3_3, -1, _const.CHANGE_DIALOG, 1)
            elseif L0_0 == 1 then
              L1_1 = _util
              L1_1 = L1_1.AddConversation
              L2_2 = 1208
              L3_3 = 1209
              L1_1(L2_2, L3_3, -1, _const.CHANGE_DIALOG, 2)
            elseif L0_0 == 2 then
              L1_1 = _util
              L1_1 = L1_1.AddDialog
              L2_2 = 1210
              L3_3 = _const
              L3_3 = L3_3.CHANGE_DIALOG
              L1_1(L2_2, L3_3, 3)
            elseif L0_0 == 3 then
              L1_1 = _util
              L1_1 = L1_1.AddConversation
              L2_2 = 1211
              L3_3 = 1212
              L1_1(L2_2, L3_3, -1, _const.END_DIALOG, 0)
            end
          end
        end
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L2_2 = "ropeCart"
        L1_1 = L1_1(L2_2)
        if L1_1 == 2 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L2_2 = "fullBalloons"
          L1_1 = L1_1(L2_2)
          if L1_1 == 0 then
            if L0_0 == 0 then
              L1_1 = _util
              L1_1 = L1_1.AddConversation
              L2_2 = 1217
              L3_3 = 1218
              L1_1(L2_2, L3_3, -1, _const.CHANGE_DIALOG, 1)
            elseif L0_0 == 1 then
              L1_1 = _util
              L1_1 = L1_1.AddConversation
              L2_2 = 1219
              L3_3 = 1220
              L1_1(L2_2, L3_3, -1, _const.END_DIALOG, 0)
              L1_1 = _util
              L1_1 = L1_1.SetVar
              L2_2 = "ropeCart"
              L3_3 = 1
              L1_1(L2_2, L3_3)
            end
          end
        else
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L2_2 = "fullBalloons"
          L1_1 = L1_1(L2_2)
          if L1_1 == 1 then
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L2_2 = "ropeCart"
            L1_1 = L1_1(L2_2)
            if L1_1 == 1 then
              if L0_0 == 0 then
                L1_1 = _util
                L1_1 = L1_1.AddDialog
                L2_2 = 1221
                L3_3 = _const
                L3_3 = L3_3.END_DIALOG
                L1_1(L2_2, L3_3, 0)
              end
            end
          else
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L2_2 = "fullBalloons"
            L1_1 = L1_1(L2_2)
            if L1_1 == 2 then
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L2_2 = "ropeCart"
              L1_1 = L1_1(L2_2)
              if L1_1 == 1 and L0_0 == 0 then
                L1_1 = _util
                L1_1 = L1_1.AddDialog
                L2_2 = 1222
                L3_3 = _const
                L3_3 = L3_3.END_DIALOG
                L1_1(L2_2, L3_3, 0)
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
  L1_1 = _util
  L1_1 = L1_1.GetSelf
  L1_1 = L1_1()
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L3_3 = "M2C3_garyIntro"
  L2_2 = L2_2(L3_3)
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.ActivateNpc
    L3_3 = L1_1
    L2_2(L3_3, 0)
  else
    L2_2 = _id
    L2_2 = L2_2.Inventory_FullBalloon
    if L0_0 == L2_2 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L3_3 = "ropeCart"
      L2_2 = L2_2(L3_3)
      if L2_2 == 1 then
        L2_2 = _util
        L2_2 = L2_2.RemoveInventoryItem
        L3_3 = _id
        L3_3 = L3_3.Inventory_FullBalloon
        L2_2(L3_3)
        L2_2 = _util
        L2_2 = L2_2.SetVar
        L3_3 = "inflated"
        L2_2(L3_3, 0)
        L2_2 = _util
        L2_2 = L2_2.SetVar
        L3_3 = "fullBalloons"
        L2_2(L3_3, _util.GetVar("fullBalloons") + 1)
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L3_3 = "fullBalloons"
        L2_2 = L2_2(L3_3)
        if L2_2 == 1 then
          function L3_3()
            _util.DelItem(_id.M2C3_RopeAttached)
            _util.AddItem(_id.M2C3_BalloonsFilled)
            _util.SwitchState("balloonsA", _id.M2C3_BalloonsFilled)
            _util.ActivateNpc(_util.GetSelf(), 0)
          end
          scriptPlay(L3_3)
        elseif L2_2 == 2 then
          function L3_3()
            _util.SwitchState("balloonsA2balloonsB", _id.M2C3_BalloonsFilled)
            repeat
              scriptWait()
            until not _util.IsAnimPlaying(_id.M2C3_BalloonsFilled)
            _util.SwitchState("balloonsB", _id.M2C3_BalloonsFilled)
            _util.ActivateNpc(_util.GetSelf(), 0)
          end
          scriptPlay(L3_3)
        elseif L2_2 == 3 then
          function L3_3()
            _util.SwitchState("balloonsB2balloonsC", _id.M2C3_BalloonsFilled)
            repeat
              scriptWait()
            until not _util.IsAnimPlaying(_id.M2C3_BalloonsFilled)
            _util.SwitchState("balloonsC", _id.M2C3_BalloonsFilled)
            _util.ActivateNpc(_util.GetSelf(), 90)
          end
          scriptPlay(L3_3)
        end
      end
    else
      L2_2 = _id
      L2_2 = L2_2.Inventory_FullBalloon
      if L0_0 == L2_2 then
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L3_3 = "ropeCart"
        L2_2 = L2_2(L3_3)
        if L2_2 == 0 then
          L2_2 = _util
          L2_2 = L2_2.ActivateNpc
          L3_3 = _util
          L3_3 = L3_3.GetSelf
          L3_3 = L3_3()
          L2_2(L3_3, 0)
        end
      else
        L2_2 = _id
        L2_2 = L2_2.Inventory_Balloon1
        if L0_0 ~= L2_2 then
          L2_2 = _util
          L2_2 = L2_2.GetSource
          L2_2 = L2_2()
          L3_3 = _id
          L3_3 = L3_3.Inventory_Balloon2
          if L2_2 ~= L3_3 then
            L2_2 = _util
            L2_2 = L2_2.GetSource
            L2_2 = L2_2()
            L3_3 = _id
            L3_3 = L3_3.Inventory_Balloon3
          end
        else
          if L2_2 == L3_3 then
            L2_2 = _util
            L2_2 = L2_2.ActivateNpc
            L3_3 = _util
            L3_3 = L3_3.GetSelf
            L3_3 = L3_3()
            L2_2(L3_3, 0)
        end
        else
          L2_2 = _id
          L2_2 = L2_2.Inventory_CartRope
          if L0_0 == L2_2 then
            function L2_2()
              _util.RemoveInventoryItem(_id.Inventory_CartRope)
              _util.AddItem(_id.M2C3_RopeAttached)
              _util.SetVar("ropeCart", 2)
              _util.ActivateNpc(_util.GetSelf(), 0)
            end
            L3_3 = scriptPlay
            L3_3(L2_2)
          else
            L2_2 = _id
            L2_2 = L2_2.Inventory_PuffleBlue
            if L0_0 == L2_2 then
              L2_2 = _util
              L2_2 = L2_2.AddMonologue
              L3_3 = 1225
              L2_2(L3_3)
            else
              L2_2 = _id
              L2_2 = L2_2.Inventory_PuffleRed
              if L0_0 == L2_2 then
                L2_2 = _util
                L2_2 = L2_2.AddMonologue
                L3_3 = 1223
                L2_2(L3_3)
              else
                L2_2 = _id
                L2_2 = L2_2.Inventory_PuffleBlack
                if L0_0 == L2_2 then
                  L2_2 = _util
                  L2_2 = L2_2.AddMonologue
                  L3_3 = 1224
                  L2_2(L3_3)
                end
              end
            end
          end
        end
      end
    end
  end
end
