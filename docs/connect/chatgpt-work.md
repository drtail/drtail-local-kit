# Connect ChatGPT Work

> **Setup guide — not yet verified end to end.** These steps follow the client's documentation. Nobody has yet run Dr.Tail sign-in, a read tool and a write in this environment and recorded the result. Report what happens in an issue (no tokens or codes).

ChatGPT Work uses plugins installed for that workspace. A plugin set up in ChatGPT Chat, or a local Codex MCP setting, does not make Dr.Tail Local available in Work. Workspace administrators may control whether custom MCP servers can be added.

1. In the Work environment, open the Plugins area. Select `+`, then `Add custom MCP server`. If the option is missing, your workspace policy may not allow custom servers; ask the workspace administrator instead of using a workaround.
2. Enter the name `Dr.Tail Local`, a short description, and the public server URL:

   ```text
   https://prod.api.wenected.com/local/mcp
   ```

3. Configure authentication through the supported flow and create it as a plugin. Sign in through Dr.Tail when prompted and review the Local access yourself. Do not paste a token into the chat or use someone else's client secret.
4. Review the discovered tools, install the plugin for Work, and confirm that it is enabled there. Start a new task with the plugin available.
5. Ask the AI to check the connection with `get_my_profile`, then continue one sourced contribution. Installation, account authentication, and successful tool use are separate checks.

Work Cloud access and local computer access do not by themselves install this plugin or grant a Dr.Tail account connection. Do not substitute a Codex terminal command as a Work setup step. A published Dr.Tail install link should only be added here after one exists and is tested.

Sources, checked November 3, 2026: [OpenAI connection and testing guide](https://developers.openai.com/plugins/deploy/connect-chatgpt), [MCP environments](https://learn.chatgpt.com/docs/extend/mcp), [Build and use plugins](https://learn.chatgpt.com/docs/build-plugins).
