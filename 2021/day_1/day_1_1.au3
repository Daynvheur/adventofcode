$timer = TimerInit()
$if = "G:\C\Documents\Fichiers\Scripts\adventofcode\2021\day_1\input_1.txt"
$ia = FileReadToArray($if)
$ic = @extended ;Compteur du nombre de lignes
$ip = Number($ia[0])
$increments = 0 ;Initialisation du compteur
For $i = 1 To $ic - 1 ;Parcours de toutes les lignes � partir de la deuxi�me (la premi�re servant d'initialisation)
	$iq = Number($ia[$i])
	If $iq > $ip Then ;Si la mesure est plus grande que la r�f�rence,
		$increments = $increments + 1 ;Incr�ment du compteur
	EndIf
	$ip = $iq
Next
ConsoleWrite($increments & @CRLF) ;1713 (Attention au typage squi compare des cha�nes de caract�res !!! "10" < "9")
ConsoleWrite("Timer : " & TimerDiff($timer) & @CRLF)