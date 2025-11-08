# Gráfica que simula el movimiento del tobillo en el plano sagital (flexión dorsal y plantar) a lo largo del ciclo de la marcha

# Librerías
library(ggplot2)

# Elegimos 10 puntos clínicos  y ángulos promedio en cada parte del ciclo
puntos_clinicos <- data.frame(
  ciclo = c(0, 10, 20, 30, 40, 50, 60, 75, 90, 100),
  angulo = c(5, 3, 6, 8, 10, 0, -15, -5, 3, 5)
)

# Creamos 100 puntos para simular una gráfica de todo el ciclo
ciclo <- seq(0, 99, length.out = 100)

# Interpolación spline para suavizar la linea
angulo_interp <- spline(puntos_clinicos$ciclo, puntos_clinicos$angulo, xout = ciclo)$y

# Banda de variabilidad (±4°) para simular un rango de normalidad 
angulo_sup <- angulo_interp + 4
angulo_inf <- angulo_interp - 4

# Data frame final
df <- data.frame(
  ciclo = ciclo,
  angulo = angulo_interp,
  angulo_sup = angulo_sup,
  angulo_inf = angulo_inf
)

# Gráfico
ggplot(df, aes(x = ciclo)) +
  geom_ribbon(aes(ymin = angulo_inf, ymax = angulo_sup), fill = "grey", alpha = 0.5) +
  geom_line(aes(y = angulo), color = "black", size = 2) +
  geom_vline(xintercept = 60, color = "orange", linetype = "dashed", size = 1.2) +
  annotate("text", x = 25, y = 12, label = "Fase de apoyo (60% del ciclo)", color = "blue", size = 5) +
  annotate("text", x = 80, y = 10, label = "Fase de oscilación (40% del ciclo)", color = "orange", size = 5) +
  theme_minimal(base_family = "Roboto") +
  labs(title = "Flexión/Extensión del tobillo en la marcha",
       subtitle = "Gráfica de cinemática que representa el movimiento del tobillo en el plano sagital",
       x = "Ciclo de marcha [%]",
       y = "Ángulo de tobillo [°]")

