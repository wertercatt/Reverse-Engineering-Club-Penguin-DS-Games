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
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C1_handlerAwake")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.PushCamera
      L1_1(_util.GetSelf())
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(1267, 1274, -1, _const.CHANGE_DIALOG, 1)
      L1_1 = _util
      L1_1 = L1_1.PlaySFX
      L1_1(155)
      L1_1 = _util
      L1_1 = L1_1.HideMap
      L1_1()
    end
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C1_handlerAwake")
    if L1_1 == 0 then
      function L1_1()
        _util.DisableInput()
        _util.PushCamera(_id.M3C1_BubbleHandlerSleep)
        _util.SetVar("M3C1_handlerAwake", 1)
        _util.SwitchState("wake", _id.M3C1_BubbleHandlerSleep)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M3C1_BubbleHandlerSleep)
        _util.DelItem(_id.M3C1_BubbleHandlerSleep)
        _util.AddItem(_id.M3C1_BubbleHandler)
        _util.PopCamera(_id.M3C1_BubbleHandlerSleep)
        _util.EnableInput()
        _util.ActivateNpc(_id.M3C1_BubbleHandler, 1)
      end
      scriptPlay(L1_1)
    end
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C1_handlerAwake")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(1275, 1276, -1, _const.CHANGE_DIALOG, 2)
    end
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1277, _const.CHANGE_DIALOG, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1278, 1279, -1, _const.CHANGE_DIALOG, 4)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1280, 1281, -1, _const.END_DIALOG, 5)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("M3C1_introHandler", 1)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C1_bubblePopped")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(1282, _const.END_DIALOG, 5)
    end
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C1_bubblePopped")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddLoopingConv
      L1_1(1283)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(1284, 1287, _const.CHANGE_DIALOG, 6)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(1285, 1288, _const.UPDATE_LOOP)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(1286, -1, _const.CHANGE_DIALOG, 55)
    end
  elseif L0_0 == 55 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4388, _const.END_DIALOG, 8)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1287, 1289, -1, _const.CHANGE_DIALOG, 7)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1290, _const.END_DIALOG, 8)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C1_foundLoop")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddLoopingConv
      L1_1(1292)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(1293, 1296, _const.UPDATE_LOOP)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(1294, 1297, _const.UPDATE_LOOP)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(1295, -1, _const.CHANGE_DIALOG, 88)
    end
  elseif L0_0 == 88 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4390, _const.END_DIALOG, 8)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C1_foundLoop")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M3C1_impressedLoop")
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddLoopingConv
        L1_1(1298)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(1299, 1301, _const.END_DIALOG, 8)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(1300, -1, _const.CHANGE_DIALOG, 89)
      end
    end
  elseif L0_0 == 89 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4391, _const.END_DIALOG, 8)
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C1_impressedLoop")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.SetExitLocked
      L1_1(_id.Doors_IceRink2SnowForts, false)
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(1302, 1303, -1, _const.CHANGE_DIALOG, 9)
    end
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1304, 1305, -1, _const.CHANGE_DIALOG, 10)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1306, _const.CHANGE_DIALOG, 11)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1307, 1308, -1, _const.END_DIALOG, 12)
  elseif L0_0 == 12 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C1_tiedJetpack")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddLoopingConv
      L1_1(1309)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(1310, 1312, _const.CHANGE_DIALOG, 13)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(1311, -1, CHANGE_DIALOG, 122)
    end
  elseif L0_0 == 122 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4392, _const.END_DIALOG, 12)
  elseif L0_0 == 13 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1312, _const.END_DIALOG, 12)
  elseif L0_0 == 12 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C1_tiedJetpack")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(1314, 1315, -1, _const.CHANGE_DIALOG, 14)
    end
  elseif L0_0 == 14 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1316, 1317, -1, _const.CHANGE_DIALOG, 15)
  elseif L0_0 == 15 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1318, _const.CHANGE_DIALOG, 16)
  elseif L0_0 == 16 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1319, 1320, -1, _const.CHANGE_DIALOG, 17)
  elseif L0_0 == 17 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1321, _const.END_DIALOG, 18)
    L1_1 = _util
    L1_1 = L1_1.ShowMap
    L1_1()
    L1_1 = _util
    L1_1 = L1_1.SetExitLocked
    L1_1(_id.Doors_Puffle2Dojo, false)
  elseif L0_0 == 18 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C1_tiedJetpack")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M3C1_foundPop")
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddLoopingConv
        L1_1(1322)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(1323, 1326, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(1324, 1327, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(1325, -1, _const.CHANGE_DIALOG, 188)
      end
    end
  elseif L0_0 == 188 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4394, _const.END_DIALOG, 18)
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
  itemID = L0_0
  L0_0 = itemID
  L1_1 = _id
  L1_1 = L1_1.M3C1_BambooInv
  if L0_0 == L1_1 then
    function L0_0()
      _util.DisableInput()
      _util.PlaySFX(8)
      _util.SwitchState("pop", _id.M3C1_BubbleHandler)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M3C1_BubbleHandler)
      _util.DelItem(_id.M3C1_BubbleHandler)
      _util.AddItem(_id.M3C1_PuffleHandler)
      _util.SetVar("M3C1_bubblePopped", 1)
      _util.RemoveInventoryItem(_id.M3C1_BambooInv)
      _util.SetExitLocked(_id.Doors_Puffle2Dojo, false)
      _util.ShowMap()
      _util.EnableInput()
      _util.DisplayPopUp(488, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.AddSmileys(10, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      _util.ActivateNpc(_id.M3C1_PuffleHandler, 5)
      _util.SetObjective(644)
    end
    L1_1 = scriptPlay
    L1_1(L0_0)
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
  L1_1 = print
  L1_1("******comCount is********")
  L1_1 = print
  L1_1(L0_0)
  L1_1 = _util
  L1_1 = L1_1.IsInRoom
  L1_1 = L1_1(_id.M3C1_JetpackHandler, 36)
  if L1_1 then
    L1_1 = _util
    L1_1 = L1_1.AddComText
    L1_1(4499, _const.END_DIALOG, 0)
  else
    L1_1 = _util
    L1_1 = L1_1.IsInRoom
    L1_1 = L1_1(_id.M3C1_PuffleHandler, 36)
    if L1_1 then
      L1_1 = _util
      L1_1 = L1_1.AddComText
      L1_1(4499, _const.END_DIALOG, 0)
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M3C1_foundLoop")
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M3C1_bubblePopped")
        if L1_1 == 1 then
          if L0_0 == 0 then
            L1_1 = _util
            L1_1 = L1_1.AddComText
            L1_1(1328)
            L1_1 = _util
            L1_1 = L1_1.AddComOption
            L1_1(1329, _const.CHANGE_DIALOG, 121)
            L1_1 = _util
            L1_1 = L1_1.AddComOption
            L1_1(1331, _const.END_DIALOG, 0)
          elseif L0_0 == 121 then
            L1_1 = _util
            L1_1 = L1_1.AddComText
            L1_1(1332)
            L1_1 = _util
            L1_1 = L1_1.AddComOption
            L1_1(1331, _const.END_DIALOG, 0)
          end
        end
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M3C1_foundLoop")
        if L1_1 == 1 then
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("M3C1_impressedLoop")
          if L1_1 == 0 then
            if L0_0 == 0 then
              L1_1 = _util
              L1_1 = L1_1.AddComText
              L1_1(1328)
              L1_1 = _util
              L1_1 = L1_1.AddComOption
              L1_1(1330, _const.CHANGE_DIALOG, 212)
              L1_1 = _util
              L1_1 = L1_1.AddComOption
              L1_1(1331, _const.END_DIALOG, 0)
            elseif L0_0 == 212 then
              L1_1 = _util
              L1_1 = L1_1.AddComText
              L1_1(1333)
              L1_1 = _util
              L1_1 = L1_1.AddComOption
              L1_1(1331, _const.END_DIALOG, 0)
            end
          end
        else
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("M3C1_foundLoop")
          if L1_1 == 1 then
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L1_1 = L1_1("M3C1_impressedLoop")
            if L1_1 == 1 then
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L1_1 = L1_1("M3C1_tiedJetpack")
              if L1_1 == 0 then
                if L0_0 == 0 then
                  L1_1 = _util
                  L1_1 = L1_1.AddComText
                  L1_1(1564)
                  L1_1 = _util
                  L1_1 = L1_1.AddComOption
                  L1_1(1565, _const.CHANGE_DIALOG, 1)
                elseif L0_0 == 1 then
                  L1_1 = _util
                  L1_1 = L1_1.SetComCount
                  L1_1(0)
                  L1_1 = _util
                  L1_1 = L1_1.SetVar
                  L1_1("M3C3_IceRink_Warp", 1)
                  L1_1 = _util
                  L1_1 = L1_1.AddComText
                  L1_1(1566)
                  L1_1 = _util
                  L1_1 = L1_1.AddComOption
                  L1_1(1567, _const.CHANGE_ROOM, 36)
                end
              end
            end
          else
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L1_1 = L1_1("M3C1_tiedJetpack")
            if L1_1 == 1 then
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L1_1 = L1_1("M3C1_foundPop")
              if L1_1 == 0 then
                if L0_0 == 0 then
                  L1_1 = _util
                  L1_1 = L1_1.AddComText
                  L1_1(1334)
                  L1_1 = _util
                  L1_1 = L1_1.AddComOption
                  L1_1(1335, _const.CHANGE_DIALOG, 232)
                  L1_1 = _util
                  L1_1 = L1_1.AddComOption
                  L1_1(1337, _const.END_DIALOG, 0)
                elseif L0_0 == 232 then
                  L1_1 = _util
                  L1_1 = L1_1.AddComText
                  L1_1(1338)
                  L1_1 = _util
                  L1_1 = L1_1.AddComOption
                  L1_1(1331, _const.END_DIALOG, 0)
                end
              end
            else
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L1_1 = L1_1("M3C1_foundPop")
              if L1_1 == 1 then
                L1_1 = _util
                L1_1 = L1_1.GetVar
                L1_1 = L1_1("M3C1_impressedPop")
                if L1_1 == 0 then
                  if L0_0 == 0 then
                    L1_1 = _util
                    L1_1 = L1_1.AddComText
                    L1_1(1334)
                    L1_1 = _util
                    L1_1 = L1_1.AddComOption
                    L1_1(1336, _const.CHANGE_DIALOG, 323)
                    L1_1 = _util
                    L1_1 = L1_1.AddComOption
                    L1_1(1337, _const.END_DIALOG, 0)
                  elseif L0_0 == 323 then
                    L1_1 = _util
                    L1_1 = L1_1.AddComText
                    L1_1(1339)
                    L1_1 = _util
                    L1_1 = L1_1.AddComOption
                    L1_1(1331, _const.END_DIALOG, 0)
                  end
                end
              else
                L1_1 = _util
                L1_1 = L1_1.GetVar
                L1_1 = L1_1("M3C1_impressedPop")
                if L1_1 == 1 then
                  L1_1 = _util
                  L1_1 = L1_1.GetVar
                  L1_1 = L1_1("M3C1_touchedCabinet")
                  if L1_1 == 0 then
                    if L0_0 == 0 then
                      L1_1 = _util
                      L1_1 = L1_1.AddComText
                      L1_1(1340)
                      L1_1 = _util
                      L1_1 = L1_1.AddComOption
                      L1_1(1341, _const.CHANGE_DIALOG, 1)
                      L1_1 = _util
                      L1_1 = L1_1.AddComOption
                      L1_1(1344, _const.END_DIALOG, 0)
                    elseif L0_0 == 1 then
                      L1_1 = _util
                      L1_1 = L1_1.AddComText
                      L1_1(1342)
                      L1_1 = _util
                      L1_1 = L1_1.AddComOption
                      L1_1(1343, _const.END_DIALOG, 0)
                    end
                  end
                else
                  L1_1 = _util
                  L1_1 = L1_1.GetVar
                  L1_1 = L1_1("M3C1_touchedCabinet")
                  if L1_1 == 1 then
                    L1_1 = _util
                    L1_1 = L1_1.GetVar
                    L1_1 = L1_1("M3C1_liftedCabinet")
                    if L1_1 == 0 then
                      if L0_0 == 0 then
                        L1_1 = _util
                        L1_1 = L1_1.AddComText
                        L1_1(1345)
                        L1_1 = _util
                        L1_1 = L1_1.AddComOption
                        L1_1(1346, _const.CHANGE_DIALOG, 1)
                      elseif L0_0 == 1 then
                        L1_1 = _util
                        L1_1 = L1_1.AddComText
                        L1_1(1347)
                        L1_1 = _util
                        L1_1 = L1_1.AddComOption
                        L1_1(1349, _const.END_DIALOG, 0)
                      end
                    end
                  else
                    L1_1 = _util
                    L1_1 = L1_1.GetVar
                    L1_1 = L1_1("M3C1_touchedCabinet")
                    if L1_1 == 1 then
                      L1_1 = _util
                      L1_1 = L1_1.GetVar
                      L1_1 = L1_1("M3C1_liftedCabinet")
                      if L1_1 == 1 then
                        L1_1 = _util
                        L1_1 = L1_1.AddComText
                        L1_1(4500)
                        L1_1 = _util
                        L1_1 = L1_1.AddComOption
                        L1_1(4501, _const.END_DIALOG, 0)
                      end
                    else
                      L1_1 = _util
                      L1_1 = L1_1.AddComText
                      L1_1(4497)
                      L1_1 = _util
                      L1_1 = L1_1.AddComOption
                      L1_1(4498, _const.END_DIALOG, 0)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
