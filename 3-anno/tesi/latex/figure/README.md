# Visuali della tesi

I diagrammi sono originali TikZ. `stile-schemi.tex` definisce carattere sans serif,
tratti regolari e colori poco saturi; `asset-schemi.tex` contiene i pittogrammi.
Le dimensioni si modificano semplificando i contenuti o riposizionando i nodi,
non riducendo l'intero disegno con `resizebox` o `scalebox`.

## Convenzioni

- Corpo ordinario dei diagrammi: 10 pt; dettagli dei grafici: almeno 9 pt.
- Blu/grigio: componenti e operazioni; verde: perimetro o output della pipeline;
  ocra: condizioni, limiti o esclusioni; viola tenue: generazione con modello.
- Colore sempre accompagnato da testo. Nel grafico delle lunghezze gli stati
  sono distinti anche mediante cerchio, quadrato e croce.
- Frecce continue: flusso principale. Collegamenti tratteggiati: passaggi
  secondari o downstream, descritti nel relativo schema.
- Caption delle figure sotto il disegno; caption delle tabelle sopra i dati.
- I float seguono la loro introduzione e non superano la sezione di pertinenza.
  Un vincolo aggiuntivo separa il grafico delle lunghezze dai gate di promozione.
- I ritagli originali non sono stati alterati. Numeri e guide editoriali sono
  sovrapposti in TikZ, distinguendoli dalle annotazioni già nella fonte.

## Asset binari

Le immagini usate dai sorgenti LaTeX sono in `figure/asset/`, inclusi i
ritagli in `figure/asset/v4/`. I sei riferimenti alla copertina FANUC, alla
foto della macchina e alle due immagini del touch panel non puntano più a
`prism-uploads/`, che non fa più parte della workspace. Provenienza e
impronte SHA-256 della migrazione sono in [asset/README.md](asset/README.md).

## Elementi inclusi

### Capitolo 1

- `esperimento-dinardo.tex`: condizioni A/B, stessa simulazione e misure.
  Ricostruzione dai materiali di progetto; schermata in `asset/digital-twin.png`.
  Non specifica ordine o controbilanciamento e non mostra risultati della pipeline.
- `llm-autoregressivo.tex`: ciclo contesto–predizione–token–aggiornamento.
  Riferimento concettuale a Vaswani et al. (2017), senza pretendere di descrivere
  l'architettura specifica di Qwen.
- `architettura-rag.tex`: ingestion, indicizzazione e interrogazione.
  Riferimenti a Lewis et al. (2020) e Riedler e Langer (2024). Il downstream
  illustrato non è implementato o valutato nella tesi.

### Capitolo 2

- `architettura-ingestion.tex`: tre acquisizioni e lavorazioni comuni,
  secondo i sorgenti del progetto `manual_ingestion` esaminati durante la
  stesura; non è un grafo delle chiamate. Il codice resta esterno alla workspace LaTeX.
- `detection-profili.tex`: precedenza del testo sull'outline e soglie operative.
- `uml-modello-documentale.tex`: contenimento, ricorsione e molteplicità da
  `models.py`; la tabella dei componenti riporta i dettagli informativi.
- `gerarchia-provenienza.tex`: esempio didattico con due sezioni sulla stessa
  pagina; non è una pagina reale del corpus.
- `contesto-caption.tex`: priorità del contesto sorgente e separazione dalle
  descrizioni generate; non rappresenta il funzionamento interno del VLM.
- `trattamento-visuale.tex`: immagini interpretate dal VLM e tabelle serializzate
  deterministicamente. Le colonne non indicano esecuzione parallela.
- `flusso-pubblicazione.tex`: staging, controlli, stato e pubblicazione atomica,
  secondo `orchestrator.py` e `run_bundle.py`.
- `livelli-verifica.tex`: conformità tecnica, promozione e fedeltà semantica;
  non attesta una revisione umana indipendente già eseguita.

### Capitolo 3

