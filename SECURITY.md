# Security Policy

This is an interactive demonstration to show Splinter's usefulness as a non-blocking,
high-speed shared memory substrate that facilitate agentic coordination and local
semantic-backed auditable memory of tasks. It is an on-going installment series that
explores the various ways that Splinter can help coordinate agentic governance and 
observation.

## This Repository Contains Automated Autonomous Instruction Sets

`CLAUDE.md` and `SPEC.md` instruct Claude Code on how and what to build in this 
demonstration. You should inspect both of them for suitability prior to running.

Treat untrusted agentic configurations like sketchy NPM post-install scripts,
including this one.
 
## Supported Versions

If you spot a problem (particularly in the spec or Claude instructions) please open an issue.

This is an open source project, not an open product. Please be as thorough as you can in 
showing the steps to reproduce the issue.

## Splinter Uses UNIX Permissions Only

Memory-mapped files are, well, *files*. Unix permissions, groups, pluggable authentication
modules, and other tools is what defines access to Splinter. The library is written for 
as close to 100% mechanical sympathy with GNU/Linux operating systems as possible, which
means not implementing what they already provide, such as authentication and control 
mechanisms.

You can also use kernel-level auditing, but ioctl() just to pass a set of bounded address
references is a little weak .. probably just want a FIFO daemon with Splinter's `eventfd`
broker if you have to watch every action of every store - just let the kernel wake you
up when it changes.
