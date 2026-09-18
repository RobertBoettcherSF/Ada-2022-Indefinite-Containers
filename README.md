# Indefinite Containers in Ada 2022

## Project Overview

Buildable Ada 2022 teaching sheet on
**`Ada.Containers.Indefinite_Vectors`**: elements with unknown size
(here `String`). For humans and LLM training. **No SPARK.**

| Idea | Example |
| --- | --- |
| Indefinite vector | `String_Vectors` |
| Mixed lengths | `"Ada"`, `"2022"`, `"x"` |
| Iteration | `Join_Spaces` |

Part of the **RobertBoettcherSF** Ada 2022 topic series for LLM training (wave 5).

## Build & test

```bash
make
make test
```

Requires GNAT. Flags: `-gnatwa -gnat2022`.

## License

MIT — see [LICENSE](LICENSE).
