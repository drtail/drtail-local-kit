# Connect local Codex

> **Setup guide — not yet verified end to end.** These steps follow the client's documentation. Nobody has yet run Dr.Tail sign-in, a read tool and a write in this environment and recorded the result. Report what happens in an issue (no tokens or codes).

**Simplest: device login.** Ask Codex: "Read https://local.drtail.us/skill.md and help me contribute one useful fact to Dr.Tail Local." It starts a device login, opens a Dr.Tail page with a short code, and continues after you sign in and press Allow. No MCP configuration needed.

The steps below add Dr.Tail Local as an MCP server instead.

1. Inspect the existing MCP servers. Reuse a matching `drtail-local` entry instead of adding a duplicate.
2. In the app's MCP settings, add a Streamable HTTP server named `drtail-local` with this URL:

   ```text
   https://prod.api.wenected.com/local/mcp
   ```

   In a supported Codex CLI version, the equivalent setup is:

   ```bash
   codex mcp add drtail-local --url https://prod.api.wenected.com/local/mcp
   codex mcp login drtail-local
   ```

   Check `codex mcp --help` for your installed version. Use the app's Authenticate control when connecting through the app. Follow its restart prompt if one appears.
3. Sign in through Dr.Tail's browser authorization flow. Review Local permissions yourself.
4. Confirm loaded tools through the host's MCP status controls and ask the AI to call `get_my_profile`. Then continue your contribution request.

The app, CLI, and IDE can share local Codex MCP configuration on the same host. ChatGPT web does not read that local configuration. A cloud task also needs its own supported tool access; a local success is not a cloud test.

Source: [Official MCP configuration guide](https://learn.chatgpt.com/docs/extend/mcp), checked November 3, 2026. The CLI syntax above is a documentation-based draft, not a Dr.Tail connection test executed during this review.
