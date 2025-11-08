# En este scrip dibujaremos un triángulo rectángulo

# Librerías
library(ggplot2)

# Coordenadas del triángulo rectángulo
# Vértices: (0,0), (3,0), (0,2)
triangulo <- data.frame(
  x = c(0, 3, 0, 0),
  y = c(0, 0, 2, 0)
)

# Gráfico
ggplot(triangulo, aes(x, y)) +
  geom_polygon(fill = "#FDD0A2", color = "blue", size = 1.5) +  # relleno naranja pastel, borde azul pastel
  geom_point(aes(x = 0, y = 0), color = "orange", size = 4) +     # vértice del ángulo recto
  annotate("text", x = 0.3, y = 0.3, label = "Ángulo recto", color = "orange", size = 5) +
  coord_fixed() +
  theme_minimal(base_family = "Roboto") +
  labs(title = "Triángulo rectángulo",
       x = "x", y = "y")
