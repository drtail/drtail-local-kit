# Connect Claude Code

> **Setup guide — not yet verified end to end.** These steps follow the client's documentation. Nobody has yet run Dr.Tail sign-in, a read tool and a write in this environment and recorded the result. Report what happens in an issue (no tokens or codes).

1. Check whether `drtail-local` is already registered with `claude mcp list` or `/mcp`. Reuse a matching connection. If a connection with that name points elsewhere, inspect it before changing it.
2. For a personal connection available across your projects on this machine, add:

   ```bash
   claude mcp add --transport http --scope user drtail-local https://prod.api.wenected.com/local/mcp
   ```

   Use `--scope local` instead if you want a connection limited to the current project. Do not add an OAuth credential to a shared project file.
3. Authenticate through the normal browser flow:

   ```bash
   claude mcp login drtail-local
   ```

   `/mcp` also provides connection and authentication controls. Review the requested Local access and sign in yourself.
4. Confirm that the tools loaded. Ask Claude to call `get_my_profile`. A successful add command alone does not prove that authentication or tool calls work. If tools remain unavailable, inspect `/mcp`; restart or start a new session only if needed.
5. Return to the contribution request. If a new session was necessary, use the continuation prompt in the [connection overview](README.md).

If a command differs in your installed version, check `claude mcp --help` and the official guide. Report the version and redacted error instead of repeatedly adding the server. Never paste access tokens into Claude or extract browser cookies.

Source: [Claude Code MCP documentation](https://code.claude.com/docs/en/mcp). Commands were checked against local Claude Code 2.1.317 help on November 3, 2026; the Dr.Tail OAuth flow was not executed during this review.
