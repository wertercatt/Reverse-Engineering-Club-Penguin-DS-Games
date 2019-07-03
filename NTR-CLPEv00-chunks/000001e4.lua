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
      L1_1(1297, 1304, -1, _const.CHANGE_DIALOG, 1)
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
      L1_1(1305, 1306, -1, _const.CHANGE_DIALOG, 2)
    end
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1307, _const.CHANGE_DIALOG, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1308, 1309, -1, _const.CHANGE_DIALOG, 4)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1310, 1311, -1, _const.END_DIALOG, 5)
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
      L1_1(1312, _const.END_DIALOG, 5)
    end
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C1_bubblePopped")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddLoopingConv
      L1_1(1313)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(1314, 1317, _const.CHANGE_DIALOG, 6)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(1315, 1318, _const.UPDATE_LOOP)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(1316, -1, _const.CHANGE_DIALOG, 55)
    end
  elseif L0_0 == 55 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4696, _const.END_DIALOG, 8)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1317, 1319, -1, _const.CHANGE_DIALOG, 7)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1320, _const.END_DIALOG, 8)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C1_foundLoop")
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
      L1_1(1325, -1, _const.CHANGE_DIALOG, 88)
    end
  elseif L0_0 == 88 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4698, _const.END_DIALOG, 8)
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
        L1_1(1328)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(1329, 1331, _const.END_DIALOG, 8)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(1330, -1, _const.CHANGE_DIALOG, 89)
      end
    end
  elseif L0_0 == 89 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4699, _const.END_DIALOG, 8)
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
      L1_1(1332, 1333, -1, _const.CHANGE_DIALOG, 9)
    end
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1334, 1335, -1, _const.CHANGE_DIALOG, 10)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1336, _const.CHANGE_DIALOG, 11)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1337, 1338, -1, _const.END_DIALOG, 12)
  elseif L0_0 == 12 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C1_tiedJetpack")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddLoopingConv
      L1_1(1339)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(1340, 1342, _const.CHANGE_DIALOG, 13)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(1341, -1, CHANGE_DIALOG, 122)
    end
  elseif L0_0 == 122 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4700, _const.END_DIALOG, 12)
  elseif L0_0 == 13 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1342, _const.END_DIALOG, 12)
  elseif L0_0 == 12 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C1_tiedJetpack")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(1344, 1345, -1, _const.CHANGE_DIALOG, 14)
    end
  elseif L0_0 == 14 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1346, 1347, -1, _const.CHANGE_DIALOG, 15)
  elseif L0_0 == 15 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1348, _const.CHANGE_DIALOG, 16)
  elseif L0_0 == 16 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(1349, 1350, -1, _const.CHANGE_DIALOG, 17)
  elseif L0_0 == 17 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1351, _const.END_DIALOG, 18)
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
        L1_1(1352)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(1353, 1356, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(1354, 1357, _const.UPDATE_LOOP)
        L1_1 = _util
        L1_1 = L1_1.AddLoopingOption
        L1_1(1355, -1, _const.CHANGE_DIALOG, 188)
      end
    end
  elseif L0_0 == 188 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4702, _const.END_DIALOG, 18)
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
      _util.DisplayPopUp(626, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.AddSmileys(10, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      _util.ActivateNpc(_id.M3C1_PuffleHandler, 5)
      _util.SetObjective(801)
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
    L1_1(4807, _const.END_DIALOG, 0)
  else
    L1_1 = _util
    L1_1 = L1_1.IsInRoom
    L1_1 = L1_1(_id.M3C1_PuffleHandler, 36)
    if L1_1 then
      L1_1 = _util
      L1_1 = L1_1.AddComText
      L1_1(4807, _const.END_DIALOG, 0)
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
            L1_1(1358)
            L1_1 = _util
            L1_1 = L1_1.AddComOption
            L1_1(1359, _const.CHANGE_DIALOG, 121)
            L1_1 = _util
            L1_1 = L1_1.AddComOption
            L1_1(1361, _const.END_DIALOG, 0)
          elseif L0_0 == 121 then
            L1_1 = _util
            L1_1 = L1_1.AddComText
            L1_1(1362)
            L1_1 = _util
            L1_1 = L1_1.AddComOption
            L1_1(1361, _const.END_DIALOG, 0)
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
              L1_1(1358)
              L1_1 = _util
              L1_1 = L1_1.AddComOption
              L1_1(1360, _const.CHANGE_DIALOG, 212)
              L1_1 = _util
              L1_1 = L1_1.AddComOption
              L1_1(1361, _const.END_DIALOG, 0)
            elseif L0_0 == 212 then
              L1_1 = _util
              L1_1 = L1_1.AddComText
              L1_1(1363)
              L1_1 = _util
              L1_1 = L1_1.AddComOption
              L1_1(1361, _const.END_DIALOG, 0)
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
                  L1_1(1594)
                  L1_1 = _util
                  L1_1 = L1_1.AddComOption
                  L1_1(1595, _const.CHANGE_DIALOG, 1)
                elseif L0_0 == 1 then
                  L1_1 = _util
                  L1_1 = L1_1.SetComCount
                  L1_1(0)
                  L1_1 = _util
                  L1_1 = L1_1.SetVar
                  L1_1("M3C3_IceRink_Warp", 1)
                  L1_1 = _util
                  L1_1 = L1_1.AddComText
                  L1_1(1596)
                  L1_1 = _util
                  L1_1 = L1_1.AddComOption
                  L1_1(1597, _const.CHANGE_ROOM, 36)
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
                  L1_1(1364)
                  L1_1 = _util
                  L1_1 = L1_1.AddComOption
                  L1_1(1365, _const.CHANGE_DIALOG, 232)
                  L1_1 = _util
                  L1_1 = L1_1.AddComOption
                  L1_1(1367, _const.END_DIALOG, 0)
                elseif L0_0 == 232 then
                  L1_1 = _util
                  L1_1 = L1_1.AddComText
                  L1_1(1368)
                  L1_1 = _util
                  L1_1 = L1_1.AddComOption
                  L1_1(1361, _const.END_DIALOG, 0)
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
                    L1_1(1364)
                    L1_1 = _util
                    L1_1 = L1_1.AddComOption
                    L1_1(1366, _const.CHANGE_DIALOG, 323)
                    L1_1 = _util
                    L1_1 = L1_1.AddComOption
                    L1_1(1367, _const.END_DIALOG, 0)
                  elseif L0_0 == 323 then
                    L1_1 = _util
                    L1_1 = L1_1.AddComText
                    L1_1(1369)
                    L1_1 = _util
                    L1_1 = L1_1.AddComOption
                    L1_1(1361, _const.END_DIALOG, 0)
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
                      L1_1(1370)
                      L1_1 = _util
                      L1_1 = L1_1.AddComOption
                      L1_1(1371, _const.CHANGE_DIALOG, 1)
                      L1_1 = _util
                      L1_1 = L1_1.AddComOption
                      L1_1(1374, _const.END_DIALOG, 0)
                    elseif L0_0 == 1 then
                      L1_1 = _util
                      L1_1 = L1_1.AddComText
                      L1_1(1372)
                      L1_1 = _util
                      L1_1 = L1_1.AddComOption
                      L1_1(1373, _const.END_DIALOG, 0)
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
                        L1_1(1375)
                        L1_1 = _util
                        L1_1 = L1_1.AddComOption
                        L1_1(1376, _const.CHANGE_DIALOG, 1)
                      elseif L0_0 == 1 then
                        L1_1 = _util
                        L1_1 = L1_1.AddComText
                        L1_1(1377)
                        L1_1 = _util
                        L1_1 = L1_1.AddComOption
                        L1_1(1379, _const.END_DIALOG, 0)
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
                        L1_1(4808)
                        L1_1 = _util
                        L1_1 = L1_1.AddComOption
                        L1_1(4809, _const.END_DIALOG, 0)
                      end
                    else
                      L1_1 = _util
                      L1_1 = L1_1.AddComText
                      L1_1(4805)
                      L1_1 = _util
                      L1_1 = L1_1.AddComOption
                      L1_1(4806, _const.END_DIALOG, 0)
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
