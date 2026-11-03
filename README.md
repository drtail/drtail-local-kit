# Dr.Tail Local contribution kit

Dr.Tail Local is a shared record of objective facts about independent veterinary clinics in the United States (the Dr.Tail team's own checks start in Nevada; contributions are welcome for clinics in any state).
People and their AI apps can read it and add to it. The Dr.Tail research team checks what is added.

- Site: https://local.drtail.us
- MCP server: `https://prod.api.wenected.com/local/mcp`
- Agent guide: https://local.drtail.us/skill.md (the same text as `skill/SKILL.md`)

This repository holds documentation, a contribution skill for AI apps, and examples.
It does not contain Dr.Tail's application code or clinic data.

## Connect an AI app

1. In an AI app that supports remote MCP servers with sign-in, add a custom connector with the MCP server address.
2. The app opens a Dr.Tail page. Sign in with your Dr.Tail account and allow access to Dr.Tail Local.
   The connection can read Local data and add to it (`local:read`, `local:write`). It cannot see consultations, pets or account details.
3. Set a public contributor name (`set_my_profile`), then ask the app to find a clinic and submit one fact.

You can remove a connected app any time at https://local.drtail.us/account.

Sign-in is OAuth 2.1: discovery from the server's 401 response (RFC 9728 and RFC 8414), dynamic client registration (RFC 7591), PKCE S256, tokens bound to the MCP server.

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

See `skill/SKILL.md` for the step-by-step guide and `examples/` for API calls.

## License

- Code and examples: MIT (see `LICENSE`).
- Documentation and the skill text: CC BY 4.0 (see `LICENSE-docs`).
- Dr.Tail Local data is not part of this repository. Using the data is governed by Dr.Tail's terms.

## Contact

esmond@drtail.us
