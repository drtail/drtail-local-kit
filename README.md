# Dr.Tail Local contribution kit

Dr.Tail Local is a shared record of objective facts about independent veterinary clinics in the United States (the Dr.Tail team's own checks start in Nevada; contributions are welcome for clinics in any state).
People and their AI apps can read it and add to it. The Dr.Tail research team checks what is added.

- Site: https://local.drtail.us
- MCP server: `https://prod.api.wenected.com/local/mcp`
- Agent guide: https://local.drtail.us/skill.md, served from `skill/SKILL.md` in this repository (the source). `scripts/check-skill-sync.sh` checks that the two match; the Skill sync workflow runs it daily and on every push.

This repository holds documentation, a contribution skill for AI apps, and examples.
It does not contain Dr.Tail's application code or clinic data.

## Connect an AI app

**Fastest, for AIs that can run commands (Claude Code, Codex, Cursor):** paste this into your AI.

```text
Read https://local.drtail.us/skill.md and help me contribute one useful fact to Dr.Tail Local.
```

It signs in with **device login**: it opens a Dr.Tail page with a short code, you sign in and press Allow, and it carries on by itself. No MCP setup or restart. Details are in the skill's "Device login API" section.

**Chat apps (claude.ai, Claude Desktop, ChatGPT)** add Dr.Tail Local as a connector. Pick the guide for the app you use. Each one is a **setup guide that has not yet been verified end to end** with Dr.Tail.

| App | Guide |
|---|---|
| Claude Code | [docs/connect/claude-code.md](docs/connect/claude-code.md) |
| Claude Chat / Desktop | [docs/connect/claude.md](docs/connect/claude.md) |
| ChatGPT Chat | [docs/connect/chatgpt.md](docs/connect/chatgpt.md) |
| ChatGPT Work | [docs/connect/chatgpt-work.md](docs/connect/chatgpt-work.md) |
| Local Codex app / CLI / IDE | [docs/connect/codex.md](docs/connect/codex.md) |

In every app the shape is the same: add the MCP server address, sign in on the Dr.Tail page that opens and approve Local access (`local:read`, `local:write`), then ask your AI to check the connection with `get_my_profile`. The connection cannot see consultations, pets or account details. You can remove a connected app any time at https://local.drtail.us/account.

Sign-in is OAuth 2.1: discovery from the server's 401 response (RFC 9728 and RFC 8414), dynamic client registration (RFC 7591), PKCE S256, tokens bound to the MCP server. Apps with a terminal can use the device authorization grant (RFC 8628) at `https://prod.api.wenected.com/local/oauth/device_authorization`; signing in again from the same app name reuses one connection.

## Tools

| Tool | What it does |
|---|---|
| `search_clinics` | Find listed independent clinics by name or city, or near a point |
| `get_clinic` | Approved facts with source and dates, plus open reports |
| `list_fields` | Fields with meaning and JSON Schema (`status: proposed` for suggestions) |
| `get_my_profile`, `set_my_profile` | Your public contributor name and links |
| `submit_fact` | Add one fact with its source and when it was seen |
| `propose_clinic` | Suggest an independent clinic that is not listed |
| `propose_field` | Suggest a new kind of fact |

## Rules

- Independent general clinics in the United States (50 states and DC). Chains and emergency hospitals are left out.
- Facts, not opinions. No ratings, reviews or personal data.
- Every fact has a source and the time it was seen (`observed_at`). Web facts include the page address.
- New reports show as reported, not yet verified, and never replace a fact the Dr.Tail team verified.
- Retries with the same `idempotency_key` return the first submission.

See `skill/SKILL.md` for the step-by-step guide, `docs/connect/` for app setup, `examples/` for API calls and [CONTRIBUTING.md](CONTRIBUTING.md) to improve a guide or report a connection problem.

## License

- Code and examples: MIT (see `LICENSE`).
- Documentation (README, CONTRIBUTING, `docs/`) and the skill text: CC BY 4.0 (see `LICENSE-docs`).
- Dr.Tail Local data is not part of this repository. Using the data is governed by Dr.Tail's terms.

## Contact

esmond@drtail.us
