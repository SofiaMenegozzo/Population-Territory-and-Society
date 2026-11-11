# Exercise 2 - Lorenz (concentration) curves for Liguria, 2023
# Municipalities are sorted by population density; the curve plots the
# cumulative share of area (x) against the cumulative share of population (y).
# Run from this folder. Input: data/concentration_2023.xlsx, sheet "Foglio1"
#   ai_R, pi_R = cumulative shares for the total resident population
#   ai_s, pi_s = cumulative shares for the foreign resident population

library(readxl)
library(ggplot2)

dati <- read_excel("data/concentration_2023.xlsx", sheet = "Foglio1")

lorenz_plot <- function(data, x, y) {
  ggplot(data, aes(x = .data[[x]], y = .data[[y]])) +
    geom_ribbon(aes(ymin = .data[[y]], ymax = .data[[x]]),
                fill = "lightblue", alpha = 0.5) +            # concentration area
    geom_abline(slope = 1, intercept = 0, color = "blue", linewidth = 1) +  # equal distribution
    geom_line(color = "red", linewidth = 1) +                 # Lorenz curve
    geom_point(color = "red", size = 2) +
    coord_equal() +
    scale_x_continuous(limits = c(0, 1)) +
    scale_y_continuous(limits = c(0, 1)) +
    labs(x = "âi (cumulative share of area)", y = "p̂i (cumulative share of population)") +
    theme_minimal()
}

grafico_R <- lorenz_plot(dati, "ai_R", "pi_R")   # total resident population
grafico_S <- lorenz_plot(dati, "ai_s", "pi_s")   # foreign resident population

grafico_R
grafico_S

ggsave("lorenz_residents.png", grafico_R, width = 6, height = 6, dpi = 300)
ggsave("lorenz_foreigners.png", grafico_S, width = 6, height = 6, dpi = 300)
