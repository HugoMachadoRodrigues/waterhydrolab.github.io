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
