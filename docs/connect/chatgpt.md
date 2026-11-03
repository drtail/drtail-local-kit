# Connect ChatGPT (Chat)

> **Setup guide — not yet verified end to end.** These steps follow the client's documentation. Nobody has yet run Dr.Tail sign-in, a read tool and a write in this environment and recorded the result. Report what happens in an issue (no tokens or codes).

This guide covers ChatGPT Chat. ChatGPT Work is a separate environment with its own plugin install: see [Connect ChatGPT Work](chatgpt-work.md). Account policies apply.

1. Open ChatGPT's Plugins area. Select `+`, then `Add custom MCP server`.
2. Enter the name `Dr.Tail Local`, a short description, and the public server URL:

   ```text
   https://prod.api.wenected.com/local/mcp
   ```

3. Configure authentication through the supported flow. Review the connection notice and create it as a plugin. Sign in through Dr.Tail when prompted. Do not paste a token into the chat or use someone else's client secret.
4. Review the discovered tools, install the resulting plugin, and start a conversation with it selected. Use `@` to select the installed plugin where available.
5. Ask the AI to check the connection with `get_my_profile`, then continue one sourced contribution. Installation, account authentication, and successful tool use are separate checks.

If adding a custom MCP server is unavailable, check workspace policy and account availability. Do not substitute a Codex terminal command as a web setup step. A published Dr.Tail install link should only be added here after one exists and is tested. A maintainer can later package and share a plugin to reduce setup steps; this draft does not claim one is already published.

A working Chat setup is not evidence for ChatGPT Work or local Codex; each environment is tested separately.

Sources, checked November 3, 2026: [OpenAI connection and testing guide](https://developers.openai.com/plugins/deploy/connect-chatgpt), [MCP environments](https://learn.chatgpt.com/docs/extend/mcp), [Build and use plugins](https://learn.chatgpt.com/docs/build-plugins).
