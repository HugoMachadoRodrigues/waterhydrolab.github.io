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
    <p>3401 Experiment Station</p>
    <p>Ona, FL 33865</p>
    <p>Phone: (863) 374-7053</p>
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

We combine physically-based hydrologic and water-quality models (SWAT+,
MODFLOW, DRAINMOD), machine-learning and deep-learning approaches,
geospatial analysis with Earth-observation data, and an extensive
field-instrumentation network at RCREC and the DeLuca Preserve. The lab
operates at the intersection of watershed science, AI, and agricultural
sustainability.

### Research themes

- **Hydrologic and water-quality modeling** at field and watershed scales — quantifying flow, storage, and nutrient transport.
- **AI-driven environmental risk mapping** — flood, drought, and groundwater-vulnerability assessment with explainable AI.
- **Data-driven decision support** for sustainable agriculture — integrating modeling, sensor networks, and stakeholder input to evaluate Best Management Practices (BMPs).

Browse the [research](/projects/), [people](/people/), [publications](/publications/),
and [facilities](/facilities/) pages for more detail. You can also follow our work on
[X / Twitter](https://x.com/WaterHydroLab), [LinkedIn](https://www.linkedin.com/in/golmar-golmohammadi-35791a17/),
[ORCID](https://orcid.org/0000-0001-5532-3892), and [ResearchGate](https://www.researchgate.net/profile/Golmar-Golmohammadi).
