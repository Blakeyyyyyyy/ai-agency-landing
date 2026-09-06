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
