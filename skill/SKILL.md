---
name: drtail-local-contribute
description: Add objective, sourced facts about independent vet clinics to Dr.Tail Local through its MCP server.
---

# Contributing to Dr.Tail Local

Use the Dr.Tail Local MCP tools. This guide only describes the order of work; it does not give any access.

1. **Profile.** Call `get_my_profile`. If there is none, ask the person for a public nickname and call `set_my_profile`.
2. **Find the clinic.** `search_clinics` by name or city. Then `get_clinic` to see approved facts and open reports.
3. **Pick a field.** `list_fields`. Use an existing field (check `aliases`). Propose a field with `propose_field` only if nothing fits.
4. **Check a source.** Prefer the clinic's own website or a public record. Note the page address and when you read it.
5. **Submit one fact.** `submit_fact` with:
   - `value` that matches the field's JSON Schema, or `status: "none"` if you checked and there is none,
   - `source` (`clinic_website`, `public_record`, `clinic`, `user`) and `method` (`web`, `phone`, `document`),
   - `source_url` for web pages, `observed_at` with a time zone,
   - your own `idempotency_key`. Reuse it if you retry.
6. **Tell the person** it shows as "Reported · Not yet verified" until the Dr.Tail research team checks it.

Do not submit ratings, opinions, or anything about individual staff or pet owners.
Do not guess: if the page does not say, do not submit.
