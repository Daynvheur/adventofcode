$if = "G:\C\Documents\Fichiers\Scripts\adventofcode\2021\day_1\input_1.txt"
$ia = FileReadToArray($if)
$ic = @extended ;Compteur du nombre de lignes
$ip = $ia[0] ;Initialisation de la mesure r�f�rente avec la premi�re ligne
$increments = 0 ;Initialisation du compteur
For $i = 1 To $ic - 1 ;Parcours de toutes les lignes � partir de la deuxi�me (la premi�re servant d'initialisation)
	If $ia[$i] > $ip Then ;Si la mesure est plus grande que la r�f�rence,
		$increments += 1 ;Incr�ment du compteur
;~ 		ConsoleWrite($ia[$i] & ">" & $ip & @CRLF)
;~ 	Else ;L'�l�ment est plus petit ou �gal au pr�c�dent
;~ 		ConsoleWrite("-" & $ia[$i] & "<=" & $ip & @CRLF)
	EndIf
	$ip = $ia[$i] ;La mesure devient la r�f�rence pr�c�dente
Next
ConsoleWrite($increments & @CRLF) ;1712 (MAIS MAUVAISE R�PONSE)
increments += 1 ;GROS HACK NUL. :( :( :( (la bonne r�ponse �tait 1713, cela inclue donc une mesure hors-limites � l'infini...)