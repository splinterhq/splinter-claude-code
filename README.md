# Claude Code + Splinter Signal Demo

Companion repo to an article I never published because Claude Code changed
under the hood so much. The interation worked great, but the tutorial content
was instantly stale, so I just kept the repo and scrapped the article.

[Splinter][1] is a shared-memory substrate for AI workflows. This demo shows
how agents can use it as a governance and coordination bus — signaling
activity in real time, journaling decisions, and lighting up a Star Trek
TOS-inspired LCARS display as they work.

No daemons, no sockets, no middleware. Just shared memory and shell wrappers
thin enough that any agent following instructions can use them.

## What You'll See

A Claude Code agent executes a spec, signals its activity at each step via
`scripts/spl-signal`, journals decisions via `scripts/spl-journal`, and a
Deno/Hono SSE server drives a 63-segment LCARS display that pulses in real
time as signal groups fire.

After the run, the persistent bus file contains everything the agent wrote
which can be inspected with `splinterpctl` or `splinter_cli`.

## Requirements

- Splinter: https://github.com/splinterhq/libsplinter
- Deno (for the LCARS display)
- Claude Code (or any agent that can execute shell commands and read CLAUDE.md)

## How To Run

**Before running:** Read `CLAUDE.md` — it contains the instructions your 
agent will follow. Treat any instruction file in a cloned repo the same way 
you'd treat an unfamiliar NPM postinstall script. I've vetted this one, but 
the habit matters more than the trust. You should also be sure of everything
in `spec.md`, as this is what the agent will be building.

```bash
./bigbang.sh        # with LCARS display
./littlebang.sh     # without (no Deno required)
```

Then tell Claude Code: `Execute the spec in spec.md` after you've started it
in another terminal and trusted the repository. 

## The Build Artifact

The agent will build a Python script that utilizes splinter to bypass the GIL
for instant IPC signaling. You'll see it "light up" when the agent signals itself
using it.


The created interface will be in `demo/` once the run completes. 

## What This Demo Doesn't Cover

Semantic search over agent journals via `splinference`: the embedded
sidecar that runs Nomic Text 1.5 against everything agents write. That's
the focus of the next article in this series.

## Contact

Tim Post <timthepost@protonmail.com>

  [1]: https://splinterhq.github.io
