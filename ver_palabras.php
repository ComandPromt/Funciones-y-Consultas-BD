<?php

function poner_tilde($tilde){
	switch($tilde){
		case "A":
		$tilde="Á";
		break;
	
		case "a":
		$tilde="á";
		break;
		
		case "E":
		$tilde="É";
		break;
		
		case "e":
		$tilde="é";
		break;
			
		case "I":
		$tilde="Í";
		break;
		
		case "i":
		$tilde="í";
		break;
		
		case "O":
		$tilde="o";
		break;
		
		case "o":
		$tilde="ó";
		break;
		
		case "U":
		$tilde="Ú";
		break;
		
		case "u":
		$tilde="ú";
		break;
	}
	return $tilde;
}

function ver_palabras_con_tildes($palabra,$tilde){
	if($tilde>0){
		if (strpos($palabra, "-")!=null){
		$palabra=str_replace("-","ñ",$palabra);
		$resto=0;
		}
		else{
			$resto=1;
		}
		$salida="";
		$posicion=$tilde-$resto;
		$ttilde=poner_tilde($palabra[$posicion]);
		$palabra[$posicion]=" ";
		for($x=0;$x<strlen($palabra);$x++){
			if($posicion!=$x){
				$salida[]= $palabra[$x];
			}
			else{
				$salida[]= $ttilde;
			}
		}
		$salida=implode ($salida);
	}
	if(strlen($salida)==0){
		return $palabra;
	}
	else{
		return $salida;
	}
}

$mysqli = new mysqli("localhost", "root", "root", "ahorcado");

$consulta = "SELECT Palabra,Tilde FROM palabras ORDER by Palabra";

if ($resultado = $mysqli->query($consulta)) {
	$x=1;
  	print '<table border="1" style="margin:auto;text-align:center;">';
	print "<tr><th>Nº</th>";
	print "<th>Palabra</th></tr>";
    while ($fila = $resultado->fetch_row()) {
		print "<tr><td>";
		printf ("%s</td><td> %s<br/>",$x,ver_palabras_con_tildes($fila[0],$fila[1]));
		print "</td></tr>";
		$x++;
    }

print "</table>";
     $resultado->close();
}

$mysqli->close();

?>