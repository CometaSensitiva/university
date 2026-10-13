# Asset per la compilazione

Questa cartella contiene immagini caricate dai sorgenti LaTeX. I tre
ritagli V4 e la loro provenienza restano nella sottocartella `v4/`.

## Migrazione da prism-uploads

Il 1 ottobre 2026 sono state copiate in questa cartella le quattro immagini
seguenti e sono stati aggiornati i sei riferimenti LaTeX che le usano.
I file sono identici agli originali secondo SHA-256: non sono stati
ridimensionati, ricodificati o ritoccati. Il testo scientifico, le
didascalie, le dimensioni e la disposizione delle figure restano invariati.

I percorsi della tabella sono relativi alla root della workspace.

| Asset da conservare | Origine | SHA-256 |
| --- | --- | --- |
| `figure/asset/copertina-manuale-fanuc.png` | `prism-uploads/copertina-manuale-fanuc.png` | `b0e4b8aedb8d500295e7397d014c7d7861e9ea5ff9c42521e43dd5b2d2b0cd03` |
| `figure/asset/fanuc-robocut-c600ic-foto.jpeg` | `prism-uploads/fanuc-robocut-c600ic-foto.jpeg` | `af5d1d78b0c7c31ace86070b3fe04be781e7f7cbe25f53897c5f7628883db1a0` |
| `figure/asset/touch-panel-interazione-operatore.jpeg` | `prism-uploads/touch-panel-interazione-operatore.jpeg` | `dbcb87fd2461545336f176c731849403196646fb462a8998e2ce55740e6862d8` |
| `figure/asset/touch-panel-schermata-operatore.png` | `prism-uploads/touch-panel-schermata-operatore.png` | `649c6199f22fcfa15cd9cec63ebb96c1eceae8e9038cd62e139384a3169a2ffd` |

La directory di origine `prism-uploads/` non fa più parte della workspace.
I percorsi di origine nella tabella documentano la provenienza e non sono
dipendenze della compilazione. Le quattro immagini locali vanno conservate.
I file `digital-twin.png` e `marchio-di-ateneo.png`, già presenti, non sono
stati modificati dalla migrazione.