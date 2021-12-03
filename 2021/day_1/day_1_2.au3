$timer = TimerInit()
$if = "G:\C\Documents\Fichiers\Scripts\adventofcode\2021\day_1\input_1.txt"
$ia = FileReadToArray($if)
$ic = @extended ;Compteur du nombre de lignes
$i = 0
$ip = Number($ia[$i]) + Number($ia[$i + 1]) + Number($ia[$i + 2])

$increments = 0 ;Initialisation du compteur
For $i = 1 To $ic - 3 ;Parcours de toutes les lignes à partir de la deuxième (la première servant d'initialisation)
	$iq = Number($ia[$i]) + Number($ia[$i + 1]) + Number($ia[$i + 2])
	If $iq > $ip Then ;Si la mesure est plus grande que la référence,
		$increments = $increments + 1 ;Incrément du compteur
	EndIf
	$ip = $iq
Next
ConsoleWrite($increments & @CRLF) ;1713 (Attention au typage qui compare des chaînes de caractères !!! "10" < "9")
ConsoleWrite("Timer : " & TimerDiff($timer) & @CRLF)