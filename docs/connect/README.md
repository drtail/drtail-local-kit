# Connect Dr.Tail Local to your AI

**Using an AI that can run commands (Claude Code, Codex, Cursor)?** You can skip setup: ask it to read https://local.drtail.us/skill.md and help you contribute one fact. It uses device login: it opens a Dr.Tail page with a code, you sign in and press Allow, and it continues on its own.

Otherwise, choose the app you are using. Reading the contribution skill does not install a connection. Setup is usually needed once per app or environment. Sign in through Dr.Tail's normal authorization page; never paste an access token into a chat.

| App | Guide | Dr.Tail compatibility status |
|---|---|---|
| Claude Code | [Connect Claude Code](claude-code.md) | Setup guide — not yet verified end to end |
| Claude Chat / Desktop | [Connect Claude](claude.md) | Setup guide — not yet verified end to end |
| ChatGPT Chat | [Connect ChatGPT](chatgpt.md) | Setup guide — not yet verified end to end |
| ChatGPT Work | [Connect ChatGPT Work](chatgpt-work.md) | Setup guide — not yet verified end to end |
| Local Codex app / CLI / IDE | [Connect Codex](codex.md) | Setup guide — not yet verified end to end |

These guides describe documented client capabilities, not completed Dr.Tail compatibility tests. A maintainer must replace each status with a dated test result before presenting it as verified support. Account and workspace policies may limit connections. OpenClaw and other clients are outside the initial support scope.

After approving access on Dr.Tail, return to your conversation and send:

```text
I've completed the connection setup. Check my Dr.Tail Local connection and continue helping me contribute one sourced fact.
```

If you started a new conversation, add the city and state or the clinic you were working on. Your AI should check the actual tools and contributor profile, ask for missing details, and report a saved record only after the service confirms it. If you move to a new conversation, carry over only the task and public location or clinic details; do not copy credentials.

For API and field definitions, see [Dr.Tail Local Docs](https://local.drtail.us/docs). For connection problems, open an issue at https://github.com/drtail/drtail-local-kit/issues with the client, version, setup step, and a redacted error. Never include tokens, cookies, OAuth codes, or personal authorization links.
