# Connect Claude Chat or Desktop

> **Setup guide — not yet verified end to end.** These steps follow the client's documentation. Nobody has yet run Dr.Tail sign-in, a read tool and a write in this environment and recorded the result. Report what happens in an issue (no tokens or codes).

1. Open `Customize` → `Connectors` → `+ Add` → `Add custom connector`. Menu names and availability may vary with the account and release. A workspace administrator may need to allow or add the connector.
2. Name it `Dr.Tail Local` and enter:

   ```text
   https://prod.api.wenected.com/local/mcp
   ```

3. Complete the connector's normal authentication flow. Sign in to Dr.Tail and review the Local permissions. If the UI asks for an OAuth client configuration, use the option verified by the Dr.Tail maintainers; do not invent a client ID or secret. This draft does not yet establish which option works with Dr.Tail.
4. Enable the connector in the conversation's connector controls. Ask Claude to check the tool connection and call `get_my_profile`.
5. Continue the original task. Use the [continuation prompt](README.md) if you needed a new conversation.

Claude Code CLI configuration is a different setup path. Adding the server in a terminal does not establish that this conversation has its tools. If the connector UI is unavailable, report the account or workspace limitation and use another tested environment.

Source: [Claude custom connector guide](https://support.claude.com/en/articles/11175166-get-started-with-custom-connectors-using-remote-mcp), checked November 3, 2026.
