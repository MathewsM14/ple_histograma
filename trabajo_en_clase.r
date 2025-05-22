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


HistogramasTabla <- function(df){
     namvars <- names(df)
     n <- length(namvars)
     par(mfrow = c(1, n)) # Una fila, n columnas
     for(var in namvars){
          # Histograma para cada variable
          if(is.numeric(df[[var]])){
               hist(df[[var]], 
                    main = var, 
                    xlab = "Rangos", 
                    ylab = "Frecuencia", 
                    col = "lightblue", 
                    border = "black",
                    breaks = 9)
          } else{
               # Gráfico de barras para variables categóricas
               barplot(table(df[[var]]), 
                       main = var, 
                       xlab = "Categoría", 
                       ylab = "Frecuencia", 
                       col = "lightblue", 
                       border = "black")
          }
     }
     par(mfrow = c(1, 1)) # Regresar a una sola gráfica
}


tabla <- data.frame(
    "Tunif"=runif(1000,min=25,max=35),
    "Texp"=rexp(1000,rate = 1/30),
    "TnormA"=rnorm(1000,mean=0,sd=2),
    "TnormB"=rnorm(1000,mean=10,sd=2),
    "Enteros"=sample(1:10,10,replace = TRUE),
    "Categoricos"=sample(LETTERS[1:26],1000,replace = TRUE)
)

HistogramasTabla(tabla)

write.csv(tabla, file = "datos_ejemplo.csv", row.names = FALSE)

tabla2 <- read.csv("datos_ejemplo.csv")

tablaA <- tabla2[tabla2$Categoricos == "A", ]

mean(tablaA$Tunif)


time = sec(0, 1, by=0.01)

tablafuncs <- data.frame(
     "Tiempo" = time,
     "Sin" = sin(2 * pi * time),
     "Cos" = cos(2 * pi * time)
)

plot(tablafuncs$Tiempo, tablafuncs$Sin, type = "l", col = "blue", lwd = 2,
     main = "Funciones Trigonométricas",
     xlab = "Tiempo (s)", ylab = "Valor")
lines(tablafuncs$Tiempo, tablafuncs$Cos, col = "red", lwd = 2)