---
# =============================================================================
#  PEOPLE  ( /people/ )
# =============================================================================
#  This page lists every lab member with a photo, role, and bio.
#
#  HOW TO ADD A NEW MEMBER
#  -----------------------
#  1. Drop their photo in /assets/img/team/  (JPG or PNG, ~400×400 px).
#  2. Create a Markdown file /_pages/about_<firstname>.md with the bio.
#     See the existing about_*.md files as templates.
#  3. Add a new block to the `profiles:` list below, using `align: left` or
#     `align: right` to alternate the layout.
#  4. Keep the PI first; then current members; then alumni at the end.
#  5. Commit and push — the GitHub Actions workflow will rebuild the site.
#
#  TIP: the `align` field alternates left/right per entry, which produces
#  the zig-zag layout. Keep alternating.
#
#  TEAM PHOTOS — DOWNLOAD FROM OLD LAB SITE
#  ----------------------------------------
#  The old site at ufrcrecwater.com hosts real headshots for every
#  current and former member in a private S3 bucket (no public access,
#  signed URLs only). To replace the SVG placeholders below:
#    1. Open ufrcrecwater.com/team in a browser.
#    2. Right-click → "Save image as…" for each member.
#    3. Save into  assets/img/team/  using these filenames:
#         saba_shaghaghi.jpg     gurjoban_tiwana.jpg
#         namrata_ghimire.jpg    akhil_reddy.jpg
#         bhavan_voram.jpg       armaanjot_singh.jpg
#         seyed_mostafa.jpg      rohith_reddy.jpg
#         maxwell_naah.jpg
#    4. Replace ".svg" with ".jpg" on each `image:` line below.
# =============================================================================
layout: profiles
permalink: /people/
title: people
description: Members of the Watershed Hydrology Lab — PI, postdocs, graduate students, research staff, and alumni.
nav: true
nav_order: 2

profiles:
  # ---------- Principal Investigator ----------
  - align: right
    image: team/golmar_golmohammadi.jpg
    content: about_golmar.md
    image_circular: false
    more_info: >
      <p><strong>Assistant Professor (PI)</strong></p>
      <p>RCREC · SWES · ABE · Water Institute</p>
      <p>Joined: Jan 2022</p>

  # ---------- Graduate students ----------
  - align: left
    image: team/saba_shaghaghi.svg
    content: about_saba.md
    image_circular: false
    more_info: >
      <p><strong>Ph.D. Student</strong></p>
      <p>SWAT+ · BMP evaluation · ML</p>
      <p>Joined: Jun 2024</p>

  - align: right
    image: team/gurjoban_tiwana.svg
    content: about_gurjoban.md
    image_circular: false
    more_info: >
      <p><strong>M.S. Student</strong></p>
      <p>Nitrogen & irrigation in sandy Spodosols</p>
      <p>Joined: Jan 2025</p>

  - align: left
    image: team/namrata_ghimire.svg
    content: about_namrata.md
    image_circular: false
    more_info: >
      <p><strong>Biological Scientist II · Ph.D. Student</strong></p>
      <p>AI + physical models for water quality</p>
      <p>Joined: May 2025</p>

  - align: right
    image: team/armaanjot_singh.svg
    content: about_armaanjot.md
    image_circular: false
    more_info: >
      <p><strong>M.S. Student</strong></p>
      <p>Sustainable soil & water management</p>
      <p>Joined: Jan 2026</p>

  # ---------- Research staff ----------
  - align: left
    image: team/akhil_reddy.svg
    content: about_akhil.md
    image_circular: false
    more_info: >
      <p><strong>Research Data Scientist (OPS)</strong></p>
      <p>Data pipelines · AI/ML · decision-support systems</p>
      <p>Joined: May 2025</p>

  - align: right
    image: team/bhavan_voram.svg
    content: about_bhavan.md
    image_circular: false
    more_info: >
      <p><strong>Research Data Scientist (OPS)</strong></p>
      <p>Applied ML for env. & ag. systems</p>
      <p>Joined: May 2025</p>

  # ---------- Alumni (kept as a single grouped entry) ----------
  - align: left
    image: team/alumni.svg
    content: about_alumni.md
    image_circular: false
    more_info: >
      <p><strong>Lab Alumni</strong></p>
      <p>Former students and research staff</p>
---

<div class="whl-callout" markdown="1">
**Interested in joining the lab?** We welcome inquiries from prospective
M.S., Ph.D., and postdoctoral researchers with backgrounds in hydrology,
soil and water sciences, agricultural engineering, environmental science,
and related fields.
</div>

<div class="whl-btn-row">
  <a class="whl-btn whl-btn-primary" href="/contact/#join-the-lab"><i class="fas fa-user-graduate"></i> Join the lab</a>
  <a class="whl-btn" href="mailto:g.golmohammadi@ufl.edu?subject=Prospective%20student%20inquiry%20%E2%80%94%20Watershed%20Hydrology%20Lab"><i class="fas fa-envelope"></i> Email the PI</a>
  <a class="whl-btn" href="/projects/"><i class="fas fa-flask"></i> Research themes</a>
  <a class="whl-btn" href="/publications/"><i class="fas fa-book"></i> Publications</a>
  <a class="whl-btn whl-btn-ghost" href="/contact/"><i class="fas fa-paper-plane"></i> Contact</a>
</div>
