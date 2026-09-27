# Control Laboral

Aplicación web personal para registrar horas extra, horas de bote, vacaciones, asuntos propios, desplazamientos y noches.

## Datos iniciales
La primera carga incluye los datos de `Cuentas 2026.xlsx` como punto de partida, manteniendo separados:
- Horas extra: 42 h iniciales, con precio de 28,84 €/h.
- Bote: 10 h iniciales.
- Vacaciones: 23 días anuales + 5 días del año anterior.
- Asuntos propios: 20 días anuales.

## Seguridad de datos
Los datos se guardan localmente bajo una clave nueva (`control_laboral_v3_2026`) y la aplicación incorpora exportación/importación JSON para copias de seguridad.

## GitHub
Nombre recomendado del repositorio: **Control Laboral**.

La carpeta contiene una web estática: `index.html`, `styles.css` y `app.js`. Puede publicarse con GitHub Pages.
