if _util.GetVar("M10_JPGComplete") == 0 and _util.GetVar("M10_JPG_Intro") == 1 then
  _util.ChangeBaseAnim("NPC/WaddleSquad/JetPackGuy/jpgBeach", _id.M10_Beach_JPG)
end
if _util.GetActiveMission() == 6 and _util.GetVar("helpedJPG") == 0 then
  _util.SetCursorPos(1008, 176)
end
