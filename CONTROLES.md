# Controles e vídeo

Abra `jogar-janela.cmd`, `jogar-tela-cheia.cmd` ou `jogar-sem-bordas.cmd`.
`run-game.cmd` usa a preferência salva em `video-settings.cfg`. Também aceita `run-game.cmd "caminho.iso" borderless` (ou `windowed` / `fullscreen`).

- **F9:** janela 1920×1080, redimensionável.
- **F10:** alterna janela sem bordas na resolução do desktop.
- **F11 ou Alt+Enter:** alterna tela cheia, com resolução solicitada de 1920×1080.
- **F8:** mostra/oculta ajuda de controles.
- Fechar pela janela ou Alt+F4. Escape é Voltar no jogo.

A troca por atalho salva o modo para a próxima abertura. Uma janela 1080p pode ultrapassar a área útil de monitores menores. O framebuffer PS2 é ampliado para a janela mantendo a proporção atual; esta alteração não aumenta a resolução interna nem implementa widescreen.

## Gamepad

Reconhecimento automático dos controles que o raylib/GLFW expõe, inclusive conexão e desconexão durante a execução. Não é necessário desativar o teclado. Analógicos com zona morta de 18%.

| Controle padrão Xbox | PS2 |
| --- | --- |
| A / B / X / Y | X / Círculo / Quadrado / Triângulo |
| D-pad | Direcional |
| LB / RB | L1 / R1 |
| LT / RT | L2 / R2 |
| Pressionar analógicos | L3 / R3 |
| Menu / View | Start / Select |
| Analógicos esquerdo / direito | Analógicos esquerdo / direito |

## Teclado

| Tecla | Ação PS2 |
| --- | --- |
| Enter / Tab | Start / Select |
| Setas | Direcional |
| WASD | Analógico esquerdo e direcional |
| IJKL | Analógico direito |
| X ou Espaço | X |
| C ou Escape | Círculo |
| Z / V | Quadrado / Triângulo |
| Q / E | L1 / R1 |
| Shift esquerdo / direito | L2 / R2 |
| Ctrl esquerdo / R | L3 / R3 |

O suporte a controles não implica que a campanha já esteja jogável. Consulte o estado do port no README.
