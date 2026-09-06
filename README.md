# AI Agency — landing page

The VSL landing page. Deployed separately from the course portal and pointed at
Blake's own domain; the course stays on its Netlify subdomain.

- `index.html` — the whole page. One inline style block, one inline script, no build step.
- `register/` — the waitlist/registration flow the CTAs point at.
- `vsl-img/` — founder photo and payment proof images.

## Deploy
Drag the folder into Netlify, or connect this repo with publish directory `.`.
No build command.

## Before it goes public
- VSL_URL in index.html is still empty — the video slot stays blank until the VSL is cut.
- The founder letter runs the NEUTRAL sponsorship wording. The full "they cover the cost"
  variant only goes live once Base44 confirms.
- Registration must be genuinely closable, because the video promises "when the spots are
  used, registration just closes".

## This page has a twin, and the twin is the one currently earning

`register/` is a copy of the waitlist page that also lives in the course portal at
`public/jarvis-aiagency/`. **The portal copy is canonical today.** Blake's Instagram
link-in-bio and the ManyChat chain both point at the netlify URL, it is taking real
signups (~60-68% of landers), and his Telegram alerts fire off it.

This copy becomes canonical the moment he repoints the bio link at his own domain.
**Until that switch, both are live and must stay in sync** — a change to one needs
mirroring to the other. Do not delete or stop maintaining either.

Two differences that are deliberate, not drift:
- Signups from this copy tag `src` as `landing` by default, so the two pages are
  distinguishable in Supabase. `?src=` still overrides.
- Pageview de-duplication uses localStorage, which does not cross domains. One person
  visiting both pages counts as two unique views, so a combined conversion rate will
  read lower than reality while both are live.
