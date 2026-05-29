---
# =============================================================================
#  Research project — Hydrologic & Water Quality Modeling
# =============================================================================
#  Each file in /_projects/ becomes a card on /projects/ and its own page.
#  `importance` controls sort order (lower = earlier). `category` becomes a
#  filter tab on the projects index.
# =============================================================================
layout: page
title: Hydrologic & Water Quality Modeling
description: Process-based modeling of flow, storage, and nutrient dynamics at field and watershed scales.
img: assets/img/research_hydrology.jpeg
importance: 1
category: research
related_publications: true

# ----- Buttons at the foot of the page (edited in the CMS, no HTML) -----
buttons:
  - {
      label: "Collaborate on this research",
      url: "mailto:g.golmohammadi@ufl.edu?subject=Collaboration%20%E2%80%94%20Hydrologic%20%26%20Water%20Quality%20Modeling",
      icon: "fas fa-handshake",
      style: "primary",
    }
  - { label: "Meet the team", url: "/people/", icon: "fas fa-users" }
  - { label: "All publications", url: "/publications/", icon: "fas fa-book" }
  - { label: "Field instrumentation", url: "/facilities/", icon: "fas fa-microscope" }
  - { label: "All research themes", url: "/projects/", icon: "fas fa-arrow-left", style: "ghost" }
---

We develop and apply physically-based hydrologic and water-quality models
to quantify water flow, storage, and nutrient dynamics across agricultural
landscapes, rangelands, wetlands, and watersheds. Our work links field-scale
processes to watershed-scale outcomes, with particular attention to
**nutrient transport, runoff generation, and hydrologic connectivity**.

These models support:

- Evaluation of agricultural Best Management Practices (BMPs).
- Environmental risk assessment.
- Scenario-based analysis under changing climate, land use, and management.

### Tools we use

- **SWAT+** for watershed-scale simulation of flow and water quality.
- **MODFLOW** and coupled **SWAT-MODFLOW** for integrated
  surface–groundwater modeling.
- **DRAINMOD** for tile-drained agricultural systems.
- Custom Python pipelines for data harmonization, calibration, and
  uncertainty analysis.

**Representative related publications** behind this theme: {% cite salmani2023swat_modflow golmohammadi2020drainmod santos2025lake_surface %} — full details (thumbnail, DOI, link, and citation) are listed below, and the [publications page](/publications/) has the complete list.

{% include whl_buttons.liquid items=page.buttons %}
