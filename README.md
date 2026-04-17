# Claude + Splinter Signal Demo

This is a companion repo to the following Dev.to article:


This demo shows how Splinter can be used by AI agents in 
many ways, including through its non-interactive command line
utilties, `splinterctl` and `splinterpctl` for in-memory and
persistent stores respecitvely.

By providing a wrapper so the model isn't exposed to build
identifiers and command line semantics, we make it very easy 
for agents to signal the user, or each other.

# How To Run

You will need to install Splinter first:

https://github.com/splinterhq/libsplinter

After that run ./bigbang.sh and follow the prompts.

# What This Demo Did Not Touch on

 - Embedding what the agents journal with splinference so it can be
   searched by them using `splinterctl search` semantically. You can
   do this by running splinference, but another article in this series
   will cover it in-depth.

 - A million ways it probably could have been more captivating for (thing), 
   and that's because I'm just getting started.

# Contact
 
Tim Post <timthepost@protonmail.com>