I percorsi delle evidenze seguenti descrivono l'archivio storico
`tesi-di-nardo/enrichment-v4-final-20260915`, con casi `outline` e `scanned`;
non indicano file da includere nella compilazione attuale. La copia del
progetto software non è più presente nella workspace LaTeX.

I soli tre ritagli necessari alla compilazione sono conservati in
`figure/asset/v4/`. Provenienza e SHA-256 sono documentati nel relativo
`README.md`. I valori dei grafici sono incorporati nei sorgenti TikZ.

- `durate-v4.tex`: `evidence/outcome.json` per il totale CLI;
  `evidence/enrichment/0001/call.json` per l'enrichment. La parte restante
  è calcolata per differenza, non rappresenta soltanto il parsing/OCR.
  Una run per caso, senza repliche e con documenti e carichi diversi.
- `gerarchia-contesto-wm250.tex`: asset OCR `paddle-image-0010-0001.png`,
  padre canonico in `scanned/bundle/manual.json` e contesto nella richiesta
  `scanned/evidence/captions/0004/call.json`. Il prompt non corregge l'albero.
- `filtro-geometrico-wm250.tex`: asset `paddle-image-0008-0003.png`;
  pagina 2600 × 1950, bounding box (1433, 1052, 1761, 1324), origine in alto
  a sinistra. La mappa conserva la stessa scala sui due assi, ma non è il
  rendering della pagina. Area relativa: 328 × 272 / (2600 × 1950), circa 1,76%.
- `audit-caption-menu.tex`: asset digitale `docling-image-0225-0010.png` e
  risposta della chiamata `outline/evidence/captions/0004`. Le guide editoriali
  usano le ascisse 62, 108, 154, 200, 246, 292, 338, 384, 430, 476, 522, 568
  pixel nell'immagine larga 623 pixel. La cerchiatura rosa è originale.
- `lunghezze-caption-v4.tex`: tutte le 17 risposte conservate nei
  `evidence/captions/NNNN/caption-response.json`, normalizzate come descritto
  nel testo. D/S identificano i due casi, il numero la chiamata archiviata;
  non è un campione di tutte le 25 immagini, perché otto non raggiungono il VLM.
  Lunghezza e stato automatico non costituiscono punteggi di qualità.

### Capitolo 4

- `confronto-rag-futuro.tex`: proposta A/B con la stessa base documentale e
  componenti RAG invariati. Non contiene misure. Lo studio con operatori e la
  valutazione del contributo tabellare rimangono confronti distinti.

## Scelte editoriali storiche

La revisione visuale del 16 settembre 2026 escluse questi sorgenti,
successivamente rimossi dalla workspace insieme alla directory di archivio:

- `perimetro-ingestion.tex`: duplicava lo schema RAG e il testo del perimetro.
- `bilancio-v4.tex`: duplicava la tabella degli esiti V4, ora organizzata per stadio.
- `sintesi-rq.tex`: duplicava le risposte alle RQ nelle conclusioni.

I nomi qui elencati documentano le scelte editoriali, non file ancora presenti
o necessari alla compilazione.

È stata eliminata anche la tabella delle quattro risposte fuori soglia dal
capitolo dei risultati: valori e identificativi di chiamata sono nel testo e
nel grafico completo delle 17 risposte. Non sono state aggiunte visualizzazioni.

## Compilazione e controllo

Compilare dalla root con
`latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=build main.tex`.
Il PDF prodotto è `build/main.pdf`. La copia `main.pdf` nella root è un'esportazione
facoltativa, aggiornabile con `cp build/main.pdf main.pdf`.
Il documento `stampe/a3-affiancate.tex` legge direttamente `build/main.pdf`;
la mappa della workspace e i comandi per la stampa sono nel [README principale](../README.md).

Le immagini di anteprima vanno generate esclusivamente in una directory
temporanea esterna al progetto, usando percorsi relativi al workspace.
Non introdurre nel progetto PNG delle pagine PDF.