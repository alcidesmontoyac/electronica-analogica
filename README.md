# ⚡ Electrónica Análoga — Taller 4

**Curso:** Taller 4 — Ingeniería Física  
**Período:** 2026-2  
**Profesor:** Alcides de Jesús Montoya Cañola  
**Universidad:** Nacional de Colombia, sede Medellín  
**Sitio web:** [alcidesmontoyac.github.io/electronica-analogica](https://alcidesmontoyac.github.io/electronica-analogica)

---

## Descripción

Repositorio oficial del curso de Electrónica Análoga (Taller 4) de Ingeniería Física. Contiene:

- 📚 **Módulos de teoría** (8 temas) en Quarto con matemáticas, código Python y videos
- 🔬 **8 laboratorios** con guías, código de simulación y plantillas de informe
- 📝 **Evaluaciones** con instrucciones de entrega vía GitHub Classroom
- 🎥 **Videos** de la serie Razavi integrados directamente en el material

## Estructura

```
electronica-analogica/
├── teoria/
│   ├── 01-semiconductores/
│   ├── 02-diodos/
│   ├── 03-bjt/
│   ├── 04-mosfet/
│   ├── 05-amplificadores/
│   ├── 06-realimentacion/
│   ├── 07-osciladores/
│   └── 08-filtros/
├── laboratorios/
│   ├── lab01/   ← Curva I-V del diodo
│   ├── lab02/   ← Rectificadores
│   └── ...
├── evaluaciones/
├── recursos/
└── _quarto.yml
```

## Para estudiantes

- 💬 Preguntas: [Discussions](https://github.com/alcidesmontoyac/electronica-analogica/discussions)
- 📥 Entregas: GitHub Classroom (enlaces en [Evaluaciones](https://alcidesmontoyac.github.io/electronica-analogica/evaluaciones/))
- 🐛 Errores en el material: abrir un [Issue](https://github.com/alcidesmontoyac/electronica-analogica/issues)

## Compilar localmente

```bash
# Instalar Quarto: https://quarto.org/docs/get-started/
pip install numpy matplotlib scipy pandas jupyter

quarto render
quarto preview   # servidor local en http://localhost:4200
```

## Texto de referencia

Razavi, B. (2017). *Design of Analog CMOS Integrated Circuits* (2nd ed.). McGraw-Hill.

Serie de video del autor: [YouTube — Razavi Electronics 1](https://www.youtube.com/watch?v=yQDfVJzEymI&list=PLyYrySVqmyVPzvVlPW-TTzHhNWg1J_0LU)

---

© 2026 · Alcides Montoya · Universidad Nacional de Colombia
