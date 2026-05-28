# Content Management (Sveltia CMS) — Setup & Operations Guide

This site can be edited from a browser by non-technical staff through
**[Sveltia CMS](https://github.com/sveltia/sveltia-cms)** — a fast, open-source,
**Decap-CMS-compatible** content manager.

- **Editor panel:** <https://watershedhydrologylab.com/admin/>
- **How it works:** the editor fills in forms; clicking **Save** commits the
  change to the GitHub repo (`HugoMachadoRodrigues/waterhydrolab.github.io`,
  branch `main`); **Cloudflare Pages** then rebuilds and publishes the site
  automatically (usually within ~5 minutes). Editors never touch code.

> The CMS edits **content** (text, images, items, ordering). The visual
> **design** (fonts, colors, sizes, spacing, layout) lives in the theme CSS
> (`assets/whl.css`) by design, so the site stays consistent.

---

## 1. Architecture

```
Editor's browser                GitHub repo                 Cloudflare
┌────────────────┐   commit    ┌──────────────────┐  push   ┌──────────────┐
│ /admin/        │ ──────────▶ │ waterhydrolab.   │ ──────▶ │ Pages build  │
│ (Sveltia CMS)  │             │ github.io (main) │         │ → publish    │
└──────┬─────────┘             └──────────────────┘         └──────────────┘
       │  OAuth login
       ▼
┌──────────────────────────────┐
│ sveltia-cms-auth Worker       │  (Cloudflare Worker — OAuth proxy to GitHub)
│ …workers.dev                  │
└──────────────────────────────┘
```

Two files in this repo drive the panel:

| File               | Purpose                                                                       |
| ------------------ | ----------------------------------------------------------------------------- |
| `admin/index.html` | Loads Sveltia CMS from its CDN.                                               |
| `admin/config.yml` | Defines the backend (GitHub), media folder, and the editable **collections**. |

---

## 2. One-time setup (already done — documented for the record)

Because the site is hosted on **Cloudflare Pages** (not Netlify), GitHub login
needs a small OAuth proxy. Three pieces:

### 2a. GitHub OAuth App

- Created at **GitHub → Settings → Developers → OAuth Apps**.
- **Application name:** `Watershed Hydrology Lab CMS`
- **Homepage URL:** `https://watershedhydrologylab.com`
- **Authorization callback URL:**
  `https://sveltia-cms-auth.rcrechydrologymactwo.workers.dev/callback`
- Produces a **Client ID** and a **Client Secret** (the secret is shown once —
  regenerate if lost).

### 2b. `sveltia-cms-auth` Cloudflare Worker (the OAuth proxy)

- Deployed from <https://github.com/sveltia/sveltia-cms-auth> ("Deploy to
  Cloudflare").
- Live URL: `https://sveltia-cms-auth.rcrechydrologymactwo.workers.dev`
- **Environment variables / secrets** (Worker → Settings → Variables and Secrets):

  | Name                   | Type                   | Value                                |
  | ---------------------- | ---------------------- | ------------------------------------ |
  | `GITHUB_CLIENT_ID`     | Text                   | _(Client ID from the OAuth App)_     |
  | `GITHUB_CLIENT_SECRET` | **Secret (encrypted)** | _(Client Secret from the OAuth App)_ |
  | `ALLOWED_DOMAINS`      | Text                   | `watershedhydrologylab.com`          |

  > Add other domains comma-separated if you ever want to log in from a
  > different host (e.g. a `*.pages.dev` preview).

### 2c. Point the CMS at the Worker

In `admin/config.yml`:

```yaml
backend:
  name: github
  repo: HugoMachadoRodrigues/waterhydrolab.github.io
  branch: main
  base_url: https://sveltia-cms-auth.rcrechydrologymactwo.workers.dev
```

---

## 3. Giving someone edit access

The GitHub backend lets anyone **with write access to the repo** save changes.

1. The person needs a free **GitHub account** (<https://github.com/signup>).
2. **GitHub → repo → Settings → Collaborators → Add people** → their username →
   role **Write**.
3. They **accept the email invitation**.
4. They can now sign in at `/admin/` and edit.

To revoke access, remove them from Collaborators.

---

## 4. What editors can change (collections)

Open <https://watershedhydrologylab.com/admin/> and pick a collection:

| Collection               | Edits                                                                                                                                                    |
| ------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Home page**            | Hero tagline, the three research pillars (add / edit / reorder), the PI photo + contact card, and the “About the Lab” text.                              |
| **News & Announcements** | Add / edit short announcements (homepage strip + News page).                                                                                             |
| **Research Projects**    | The research-theme cards (title, cover image, description, order, full text).                                                                            |
| **Team / People**        | Members list — **drag to reorder**, swap **photo**, edit **role/details** and **bio** per member; alumni grid + “Join the lab” block via the body field. |
| **Other Pages**          | The text of the **Facilities** and **Contact** pages.                                                                                                    |

### Adding images, maps, and videos (e.g. on Facilities)

- **Image:** click the image button in the editor (uploads to
  `assets/img/uploads/`), or type `![caption](/assets/img/uploads/file.jpg)`.
- **Map:** paste a Google Maps _embed_ iframe inside `<div class="whl-map"> … </div>`.
- **Video:** paste a YouTube/Vimeo embed iframe inside `<div class="whl-embed"> … </div>`.

---

## 5. Not in the CMS (edited in code)

- **Publications** (`_bibliography/papers.bib`) — BibTeX is not a CMS-friendly
  format. Add papers by editing `papers.bib` (or ask a developer).
- **Design / theme** (`assets/whl.css`, layouts in `_layouts/`, header/footer in
  `_includes/`) — changed by a developer to keep the look consistent.

---

## 6. Gotchas & troubleshooting

- **Login fails right after authorizing GitHub** → the `GITHUB_CLIENT_SECRET` on
  the Worker is wrong/missing, or the user lacks repo write access.
- **Login page never appears / "domain not allowed"** → `ALLOWED_DOMAINS` on the
  Worker must include the domain you are visiting. Use
  `watershedhydrologylab.com` (not the `*.pages.dev` URL).
- **`mailto:` buttons don't open an email** → this is Cloudflare's **Email
  Address Obfuscation** (Scrape Shield) rewriting `mailto:` links into
  `/cdn-cgi/l/email-protection#…`. Turn it **off**:
  Cloudflare dashboard → `watershedhydrologylab.com` → **Scrape Shield** →
  **Email Address Obfuscation** → **Off**.
- **A field disappears after an editor saves a page** → the page's front matter
  has a field not declared in `admin/config.yml`. Every structural field must be
  listed there (most are `hidden`) so Sveltia preserves it. Don't delete the
  `hidden` fields.
- **Edits don't appear on the live site** → check the Cloudflare Pages build
  status; a failed build won't publish. The GitHub Actions "Build (CI check)"
  validates the same build on every push.
- **Local editing without GitHub** (developers): run a local proxy and add
  `local_backend: true` to `admin/config.yml`, then `npx @sveltia/cms-proxy-server`.
