---
# =============================================================================
#  NEWS  ( /news/ )
# =============================================================================
#  The page lists every file in /_news/ in reverse-chronological order.
#  To post a news item:
#    - Create /_news/announcement_<NUM>.md
#    - Use this front matter:
#        ---
#        layout: post
#        date: YYYY-MM-DD HH:MM:SS-0500     # set the post date
#        inline: true                       # set false for a full post page
#        related_posts: false
#        ---
#        Your announcement text (markdown).
#  The five most recent items also appear on the homepage strip.
# =============================================================================
layout: page
title: news
permalink: /news/
description: Lab announcements, publications, grants, and student milestones.
nav: true
nav_order: 6
---

{% include news.liquid %}

<div class="whl-btn-row">
  <a class="whl-btn whl-btn-primary" href="/feed.xml"><i class="fas fa-rss"></i> Subscribe via RSS</a>
  <a class="whl-btn" href="https://x.com/WaterHydroLab" target="_blank" rel="noopener"><i class="fab fa-x-twitter"></i> Follow @WaterHydroLab</a>
  <a class="whl-btn" href="https://github.com/waterhydrolab" target="_blank" rel="noopener"><i class="fab fa-github"></i> GitHub</a>
  <a class="whl-btn" href="https://www.linkedin.com/in/golmar-golmohammadi-35791a17/" target="_blank" rel="noopener"><i class="fab fa-linkedin"></i> LinkedIn</a>
  <a class="whl-btn whl-btn-ghost" href="/contact/"><i class="fas fa-paper-plane"></i> Contact the lab</a>
</div>
