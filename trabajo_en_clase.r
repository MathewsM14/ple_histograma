temp <- c(29.8, 32.4, 35.3, 27.2, 29.3, 30.4)

hist(temp, 
     main = "Histograma de temperaturas",
     xlab = "Temperatura (°C)",
     ylab = "Frecuencia",
     col = "lightblue",
     border = "black",
     breaks = 9,
     xlim = c(27, 36))


#############################

temperaturas <- runif(100, min = 27, max = 36)

hist(temperaturas, 
     main = "Histograma de temperaturas",
     xlab = "Temperatura (°C)",
     ylab = "Frecuencia",
     col = "lightblue",
     border = "black",
     breaks = 9,
     xlim = c(27, 36))


#############################

temperatura1 <- data.frame(
  x = rnorm(1000, mean = 31, sd = 2),       # Valores aleatorios decimales con distribución normal
  y = runif(1000, min=27, max=36)       # Valores aleatorios decimales con distribución uniforme
)

hist(temperatura1$x,
     main = "Histogramas superpuestos",
     xlab = "Temperatura (°C)",
     ylab = "Frecuencia",
     col = rgb(0.2, 0.4, 0.6, 0.5),  # azul con transparencia
     border = "black",
     breaks = 9,
     xlim = c(27, 36))


hist(temperatura1$y,
     col = rgb(1, 0, 0, 0.5),         # rojo con transparencia
     border = "black",
     breaks = 9,
     add = TRUE)

