# En este script dibujaremos una elipse

# Librerías
library(ggplot2)

# Parámetros de la elipse
radio_x <- 1.5  # eje mayor
radio_y <- 1    # eje menor
theta <- seq(0, 2*pi, length.out = 200)

# Data frame de la elipse
df <- data.frame(
  x = radio_x * cos(theta),
  y = radio_y * sin(theta)
)

# Gráfico
ggplot(df, aes(x, y)) +
  geom_path(color = "blue", size = 1.5) +  
  geom_point(aes(x = 0, y = 0), color = "orange", size = 4) +  
  annotate("text", x = 0, y = 0.1, label = "Centro", color = "orange", size = 5) +
  coord_fixed() +
  theme_minimal(base_family = "Roboto") +
  labs(title = "Elipse", x = "x", y = "y")
