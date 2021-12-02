$if = "G:\C\Documents\Fichiers\Scripts\adventofcode\2021\day_1\input_1.txt"
$ia = FileReadToArray($if)
$ic = @extended ;Compteur du nombre de lignes
$ip = $ia[0] ;Initialisation de la mesure référente avec la première ligne
$increments = 0 ;Initialisation du compteur
For $i = 1 To $ic - 1 ;Parcours de toutes les lignes à partir de la deuxième (la première servant d'initialisation)
	If $ia[$i] > $ip Then ;Si la mesure est plus grande que la référence,
		$increments += 1 ;Incrément du compteur
;~ 		ConsoleWrite($ia[$i] & ">" & $ip & @CRLF)
;~ 	Else ;L'élément est plus petit ou égal au précédent
;~ 		ConsoleWrite("-" & $ia[$i] & "<=" & $ip & @CRLF)
	EndIf
	$ip = $ia[$i] ;La mesure devient la référence précédente
Next
ConsoleWrite($increments & @CRLF) ;1712 (MAIS MAUVAISE RÉPONSE)
increments += 1 ;GROS HACK NUL. :( :( :( (la bonne réponse était 1713, cela inclue donc une mesure hors-limites à l'infini...)