#cs
 Project name: SC2.Build-Order
 Author:       Nick "NicoTn" K.
 Version: 	   0.1
 Script Function:
	An easy quick way to look up build orders for Starcraft II.
#ce

#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <TabConstants.au3>
#include <WindowsConstants.au3>
#include <GuiComboBoxEx.au3>

$gGui = GUICreate("SC2.Build-Order", 479, 609, 192, 124)
$gGroup = GUICtrlCreateGroup(" Build-Order ", 8, 8, 465, 593, -1, $WS_EX_TRANSPARENT)
$gTab = GUICtrlCreateTab(16, 24, 449, 569)
$tMain = GUICtrlCreateTabItem("Main")
$tTerran = GUICtrlCreateTabItem("Terran")
$tGroup = GUICtrlCreateGroup(" Build-Order ", 25, 50, 100, 100, -1, $WS_EX_TRANSPARENT)
$tCombo = GUICtrlCreateCombo("Matchup", 35, 65, 80, 100, $CBS_DROPDOWNLIST)
GUICtrlSetData(-1, "TvP|TvZ|TvT")


$tProtoss = GUICtrlCreateTabItem("Protoss")
$pGroup = GUICtrlCreateGroup(" Build-Order ", 25, 50, 100, 100, -1, $WS_EX_TRANSPARENT)
$tZerg = GUICtrlCreateTabItem("Zerg")
$zGroup = GUICtrlCreateGroup(" Build-Order ", 25, 50, 100, 100, -1, $WS_EX_TRANSPARENT)


GUISetState(@SW_SHOW)
While 1
	$MSG = GUIGetMsg()
	$tRead = GUICtrlRead($tCombo)
	Select
		Case $msg = $tCombo And GUICtrlRead($tCombo) = "Matchup"
			ToolTip($tRead,0,0)
		Case $msg = $tCombo And GUICtrlRead($tCombo) = "TvP"
			ToolTip($tRead,0,0)
		Case $msg = $tCombo And GUICtrlRead($tCombo) = "TvZ"
			ToolTip($tRead,0,0)
		Case $msg = $tCombo And GUICtrlRead($tCombo) = "TvT"
			ToolTip($tRead,0,0)
		Case $MSG = $GUI_EVENT_CLOSE
			Exit
	EndSelect
WEnd