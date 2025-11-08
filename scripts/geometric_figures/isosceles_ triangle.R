# En este script dibujaremos un triángulo isósceles

# Librerías
library(ggplot2)

# Coordenadas del triángulo isósceles
triangulo <- data.frame(
  x = c(-1, 1, 0, -1),
  y = c(0, 0, 2, 0)
)

# Gráfico
ggplot(triangulo, aes(x, y)) +
  geom_polygon(fill = "#FDD0A2", color = "blue", size = 1.5) +  # relleno naranja pastel, borde azul pastel
  geom_point(aes(x = 0, y = 2), color = "orange", size = 4) +     # vértice superior naranja
  annotate("text", x = 0, y = 2.3, label = "Vértice", color = "orange", size = 4) +
  coord_fixed() +
  theme_minimal(base_family = "Roboto") +
  labs(title = "Triángulo isósceles", x = "x", y = "y")
