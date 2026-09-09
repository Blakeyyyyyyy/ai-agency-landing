# AI Agency — Launch Runbook

Everything to go from "285 dead leads" to "leads called within the hour, funnel closed end to end."
Written 9 Sep 2026. Numbers from the live table that night: 294 leads, 142 with real phones (78 India), 64 callable non-India.

The order matters. Each block unblocks the next.

---

## BLOCK 1 — Make the domain able to send (you, ~5 min)

Only DKIM is missing. SPF and DMARC are already live and correct.

1. Google Workspace admin → Apps → Google Workspace → Gmail → **Authenticate email**
2. Select theaiagencybuilder.com → **Generate new record** (2048-bit)
3. Copy the value it gives you
4. Netlify DNS → Add record: **TXT**, name `google._domainkey`, value = what Google gave you
5. Back in Workspace, click **Start authentication**

Until this resolves, every email you send lands in spam. Nothing in Block 3 works without it.

Check it's live: `dig +short TXT google._domainkey.theaiagencybuilder.com` returns a long v=DKIM1 string.

---

## BLOCK 2 — Stand up the CRM (you, ~20 min)

Get your OWN GoHighLevel account. Do not sub under TIB — TIB is itself a sub-account, so hosting under it means depending on Liam's agency, which just ended.

1. gohighlevel.com → 14-day trial → **$97/mo Starter** (one sub-account is all you need)
2. Settings → Phone Numbers → buy: **1 AU, 1 US, 1 CA, 1 NZ** (~$1.15–3/mo each). Skip India — SMS into India needs DLT registration and won't deliver.
3. Settings → Business Profile → connect a sending email on theaiagencybuilder.com (uses the DKIM from Block 1)
4. Add Jacob as a user (Settings → My Staff), calendar-only + conversations
5. Build one pipeline: **New → Called → Booked → Signed up → Lost**

That's the whole CRM. Ignore Zapier/Typeform/Calendly/Kit from Liam's old doc — GHL does all of it.

---

## BLOCK 3 — Get the 294 backlog moving (me, once Blocks 1+2 exist)

- Import the two CSVs I built (`jacob-call-list` and `india-email-only`) into GHL as contacts, tagged by segment.
- Load the nurture sequences from `sequences.md` as GHL workflows (email + SMS, merge fields ready).
- **Jacob starts calling the 64** top-down: 13 "Yes ready" first, then newest. Script below.
- The 78 India get the self-book email with a GHL calendar link.
- The 91 "warm no phone" and 37 "cold" get the phone-capture emails pointing at `/number/`.

---

## BLOCK 4 — Instant response on new signups (me, needs GHL webhook)

New waitlist row → GHL inbound webhook → SMS within 60s + task on Jacob's board.
The Supabase table already fires a Telegram ping to you on every new lead; I'll add the GHL webhook alongside it, not replace it.

- Non-India: "Got you [name]. My team calls you today from a number you don't know. Pick up."
- India: "Got you [name]. Grab a time here: [calendar]"

---

## BLOCK 5 — Content → funnel (you, ~5 min)

Your Jarvis reels already do the selling. Point them at the funnel:
- New ManyChat keyword (JARVIS or AGENCY) → DM the VSL link. Copy in `MANYCHAT-SETUP.md`.
- Every reel CTA becomes "comment JARVIS". One build, every reel feeds it.

---

## BLOCK 6 — Base44 approval (you, before any of this earns)

Attribution is FIRST CLICK. The student MUST sign up through your link, incognito, fresh email, no VPN, or the commission goes elsewhere. Jacob does this live on the call.
And Base44 review the offer/funnel/sales process/retention in Slack before you go live. **Nothing has been submitted yet.** Submit this week or the leads convert and you earn nothing.

---

## The single critical path

DKIM (5 min) → GHL + numbers (20 min) → I import the backlog and load the sequences → Jacob calls the 64 tomorrow → new leads get instant SMS → reels point at the VSL → Base44 approves so it pays.

Six of these are 5–20 minute jobs that only you can do because they need your logins. Do those and everything downstream is already built.
