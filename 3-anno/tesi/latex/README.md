# Tesi — workspace LaTeX

Questa cartella contiene il manoscritto congelato, i materiali editoriali e
gli asset necessari alla compilazione. Il progetto software della pipeline
resta separato dalla workspace LaTeX. Il punto di ingresso della tesi resta
`main.tex`; non è necessario cambiare il documento aperto in Prism.

## Mappa della cartella

| Percorso | Contenuto e responsabilità |
| --- | --- |
| `main.tex` | Classe, metadati, ordine dei capitoli e bibliografia finale. |
| `config/preambolo.tex` | Pacchetti, impaginazione, riferimenti e macro redazionali. |
| `capitoli/` | Frontespizio, abstract, capitoli e sezioni finali della tesi. |
| `bibliografia.bib` | Unica bibliografia del manoscritto. |
| `figure/` | Sorgenti TikZ attivi e definizioni grafiche condivise. |
| `figure/asset/` | Immagini usate da LaTeX; provenienza della migrazione in `figure/asset/README.md`. |
| `figure/asset/v4/` | Tre ritagli V4 originali, con provenienza e impronte SHA-256. |
| `stampe/a3-affiancate.tex` | Documento di stampa alternativo, con due pagine affiancate su A3. |
| `build/` | Output locali di compilazione, rigenerabili e non da versionare. |
| `build/stampe/` | Output delle stampe alternative, separati da quelli della tesi. |
| `main.pdf` | Copia esportata facoltativa; non è l'input del documento di stampa. |

La copia locale `tesi-di-nardo/` è stata rimossa dopo l'estrazione dei tre
asset e la verifica della compilazione senza quel percorso. Codice, test
e bundle completi non sono inclusi nella workspace. I percorsi storici
citati nel manoscritto restano invariati: sono riferimenti documentali,
non file caricati da LaTeX. La versione finale della pipeline non viene
usata per riscrivere lo stato scientifico congelato della tesi.

## Compilazione locale

Eseguire dalla root del progetto, con pdfLaTeX, Biber e latexmk disponibili:

```sh
latexmk -pdf -synctex=1 -interaction=nonstopmode -file-line-error -halt-on-error -outdir=build -auxdir=build/aux main.tex
```

Il PDF della tesi è `build/main.pdf`. La directory di output viene creata
da latexmk: la sola presenza di `build/` non imposta automaticamente la
destinazione della compilazione. Il comando va eseguito dalla root.

### VS Code

Aprire questa cartella come workspace. Le impostazioni in `.vscode/settings.json`
configurano pdfLaTeX con latexmk, PDF in `build/`, ausiliari in `build/aux/`
e SyncTeX. Il comando di compilazione di LaTeX Workshop usa la ricetta
`Compila con latexmk`; `Ricompila da zero` pulisce e rigenera gli output.

Per la stampa A3 usare **Terminale → Esegui attività → LaTeX: stampa A3**:
l’attività aggiorna prima la tesi, poi genera `build/stampe/a3-affiancate.pdf`.
Aprire quel PDF dall’esplora file. Per questo documento usare l’attività dedicata,
che imposta la directory di lavoro alla root e tiene separati gli output.

### Stampa A3 con pagine affiancate

Dopo aver compilato la tesi, eseguire dalla stessa root:

```sh
latexmk -pdf -synctex=1 -interaction=nonstopmode -file-line-error -halt-on-error -outdir=build/stampe -auxdir=build/stampe/aux stampe/a3-affiancate.tex
```

Il documento legge direttamente `build/main.pdf` e produce
`build/stampe/a3-affiancate.pdf`, con due pagine della tesi su ciascun foglio
A3 orizzontale. Non configura la stampa fronte-retro né l'imposizione a
libretto. Ricompilare prima la tesi per stampare sempre la versione aggiornata.
Non eseguire il comando dall'interno di `stampe/` e non aggiungere `-cd`:
i percorsi dei sorgenti sono relativi alla root del progetto.

La copia `main.pdf` nella root resta facoltativa e può essere aggiornata
se serve un PDF esportato:

```sh
cp build/main.pdf main.pdf
```

Il punto di ingresso della tesi in Prism rimane `main.tex`. I comandi
precedenti descrivono il flusso locale, anche dopo aver scaricato lo ZIP.

## Ringraziamenti personali

La bozza è in `capitoli/07-ringraziamenti.tex`, dopo la bibliografia.
In `main.tex`, `\ringraziamentitrue` include il capitolo nella versione
personale o stampata; sostituirlo con `\ringraziamentifalse` per compilare
la versione da inviare al relatore senza ringraziamenti. I paragrafi sono
scritti per essere letti a voce o condivisi separatamente con i destinatari.

## Convenzioni

- Mantenere `main.tex` nella root e tutti i percorsi LaTeX relativi alla root.
- Usare nomi descrittivi minuscoli con trattini per i nuovi sorgenti editoriali.
- Conservare la numerazione dei capitoli: i prefissi `00` identificano i preliminari.
- Conservare i sorgenti delle stampe alternative in `stampe/` e i loro output in `build/stampe/`.
- Mantenere nomi e byte dei ritagli V4 estratti; la provenienza è in `figure/asset/v4/README.md`.
- Non modificare il testo scientifico per adeguarlo alla struttura della workspace o al codice finale.
- Non eliminare o trasformare gli asset senza verificarne utilizzo e provenienza.
- Non aggiungere immagini delle pagine PDF alla cartella; usare una directory temporanea esterna.
- Non inserire credenziali o dati riservati nelle evidenze destinate alla condivisione.

## Dipendenze e provenienza

La workspace non contiene più il progetto software, gli allegati importati,
gli audit né il registro delle rinomine. La compilazione usa soltanto i
sorgenti del manoscritto, la bibliografia e le nove immagini conservate in
`figure/asset/`, inclusi i tre ritagli V4. I percorsi storici stampati nella
tesi o riportati nelle tabelle di provenienza non sono input da caricare.

Restano disponibili le [convenzioni delle figure](figure/README.md), la
[provenienza delle immagini importate](figure/asset/README.md) e la
[provenienza dei ritagli V4](figure/asset/v4/README.md). I nomi e le impronte
degli asset vengono mantenuti per la tracciabilità del manoscritto congelato.

## In questo repository

I ringraziamenti personali non sono pubblicati: qui `main.tex` usa `\ringraziamentifalse` e `capitoli/07-ringraziamenti.tex` non è incluso. Il PDF della tesi è in [`../Tesi Michele Mazza.pdf`](../Tesi%20Michele%20Mazza.pdf).
