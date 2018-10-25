<?php

date_default_timezone_set('Europe/Madrid');

function consecutivos(array $array){

	if(count($array)>0 && $array[0]!=null && $array[0]==1){
        asort($array);

        for($x=0;$x<count($array);$x++){
            if($x+1<count($array)){
            if($array[$x]+1!=$array[$x+1]){
                $numero=$array[$x]+1;
                $x=count($array);
                $noc=true;
            }
            }
        }
        if(!isset($noc)){
            $numero=count($array)+1;
        }
  
    }
    else{
        $numero=1;
    }
	return $numero;
}

$hostbd="localhost";
$userbd="root";
$passbd="root";
$bd="ahorcado";
$conexion=mysqli_connect($hostbd,$userbd,$passbd,$bd);
mysqli_select_db($conexion,$bd);
$consulta=mysqli_query($conexion,"SELECT idp FROM palabras ORDER BY idp");
$numeros=array();
while ($fila = mysqli_fetch_row($consulta)){
	$numeros[]=(int)$fila[0];
}

print consecutivos($numeros);
?>
