Algoritmo Romanos
	// leer el n�mero romano
	Definir Romano Como Caracter;
	Escribir "Ingrese un n�mero romano entre I y MMM";
	Leer Romano;
	// convertir el n�mero romano a may�sculas
	Romano <- Mayusculas(Romano);
	// controlar que sea v�lido para convertir
	Definir SePuedeConvertir Como Logico;
	SePuedeConvertir <- Verdadero;
	// definir los valores de los s�mbolos romanos
	Definir I,V,X,L,C,D,M Como Numerico;
	I <- 1; V <- 5; X <- 10; L <- 50; C <- 100; D <- 500; M <- 1000;
	// definir el valor acumulado del n�mero romano
	Definir Valor Como Numerico;
	Valor <- 0;
	// recorrer el n�mero romano de izquierda a derecha
	Para i <- 1 Hasta Longitud(Romano) Con Paso 1 Hacer
		// obtener el s�mbolo actual y el siguiente
		Actual <- Subcadena(Romano,i,1);
		Siguiente <- Subcadena(Romano,i + 1,1);
		// obtener el valor del s�mbolo actual y el siguiente
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
		Escribir "El n�mero romano es:",Valor;
  FinSi
FinAlgoritmo
