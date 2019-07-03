local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = setupItems
L2_2(L0_0, L1_1)
L2_2 = spypodCheck
L2_2(L0_0, L1_1)
L2_2 = mapCheck
L2_2(L0_0, L1_1)
L2_2 = communicatorCheck
L2_2(L0_0, L1_1)
if L0_0 == 4 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("plazaPaper")
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("M8_HerbertDockIntro")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("M8_snowFort")
      if L2_2 == 2 then
        function L2_2()
          _util.AddItem(38955)
          _util.ActivateNpc(38955, 100)
        end
        scriptPlay(L2_2)
      end
    end
  else
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("plazaPaper")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.ChangeBaseAnim
      L2_2("NPC/MysteriousTremors/PaperNPC/PaperNPCMap", _id.M8_Town0_PaperGuy)
    end
  end
end
if L0_0 == 9 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("balloonchase")
  if L2_2 == 2 then
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("balloonchase", 3)
    L2_2 = _util
    L2_2 = L2_2.DelItem
    L2_2(_id.DistantHerbWoods)
  end
end
