# EQ Mirror

**Analog, made visible.**

Put one EQ Mirror before your EQ and one after it, and you'll see the curve your EQ is actually applying. There's nothing to set up.

→ **[Download the free trial](https://github.com/tokyomeltdown/eq-mirror/releases/latest/download/EQMirror.pkg)** — 14 days, every feature, no account needed
→ **[Landing page](https://tokyomeltdown.github.io/eq-mirror/)**
→ **[Buy on Gumroad — $18](https://tokyomeltdown.gumroad.com/l/eqmirror)**

---

## What it does

- **Measures instead of asking.** A plug-in cannot read another plug-in's curve, so EQ Mirror compares the audio going into your EQ with the audio coming out, and draws the difference.
- **Nothing to set.** The two instances find each other on the track, work out which is first, and measure the EQ's latency to line themselves up — linear phase included.
- **Boost and cut at a glance.** Warm above the line, cool below it, the largest of each labelled. The spectrum after the EQ sits faintly behind the curve.
- **Left/right and mid/side.** When the two sides are treated differently, the curve opens into a band and says whether it is L / R or M / S.
- **Distortion as one number.** How much of what comes out is not explained by the curve.
- **Never touches your sound.** Bounces with and without it are bit-identical, and it adds no latency.

## Requirements

- macOS 12 or later
- Apple silicon or Intel
- AU, VST3 and AAX, in any DAW that hosts them
- Signed and notarized

## Privacy

Your audio is analysed in memory and never written or sent anywhere. The network is used once, to check your licence key when you activate.

## Support

[tokyomeltdown.ai@gmail.com](mailto:tokyomeltdown.ai@gmail.com?subject=EQ%20Mirror%20support)

---

This repository hosts the landing page and the installer only. The plug-in's source is not public.

The licence page is generated from the product's own licence text by `make-eula.py`; the icon and the social card are rendered by `make-og.sh`.

© 2026 tokyomeltdown
