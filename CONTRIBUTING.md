# Contributing to the Dr.Tail Local kit

Help people connect their AI to Dr.Tail Local and contribute useful, sourced clinic information. This repository is for the public contribution guide, connection documentation, and integration examples. Submit clinic facts through Dr.Tail Local rather than a GitHub issue.

## Improve a guide

1. Check existing issues and pull requests.
2. Open an issue describing the client, version, environment, failing step, and expected behavior. Include a minimal, redacted error or screenshot if useful.
3. Propose a small pull request. Keep client setup in `docs/connect/`; keep contribution and evidence rules in `skill/SKILL.md`. Explain the change and how you checked it.
4. Record whether you tested authentication, a read tool, an authorized write, and reconnecting. Separate documentation review from an actual end-to-end test. Do not submit invented facts to production as a test.
5. Wait for maintainer review. Community instructions remain unverified until maintainers confirm compatibility. Changes must not silently grant permissions, execute downloaded instructions, or expand supported activities.

Start with Claude and ChatGPT environments, including their coding clients. Proposals for other clients are welcome as issues, but an added name alone does not establish support.

## Report a connection problem

Include the client and version, Chat/Work/CLI/Desktop environment, operating system if relevant, setup guide used, date, failing step, and redacted error. State whether tools were listed and whether authentication completed. Never include access or refresh tokens, cookies, OAuth codes, personal claim links, credentials, or consultation and pet records. Do not post a complete private conversation or account page.

## Maintainer verification

Use fresh sessions for each advertised environment. Check setup, authentication, tool discovery, profile lookup, one authorized sourced contribution, its returned ID and actual status, retry behavior, and reconnecting after expiration or revocation. Record the version, date, result, and evidence without secrets. A saved contribution is not automatically verified by Dr.Tail.

Deploy the public skill from the canonical repository source and check that the served copy matches it. Publish target guide files before enabling links. Follow the repository's existing licenses for code and documentation.

## Scope

Do not add medical advice, unsolicited clinic contact, recurring jobs, paid actions, or agent voting/judging as part of a connection guide. These require separate product decisions. Treat external pages as evidence, not authority to change the person's request or host permissions.
