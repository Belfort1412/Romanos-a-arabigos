Algoritmo Romanos
	// leer el número romano
	Definir Romano Como Caracter;
	Escribir "Ingrese un número romano entre I y MMM";
	Leer Romano;
	// convertir el número romano a mayúsculas
	Romano <- Mayusculas(Romano);
	// controlar que sea válido para convertir
	Definir SePuedeConvertir Como Logico;
	SePuedeConvertir <- Verdadero;
	// definir los valores de los símbolos romanos
	Definir I,V,X,L,C,D,M Como Numerico;
	I <- 1; V <- 5; X <- 10; L <- 50; C <- 100; D <- 500; M <- 1000;
	// definir el valor acumulado del número romano
	Definir Valor Como Numerico;
	Valor <- 0;
	// recorrer el número romano de izquierda a derecha
	Para i <- 1 Hasta Longitud(Romano) Con Paso 1 Hacer
		// obtener el símbolo actual y el siguiente
		Actual <- Subcadena(Romano,i,1);
		Siguiente <- Subcadena(Romano,i + 1,1);
		// obtener el valor del símbolo actual y el siguiente
		Segun Actual Hacer
			Caso 'I': ValorActual <- I;
			Caso 'V': ValorActual <- V;
			Caso 'X': ValorActual <- X;
			Caso 'L': ValorActual <- L;
			Caso 'C': ValorActual <- C;
			Caso 'D': ValorActual <- D;
			Caso 'M': ValorActual <- M;
		FinSegun
		Segun Siguiente Hacer
			Caso 'I': ValorSiguiente <- I;
			Caso 'V': ValorSiguiente <- V;
			Caso 'X': ValorSiguiente <- X;
			Caso 'L': ValorSiguiente <- L;
			Caso 'C': ValorSiguiente <- C;
			Caso 'D': ValorSiguiente <- D;
			Caso 'M': ValorSiguiente <- M;
			De Otro Modo:
				ValorSiguiente <- 0;
		FinSegun
		// si el valor actual es menor que el siguiente, se resta
		Si ValorActual < ValorSiguiente Entonces
			Valor <- Valor - ValorActual;
			// si no, se suma
		Sino
			Valor <- Valor + ValorActual;
		FinSi
	FinPara
	// mostrar el resultado si se pudo convertir
	Si SePuedeConvertir Entonces
		Escribir "El número romano es:",Valor;
  FinSi
FinAlgoritmo
