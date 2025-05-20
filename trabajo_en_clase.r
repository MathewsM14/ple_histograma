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
  "Tnorm" = rnorm(1000, mean = 31, sd = 2),
  "Tunif" = runif(1000, min=27, max=36)
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


Histabla <- function(dataframe) {
    columnas_numericas <- sapply(dataframe, is.numeric)
    num_vars <- sum(columnas_numericas)
    
    par(mfrow = c(ceiling(num_vars / 2), 2))  # Por ejemplo, 2 columnas y filas necesarias
    
    for (i in 1:ncol(dataframe)) {
        if (is.numeric(dataframe[, i])) {
            hist(dataframe[, i], 
                 main = paste("Histograma de", colnames(dataframe)[i]),
                 xlab = colnames(dataframe)[i],
                 ylab = "Frecuencia",
                 col = "lightblue",
                 border = "black",
                 breaks = "Sturges")
        }
    }

    par(mfrow = c(1,1))
}

Histabla(temperatura1)


HistogramasTabla <- function(df){
     namvars <- names(df)
     n <- length(namvars)
     par(mfrow = c(1, n)) # Una fila, n columnas
     for(var in namvars){
          # Histograma para cada variable
          hist(df[[var]], 
               main = var, 
               xlab = "Rangos", 
               ylab = "Frecuencia", 
               col = "lightblue", 
               border = "black")
     }
     par(mfrow = c(1, 1)) # Regresar a una sola gráfica
}

tabla2 <- data.frame(
     "rojo" = c(1, 2, 3, 4, 5),
     "verde" = c(6, 7, 8, 9, 10),
     "azul" = c(11, 12, 13, 14, 15),
     "amarillo" = c(16, 17, 18, 19, 20),
     "naranja" = c(21, 22, 23, 24, 25),
     "morado" = c(26, 27, 28, 29, 30)
)

Histabla(tabla2)
HistogramasTabla(tabla2)