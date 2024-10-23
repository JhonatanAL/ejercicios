#Clasificación de números positivos o negativos:
num <- numeric(10)
for (i in 1:10) {
  num[i] <- as.numeric(readline(prompt = "Ingresa un número: "))
  if (num[i] > 0) {
    cat(num[i], "es positivo\n")
  } else if (num[i] < 0) {
    cat(num[i], "es negativo\n")
  } else {
    cat(num[i], "es cero\n")
  }
}


#Cálculo de números pares e impares:
aleatorios <- sample(1:100, 10)
for(i in aleatorios) {
  if(i %% 2 == 0) {
    print(paste("es par", i))
  } else {
    print(paste("es impar", i))
  }
}


#Suma de los primeros N números:
n <- as.numeric(readline(prompt = "Ingresa un número: "))
suma <- sum(1:n)
print(paste("La suma de los números del 1 al", n, "es:", suma))


#Número de Fibonacci:
fibonacci <- c(0, 1)
while (length(fibonacci) < 20) {
  fibonacci <- c(fibonacci, sum(tail(fibonacci, 2)))
}
cat("Los primeros 20 números de Fibonacci son:", fibonacci, "\n")


#Calcular Factorial:
n <- as.numeric(readline(prompt = "Ingresa un número para calcular el factorial: "))
factorial <- 1
for (i in 1:n) {
  factorial <- factorial * i
}
print(paste("El factorial de", n, "es:", factorial))


#Juego de adivinanza:
numero_secreto <- sample(1:100, 1)
adivinanza <- as.numeric(readline(prompt = "Adivina el número entre 1 y 100: "))
while (adivinanza != numero_secreto) {
  if (adivinanza > numero_secreto) {
    print("El número es menor")
  } else {
    print("El número es mayor")
  }
  adivinanza <- as.numeric(readline(prompt = "Intenta de nuevo: "))
}
print("¡Felicidades, adivinaste el número!")


#Validacion de Contraseña:
password_correcta <- "1234"
intentos <- 0

while (intentos < 3) {
  password <- readline(prompt = "Ingresa la contraseña: ")
  if (password == password_correcta) {
    print("Acceso concedido")
    break
  } else {
    print("Contraseña incorrecta")
    intentos <- intentos + 1
  }
}

if (intentos == 3) {
  print("Usuario bloqueado por demasiados intentos")
}


#Suma de digitos de un numero:
numero <- as.integer(readline(prompt = "Ingresa un número entero: "))
suma <- 0
while (numero > 0) {
  suma <- suma + (numero %% 10)
  numero <- numero %/% 10
}
cat("La suma de los dígitos es:", suma, "\n")


#Impresión de patrones:
n <- 15  
for (i in 1:n) {
  cat(rep("*", i), "\n")
}


#Números primos:
for (num in 2:100) {
  es_primo <- TRUE
  for (i in 2:sqrt(num)) {
    if (num %% i == 0) {
      es_primo <- FALSE
      break
    }
  }
  if (es_primo) {
    cat(num, "\n")
  }
}





























