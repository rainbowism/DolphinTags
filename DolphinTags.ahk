#SingleInstance force
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Persistent ; Stay open in background
SetTitleMatchMode, 2
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.

#IfWinActive Dolphin NetPlay ahk_exe Dolphin.exe
  while True
  {
    ControlGet, Names, List, , ListBox1, Dolphin NetPlay
    Loop, Parse, Names, `n, `r
    {
      IfInString, A_LoopField, [1] :
      {
        StringReplace, TempName, A_LoopField, [1] :, ■
        StringSplit, Player1Name, TempName, ■
        file := FileOpen("player1.txt", "w")
        file.Write(Player1Name1)
        file.Close()
      }
      IfInString, A_LoopField, [2] :
      {
        StringReplace, TempName, A_LoopField, [2] :, ■
        StringSplit, Player2Name, TempName, ■
        file := FileOpen("player2.txt", "w")
        file.Write(Player2Name1)
        file.Close()
      }
      IfInString, A_LoopField, [3] :
      {
        StringReplace, TempName, A_LoopField, [3] :, ■
        StringSplit, Player3Name, TempName, ■
        file := FileOpen("player3.txt", "w")
        file.Write(Player3Name1)
        file.Close()
      }
      IfInString, A_LoopField, [4] :
      {
        StringReplace, TempName, A_LoopField, [4] :, ■
        StringSplit, Player4Name, TempName, ■
        file := FileOpen("player4.txt", "w")
        file.Write(Player4Name1)
        file.Close()
      }
    }
    Sleep, 500
  }
