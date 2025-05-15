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
  Tunif = rnorm(1000, mean = 31, sd = 2),       # Valores aleatorios decimales con distribución normal
  Tnorm = runif(1000, min=27, max=36)       # Valores aleatorios decimales con distribución uniforme
)


hist(temperatura1$Tunif,
     main = "Histogramas de temperaturas",
     xlab = "Temperatura (°C)",
     ylab = "Frecuencia",
     col = , 
     border = "black",
     breaks = 9,
     xlim = c(27, 36))


hist(temperatura1$Tnorm,
     col = rgb(1, 0, 0, 0.5),   
     border = "black",
     breaks = 9,
     add = TRUE)

