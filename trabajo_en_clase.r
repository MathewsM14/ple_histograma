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
  "Tunif" = rnorm(1000, mean = 31, sd = 2),
  "Tnorm" = runif(1000, min=27, max=36)
)


par(mfrow=c(1,2))
hist(temperatura1$Tunif, 
     main = "Histograma de distribución uniforme",
     xlab = "Temperatura (°C)",
     ylab = "Frecuencia",
     col = "#61686b",
     border = "black",
     breaks = 9,
     xlim = c(27, 36))
hist(temperatura1$Tnorm,
     main = "Histograma de distribución normal",
     xlab = "Temperatura (°C)",
     ylab = "Frecuencia",
     col = "lightblue",
     border = "black",
     breaks = 9,
     xlim = c(27, 36))


Histabla <- function(dataframe){
    for (i in 1:ncol(dataframe)){
        if (is.numeric(dataframe[, i])){
            hist(dataframe[, i], 
                 main = paste("Histograma de", colnames(dataframe)[i]),
                 xlab = colnames(dataframe)[i],
                 ylab = "Frecuencia",
                 col = "lightblue",
                 border = "black",
                 breaks = 9,
                 xlim = c(min(dataframe[,i]), max(dataframe[,i])))
        }
    }
       
}

Histabla(temperatura1)