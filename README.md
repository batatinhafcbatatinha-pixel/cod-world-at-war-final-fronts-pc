# Call of Duty: World at War — Final Fronts — Native PC Port (work in progress) | PlayStation 2 Static Recompilation

> [!WARNING]
> This repository does **not** include the game, an ISO/ELF, Activision/Rebellion assets, generated game code or a precompiled executable.
> You need your own PlayStation 2 USA disc. See [the full notice](#notice) at the end.

An experimental port of the PlayStation 2 game *Call of Duty: World at War — Final Fronts* (USA/Canada), built through static recompilation of the Emotion Engine code with [PS2Recomp](https://github.com/ran-j/PS2Recomp). **This public repository is a work-in-progress source snapshot, not a ready-to-play game download or a self-contained build kit yet.** The game's MIPS code is translated locally from your own disc; no game executable or generated game code is distributed here.

## Status

- Boots through the menus and video playback into the first mission, with scenery, soldiers and HUD drawn, at roughly 10–11 fps in the mission. Not playable end to end.
- EE (R5900) code: 81,680 functions recompiled ahead of time to C++, compiled into a game library and linked with the PS2Recomp runtime.
- Graphics: optional hardware GS renderer (`PS2X_GS=hw`) and native VU1 blocks adopted from the God of War native port; the stock runtime GS is still available.
- Known issues: the main thread occasionally dies during videos (about 1 in 11 runs); some large stretched polygons remain in the scene; parts of the renderer are slow. IOP and VU still run through interpreters in the runtime, so this is not a fully native port.
- Developed on Windows x64. [Linux](LINUX.md) builds use the same sources but the full game has not been built or run there. [macOS](MACOS.md) build files are included: experimental, and not compiled or run with this game's code yet.

## What is in this repository

- `scripts/` — function-gap discovery, supplemental-function generation and integration, chunking of generated sources, syscall scan, VU1 AOT generator, profiling and campaign-drive helpers.
- `config/` — recompiler configuration (`recomp.toml`, supplemental function sets, analyzer heuristics). Ghidra CSV exports are not included.
- `build-*.cmd`, `run-game.cmd`, `jogar-*.cmd`, `test-*.cmd` — local build, test and launch scripts.
- [NOTES.md](NOTES.md) — the full development log (in Portuguese), including every runtime fix and diagnostic switch. [CONTROLES.md](CONTROLES.md) — controls and video shortcuts.

The modified PS2Recomp runtime (memory layout, GS/VU1 integration, HLE fixes) is the `third_party/PS2Recomp` submodule. The game-specific supplements include generated code and stay private, so the local scripts still expect the author's workspace layout (`../third_party/PS2Recomp`).

## Your game files

Only the USA/Canada disc is targeted (Redump MD5 of the ISO `1cda43af4beb779a1429fa9f1473235a`).

```text
SLUS_217.46  e191d4275760546a7a0f3a6ee3d7b8bc2c5205ec30a9e6bdb61436237e83b4c3
```

Do not upload the ISO, extracted files, Ghidra databases, generated code or the built executable.

## Controls

Windowed (`jogar-janela.cmd`), fullscreen and borderless launchers are included; F9/F10/F11 switch modes. Xbox-style controllers map to the DualShock 2 layout and the keyboard is mapped as well; see [CONTROLES.md](CONTROLES.md).

## Credits and licenses

- Port integration, runtime fixes and tooling: [batatinhafcbatatinha-pixel](https://github.com/batatinhafcbatatinha-pixel).
- [PS2Recomp](https://github.com/ran-j/PS2Recomp) by ran-j and contributors: recompiler, analyzer and runtime base.
- Native VU1 layer and hardware GS renderer from the God of War PS2 native port (Waffle565; renderer lineage from a Shadow of the Colossus port), GPL-3.
- [Ghidra](https://github.com/NationalSecurityAgency/ghidra) with the [ghidra-emotionengine-reloaded](https://github.com/chaoticgd/ghidra-emotionengine-reloaded) extension, used locally for function discovery.
- Call of Duty: World at War — Final Fronts, its code, trademarks and assets belong to Activision, Rebellion and the respective rights holders. This project is not affiliated with or endorsed by them or by Sony.

---

<a id="notice"></a>

**⚠️ THIS PROJECT DOES NOT INCLUDE THE GAME, AN ISO/ELF, GAME ASSETS, GENERATED GAME CODE OR A PRECOMPILED GAME EXECUTABLE. YOU MUST PROVIDE YOUR OWN LAWFULLY OBTAINED GAME FILES AND HAVE THE RIGHTS REQUIRED FOR YOUR USE. THIS PROJECT DOES NOT AUTHORIZE COPYRIGHT INFRINGEMENT. ALL GAME RIGHTS BELONG TO THEIR RESPECTIVE OWNERS. ⚠️**
