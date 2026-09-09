# Waitlist nurture — every segment, phone first

Built from the real table on 9 Sep 2026: 294 leads, 142 real phone numbers, 78 of them Indian.
One job for every email: **get a number, or get a booking.** Email never sells the course; the call does.

Rules that apply to all of it
- No countdown, no fake deadline. The VSL promises there isn't one.
- $50 a month is the only cost, and it goes to the platform, not Blake. Say it early, never hide it.
- The thing on offer is "your own Jarvis," not "a course." Course is the how, Jarvis is the what.
- Short. These people came off a reel, not a newsletter.
- Sender: Blake, from an @theaiagencybuilder.com address once DKIM is live. Reply-to a real inbox.

---

## A. Instant — fires on every new signup (SMS, within 60s)

**Non-India, has phone**
> Got you, [first name]. Blake here. Someone from my team will call you today to get your Jarvis set up — it'll be a number you don't recognise, so pick up. Reply STOP to opt out.

**India, has phone** (email only — SMS into India is unreliable; send the same as an email)
> Got you, [first name]. My team's in Australia so rather than ring you at 3am, grab a time here and we'll get your Jarvis set up: [booking link]

**No phone** (email)
> Subject: One thing before I can set you up
>
> [First name], you're on the list. I just can't do anything with an email address — the whole thing happens on a five minute call.
>
> Drop your number here and my team will ring you today: [phone-only page link]
>
> Blake

---

## B. Backlog — the 91 who answered questions but never gave a phone

**Day 0 — Subject: You got most of the way there**
> [First name], you signed up for your own Jarvis and answered the questions, then dropped off before the last bit.
>
> Fair enough. Here's the last bit: a number, so someone can actually get you set up.
>
> [phone-only page link]
>
> It's a five minute call. No pitch — you already know what it costs: fifty a month for the platform, nothing to me.
>
> Blake

**Day 2 — Subject: What Jarvis did last night**
> While I was asleep last night, Jarvis went and built me a fresh list of local businesses that are missing something they'd pay for. That's the bit people don't believe until they see their own one do it.
>
> *(Once there's a real overnight run with a real count, swap in the number. No count exists on disk yet, so do not invent one.)*
>
> Yours does the same thing once it's built. Building it is the call.
>
> [phone-only page link]
>
> Blake

**Day 5 — Subject: Last one from me**
> [First name], I'm not going to keep emailing. If you want your Jarvis set up, the number goes here: [phone-only page link]
>
> If not, no hard feelings — keep the fifty bucks.
>
> Blake

---

## C. Backlog — the 37 who registered and answered nothing

**Day 0 — Subject: You registered, then vanished**
> [First name], you put your email in and didn't answer anything. Two possibilities: you got busy, or you weren't sure it was real.
>
> It's real. My own Jarvis runs my agency — finds the businesses, builds what I sell them. Yours gets built on a five minute call with my team.
>
> Only thing I need is a number: [phone-only page link]
>
> Blake

**Day 2 — Subject: "Yes, if it actually works"**
> That's what a third of the people on this list said when I asked if they'd use it. Honest answer, and the right one.
>
> So don't take my word for it. The call is where you watch your own one get built and do its first job. If it doesn't work, you'll know in five minutes and you've lost nothing.
>
> [phone-only page link]
>
> Blake

**Day 5 — Subject: Last one from me**
> Same as B day 5.

---

## D. India — 78 with phones, email and self-booking only

**Day 0 — Subject: Your Jarvis, and a time that works for you**
> [First name], you're on the list. My team's in Australia, so rather than call you in the middle of your night, pick a time that suits you and we'll get your Jarvis set up then:
>
> [booking link]
>
> Five minutes, no pitch. The only cost is the platform, about fifty a month, and none of it comes to me.
>
> Blake

**Day 3 — Subject: What Jarvis did last night**
> Same as B day 2, with the booking link instead of the phone page.

**Day 7 — Subject: Last one from me**
> [First name], last email. If you want your Jarvis, book here: [booking link]. If not, all good.
>
> Blake

---

## E. Hot — 64 non-India with a real number (Jacob's list)

No email. **Jacob calls.** If no answer, one SMS, then a second call next day:

> Tried to ring you about getting your Jarvis set up — it was me, not spam. I'll try again tomorrow, or reply with a time that suits. Jacob (Blake's team)

After two misses, drop to sequence B day 2 onward by email.

---

## What each sequence needs to exist before it can run
- **Phone-only page**: built at `/number/`. Link as `/number/?e=EMAIL&n=FIRSTNAME`. Writes to `waitlist_events` as `phone`.
- **Booking link**: GHL calendar for Jacob, or Calendly. Blake's call which.
- **Sending domain**: SPF done, DMARC and DKIM pending. Nothing sends until DKIM.
- **The finder number** for B/D day 2: optional upgrade once a real overnight run exists. The copy works without it.
