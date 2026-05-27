---
# =============================================================================
#  HOMEPAGE  ( permalink "/"  =>  https://watershedhydrologylab.com/ )
# =============================================================================
#  This is the lab's About / home page. Everything between the "---" fences
#  is YAML front matter that the al-folio theme reads. The content below
#  the closing "---" is the page body, written in Markdown.
#
#  COMMON EDITS:
#    - Update the `subtitle` line if titles or affiliations change.
#    - Update the `more_info` block when the lab moves offices.
#    - Tweak the announcements limit to show more/fewer news items.
#    - Re-write the body paragraphs to refresh the lab description.
# =============================================================================

layout: about                 # use the "about" layout — do not change
title: about                  # the navbar label
permalink: /                  # this page lives at the site root

# Subtitle appears in smaller text under the lab name on the homepage.
# We highlight Dr. Golmohammadi and her UF/IFAS affiliations as links.
subtitle: >
  Led by <a href="https://soils.ifas.ufl.edu/people/faculty/golmar-golmohammadi/">Dr. Golmar Golmohammadi</a>,
  Assistant Professor of Watershed Hydrology and Biogeochemistry ·
  <a href="https://rcrec-ona.ifas.ufl.edu/">UF/IFAS Range Cattle Research and Education Center</a> ·
  <a href="https://soils.ifas.ufl.edu/">Department of Soil, Water, and Ecosystem Sciences</a>

# ----- Profile picture & contact card on the right side of the homepage -----
profile:
  align: right
  image: team/golmar_golmohammadi.jpg   # path is relative to /assets/img/
  image_circular: false                 # set to true for a round crop
  # `more_info` is rendered as HTML directly under the photo. We use it for
  # the lab's mailing address, phone, and email.
  more_info: >
    <p><strong>UF/IFAS RCREC</strong></p>
    <p><a href="https://www.google.com/maps/search/?api=1&query=3401+Experiment+Station+Ona+FL+33865" target="_blank" rel="noopener">3401 Experiment Station<br>Ona, FL 33865</a></p>
    <p>Phone: <a href="tel:+18633747053">(863) 374-7053</a></p>
    <p>Email: <a href="mailto:g.golmohammadi@ufl.edu">g.golmohammadi@ufl.edu</a></p>

# Show a "Selected publications" section below the bio. Papers marked
# `selected={true}` in _bibliography/papers.bib appear here.
selected_papers: true

# Render the row of social-media / academic-profile icons at the bottom.
# The icons come from _data/socials.yml.
social: true

# News strip on the homepage. Add files to _news/ to populate it.
announcements:
  enabled: true
  scrollable: true   # add a vertical scrollbar after the first few items
  limit: 5           # max items to show; leave blank to show all

# Latest blog posts. We don't run a blog right now, so disabled.
latest_posts:
  enabled: false
  scrollable: true
  limit: 3
---

The **Watershed Hydrology Lab** at the [University of Florida](https://www.ufl.edu/) /
IFAS [Range Cattle Research and Education Center (RCREC)](https://rcrec-ona.ifas.ufl.edu/)
investigates how water moves, is stored, and carries nutrients across
agricultural landscapes, rangelands, wetlands, and watersheds. Led by
[Dr. Golmar Golmohammadi](https://soils.ifas.ufl.edu/people/faculty/golmar-golmohammadi/),
our integrated research and Extension program develops sustainable water
management practices that conserve water and protect water quality under
changing climate and land-use conditions.

<div class="whl-btn-row">
  <a class="whl-btn whl-btn-primary" href="/projects/"><i class="fas fa-flask"></i> Explore our research</a>
  <a class="whl-btn" href="/people/"><i class="fas fa-users"></i> Meet the team</a>
  <a class="whl-btn" href="/publications/"><i class="fas fa-book"></i> Read publications</a>
  <a class="whl-btn" href="/contact/"><i class="fas fa-paper-plane"></i> Contact / Join the lab</a>
</div>

We combine physically-based hydrologic and water-quality models (SWAT+,
MODFLOW, DRAINMOD), machine-learning and deep-learning approaches,
geospatial analysis with Earth-observation data, and an extensive
field-instrumentation network at RCREC and the DeLuca Preserve. The lab
operates at the intersection of watershed science, AI, and agricultural
sustainability.

### Research themes

<div class="whl-card-grid" markdown="1">
<div class="whl-card" markdown="1">
**Hydrologic & water-quality modeling**
Field-to-watershed simulation of flow, storage, and nutrient transport
with SWAT+, MODFLOW, and DRAINMOD.

<a class="whl-btn whl-btn-ghost" href="/projects/1_hydrologic_modeling/"><i class="fas fa-arrow-right"></i> Learn more</a>
</div>

<div class="whl-card" markdown="1">
**AI-driven environmental risk mapping**
Geospatial machine learning for flood, drought, and groundwater
vulnerability, with explainable AI.

<a class="whl-btn whl-btn-ghost" href="/projects/2_ai_risk_mapping/"><i class="fas fa-arrow-right"></i> Learn more</a>
</div>

<div class="whl-card" markdown="1">
**Data-driven decision support**
Integrating models, sensor networks, and stakeholder input to evaluate
Best Management Practices (BMPs) for sustainable agriculture.

<a class="whl-btn whl-btn-ghost" href="/projects/3_decision_support/"><i class="fas fa-arrow-right"></i> Learn more</a>
</div>
</div>

### Explore the lab

<div class="whl-btn-row">
  <a class="whl-btn" href="/projects/"><i class="fas fa-flask"></i> Research themes</a>
  <a class="whl-btn" href="/people/"><i class="fas fa-users"></i> People</a>
  <a class="whl-btn" href="/publications/"><i class="fas fa-book"></i> Publications</a>
  <a class="whl-btn" href="/facilities/"><i class="fas fa-microscope"></i> Facilities</a>
  <a class="whl-btn" href="/news/"><i class="fas fa-bullhorn"></i> News</a>
  <a class="whl-btn whl-btn-primary" href="/contact/"><i class="fas fa-paper-plane"></i> Contact</a>
</div>

### Follow our work

<div class="whl-btn-row">
  <a class="whl-btn" href="https://x.com/WaterHydroLab" target="_blank" rel="noopener"><i class="fab fa-x-twitter"></i> @WaterHydroLab</a>
  <a class="whl-btn" href="https://github.com/waterhydrolab" target="_blank" rel="noopener"><i class="fab fa-github"></i> GitHub</a>
  <a class="whl-btn" href="https://www.linkedin.com/in/golmar-golmohammadi-35791a17/" target="_blank" rel="noopener"><i class="fab fa-linkedin"></i> LinkedIn</a>
  <a class="whl-btn" href="https://orcid.org/0000-0001-5532-3892" target="_blank" rel="noopener"><i class="fab fa-orcid"></i> ORCID</a>
  <a class="whl-btn" href="https://scholar.google.com/citations?user=cpXxmlYAAAAJ" target="_blank" rel="noopener"><i class="fas fa-graduation-cap"></i> Google Scholar</a>
  <a class="whl-btn" href="https://www.researchgate.net/profile/Golmar-Golmohammadi" target="_blank" rel="noopener"><i class="fab fa-researchgate"></i> ResearchGate</a>
  <a class="whl-btn whl-btn-ghost" href="/feed.xml"><i class="fas fa-rss"></i> RSS</a>
</div>
