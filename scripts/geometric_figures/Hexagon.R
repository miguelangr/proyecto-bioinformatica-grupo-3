# --- Calcular y graficar el área de un hexágono regular ---

# Paso 1: Definir el lado
lado <- 5  # puedes cambiar este valor

# Paso 2: Calcular el área
# Fórmula: A = (3 * sqrt(3) / 2) * lado^2
area <- (3 * sqrt(3) / 2) * lado^2
cat("El área del hexágono es:", area, "\n")

# Paso 3: Calcular los vértices del hexágono
theta <- seq(0, 2 * pi, length.out = 7)  # 6 lados + cierre
x <- lado * cos(theta)
y <- lado * sin(theta)

# Paso 4: Graficar
plot(x, y, type = "l", col = "darkgreen", lwd = 2, asp = 1,
     main = paste("Hexágono regular de lado", lado),
     xlab = "Eje X", ylab = "Eje Y",
     xlim = c(-lado * 1.5, lado * 1.5), ylim = c(-lado * 1.5, lado * 1.5))

# Rellenar el hexágono para mostrar el área
polygon(x, y, col = rgb(0, 0.8, 0.4, 0.3), border = NA)

# Marcar el centro
points(0, 0, pch = 19, col = "red")

# Mostrar el área en el centro
text(0, 0, labels = paste("Área =", round(area, 2)),
     col = "black", cex = 1.2, font = 2)

