#En este script dibujaremos una circunferencia

# Librerías
library(ggplot2)

# Datos del círculo
radio <- 1
theta <- seq(0, 2*pi, length.out = 200)
df <- data.frame(
  x = radio * cos(theta),
  y = radio * sin(theta)
)

# Gráfico
ggplot(df, aes(x, y)) +
  geom_path(color = "blue", size = 1.5) +  #
  geom_point(aes(x = 0, y = 0), color = "#FD8D3C", size = 4) +  # centro naranja pastel
  annotate("text", x = 0, y = 0.1, label = "Centro", color = "#FD8D3C", size = 5) +
  coord_fixed() +
  theme_minimal(base_family = "Roboto") +
  labs(title = "Círculo de radio 1", x = "x", y = "y")