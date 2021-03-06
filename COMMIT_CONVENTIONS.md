# Commit Convention

`Tag` (`Scope`): `Message`

The `Tag` should be in the list above and be a gitmoji icon.

The `Scope` should define the context of the affected changes.

The `Message` should not be confused with git commit message.

The `Tag` is one of the following:

- `ð (:building_construction:)`-> Changes that affect the build system or external dependencies (docker, npm, makeâ¦)

- `ð·ð» (:construction_worker:)`-> Changes concerning the integration or configuration files and scripts (Travis, Ansible, BrowserStack ...)

- `â¨ (:sparkles:)`-> Added new functionality

- `ð (:bug:)`-> Bug fix

- `â¡ï¸ (:zap:)`-> Performance improvement

- `â»ï¸ (:recycle:)`-> Modifications which brings neither new functionality nor performance improvement

- `ð (:lipstick:)`-> Changes that brings no functional or semantic alteration (indentation, formatting, adding space, renaming of a variable ...)

- `â¬ï¸ (:arrow_up:)`-> Internal dependency upgrade

- `ð (:memo:)`-> Writing or updating documentation

- `â (:white_check_mark:)`-> Adding or modifying tests

- The `scope` should define the context of the affected changes.

- The `message` summaries description of the change in one sentence.

Examples:

```bash
â¨ (frontend): Added /category route to access images by category.
ð (database): Added migration to correct category structure.
ð·ð» (backend): Added linter tests
```
