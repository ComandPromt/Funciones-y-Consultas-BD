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
