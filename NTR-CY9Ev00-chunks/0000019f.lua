if _util.GetActiveMission() == 7 and _util.GetVar("M11_CornMaze1Intro") == 0 then
  _util.SetVar("M11_MazeProg", 1)
  _util.SetVar("M11_CornMaze1Intro", 1)
end
_util.HideMap()
