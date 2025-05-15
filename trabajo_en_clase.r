temp <- c(29.8, 32.4, 35.3, 27.2, 29.3, 30.4)

hist(temp, 
     main = "Histograma de temperaturas",
     xlab = "Temperatura (°C)",
     ylab = "Frecuencia",
     col = "lightblue",
     border = "black",
     breaks = 9,
     xlim = c(27, 36))

temperaturas <- runif(100, min = 27, max = 36)
hist(temperaturas, 
     main = "Histograma de temperaturas",
     xlab = "Temperatura (°C)",
     ylab = "Frecuencia",
     col = "lightblue",
     border = "black",
     breaks = 9,
     xlim = c(27, 36))