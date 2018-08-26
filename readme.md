---
# Función Consecutivos
---
## ¿Qué hace esta función?
---

Esta función sirve para encontrar el número
que falta en la BD (claves primarias numéricas)

---
## Ejemplos (Siempre hablamos del campo de la clave primaria numérica)
---
### Retornará 1
- Si la tabla está vacía  ( o la clave del primer registro es distinta de 1 )
---

### Retornará 3  
- Si tenemos varios registros (1,2,4,8) (hasta que insertemos ese número en la tabla)
- Siguiendo este caso, el siguiente número que retornará será: 5
---

### Retornará 7
- Si tenemos varios registros tales como: (1,2,3,4,5,6)

---
# Ver Palabras

- Este programa nos muestra todas las las palabras de nuestra bd y nos pone la tilde correspondiente 

---
## Tabla Ahordado
---

~~~
CREATE TABLE PRUEBA (
Palabra VARCHAR (25),
Tilde INT (1)  -- Posición de la tilde 
);
~~~

---

Ejemplos
---
---
## (Palabra,Tilde)

- "Camion", 5 --> Camión

- "-u", 0 --> Ñu

- "Se-aletica", 6 --> Señalética

# Recorrer registros (MySQL) v1
```php
$link = mysqli_connect("localhost", "user", "pass");
mysqli_select_db($link, "database");
$tildes = $link->query("SET NAMES 'utf8'"); //Para que se muestren las tildes correctamente
$result = mysqli_query($link, "SELECT * FROM table order by id");

while ($fila = mysqli_fetch_array($result)){
	print $fila['name'];
	print "< br/>";
}
```

# Recorrer registros (MySQL) v2

```php
$servidor="localhost";

$usuario="user";

$password="pass";

$bd="database";

$tabla="table";

echo "Conexion a BD< br/>< hr/>";

// Paso 1: conexión a la BD

$conex=mysql_connect($servidor,$usuario,$password);

// Paso 2: selección de la BD a usar

mysql_select_db($bd);

// Paso 3: ejecutar un comando SQL

$query=mysql_query("select * from $tabla",$conex);

echo "Tabla: ",strtoupper($bd),".",strtoupper($tabla),"< br>< / br >";

echo "< table border='1'>";

$num_campos=mysql_num_fields($query);

// Paso 4: recuperar registros uno a uno

// Cabecera

for ($i=0;$i<$num_campos;$i++) {
	
	$campo=mysql_field_name($query,$i);
	
	echo "< th>$campo< / th>";
	
}

// Cuerpo

while ($reg=mysql_fetch_array($query)) { 

	echo "< tr>";
	
	for ($i=0;$i<$num_campos;$i++) {
		
		echo "< td>$reg[$i]< / td>";
		
	}
	
	echo "< / tr>";
	
}

echo "< / table>";

// Pie

echo "< br/>Total de registros obtenidos = ",mysql_num_rows($query);
```
