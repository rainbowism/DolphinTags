#SingleInstance force
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Persistent ; Stay open in background
SetTitleMatchMode, 2
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.

file := FileOpen("user1.txt", "w")
file.Length := 0
file.Close()
file := FileOpen("user2.txt", "w")
file.Length := 0
file.Close()
file := FileOpen("user3.txt", "w")
file.Length := 0
file.Close()
file := FileOpen("user4.txt", "w")
file.Length := 0
file.Close()

while True
{
  ControlGet, Names, List, , ListBox1, Dolphin NetPlay
  If(Names == "")
  {
    file := FileOpen("user1.txt", "w")
    file.Length := 0
    file.Close()
    file := FileOpen("user2.txt", "w")
    file.Length := 0
    file.Close()
    file := FileOpen("user3.txt", "w")
    file.Length := 0
    file.Close()
    file := FileOpen("user4.txt", "w")
    file.Length := 0
    file.Close()
  }
  Loop, Parse, Names, `n, `r
  {
    IfInString, A_LoopField, [1] :
    {
      StringReplace, TempName, A_LoopField, [1] :, ■
      StringSplit, Player1Name, TempName, ■
      file := FileOpen("user1.txt", "w")
      file.Write(Player1Name1)
      file.Close()
    }
    IfInString, A_LoopField, [2] :
    {
      StringReplace, TempName, A_LoopField, [2] :, ■
      StringSplit, Player2Name, TempName, ■
      file := FileOpen("user2.txt", "w")
      file.Write(Player2Name1)
      file.Close()
    }
    IfInString, A_LoopField, [3] :
    {
      StringReplace, TempName, A_LoopField, [3] :, ■
      StringSplit, Player3Name, TempName, ■
      file := FileOpen("user3.txt", "w")
      file.Write(Player3Name1)
      file.Close()
    }
    IfInString, A_LoopField, [4] :
    {
      StringReplace, TempName, A_LoopField, [4] :, ■
      StringSplit, Player4Name, TempName, ■
      file := FileOpen("user4.txt", "w")
      file.Write(Player4Name1)
      file.Close()
    }
  }
  Sleep, 1000
}
