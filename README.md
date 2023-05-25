
<!-- README.md is generated from README.Rmd. Please edit that file -->

# TxDb.Cfamiliaris.UCSC.canFam3.ncbiRefSeq

TxDb package (from GenomicFeatures) for the dog reference genome *Canis
lupis familiaris* canFam3, created from the ncbiRefSeq table of the
[UCSC genome
browser](https://genome.ucsc.edu/cgi-bin/hgGateway?db=canFam3).

## Installation

``` r
# install.packages("BiocManager")
BiocManager::install("https://github.com/stephenturner/TxDb.Cfamiliaris.UCSC.canFam3.ncbiRefSeq", update=FALSE)
#> 'getOption("repos")' replaces Bioconductor standard repositories, see
#> 'help("repositories", package = "BiocManager")' for details.
#> Replacement repositories:
#>     CRAN: https://cloud.r-project.org/
#> Bioconductor version 3.16 (BiocManager 1.30.20), R 4.2.3 (2023-03-15)
#> Installing package(s)
#>   'https://github.com/stephenturner/TxDb.Cfamiliaris.UCSC.canFam3.ncbiRefSeq'
#> Warning: package 'https://github.com/stephenturner/TxDb.Cfamiliaris.UCSC.canFam3.ncbiRefSeq' is not available for Bioconductor version '3.16'
#> 
#> A version of this package for your version of R might be available elsewhere,
#> see the ideas at
#> https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages
```

## Usage

``` r
suppressPackageStartupMessages(library(TxDb.Cfamiliaris.UCSC.canFam3.ncbiRefSeq))
tx <- TxDb.Cfamiliaris.UCSC.canFam3.ncbiRefSeq
columns(tx)
#>  [1] "CDSCHROM"   "CDSEND"     "CDSID"      "CDSNAME"    "CDSPHASE"  
#>  [6] "CDSSTART"   "CDSSTRAND"  "EXONCHROM"  "EXONEND"    "EXONID"    
#> [11] "EXONNAME"   "EXONRANK"   "EXONSTART"  "EXONSTRAND" "GENEID"    
#> [16] "TXCHROM"    "TXEND"      "TXID"       "TXNAME"     "TXSTART"   
#> [21] "TXSTRAND"   "TXTYPE"
genes(tx)
#>   11 genes were dropped because they have exons located on both strands
#>   of the same reference sequence or on more than one reference sequence,
#>   so cannot be represented by a single genomic range.
#>   Use 'single.strand.genes.only=FALSE' to get all the genes in a
#>   GRangesList object, or use suppressMessages() to suppress this message.
#> GRanges object with 31246 ranges and 1 metadata column:
#>           seqnames            ranges strand |     gene_id
#>              <Rle>         <IRanges>  <Rle> | <character>
#>      A1BG     chr1 99593654-99607125      + |        A1BG
#>      A1CF    chr26 37027165-37109842      + |        A1CF
#>     A2ML1    chr27 36844292-36882274      - |       A2ML1
#>   A3GALT2     chr2 68117648-68138610      + |     A3GALT2
#>    A4GALT    chr10 22752657-22776858      + |      A4GALT
#>       ...      ...               ...    ... .         ...
#>   cOR52P3    chr21 28815755-28816735      + |     cOR52P3
#>   cOR55B3    chr21 26635476-26636507      - |     cOR55B3
#>   cOR56B2    chr21 28902679-28903638      + |     cOR56B2
#>    cOR9K3    chr27     204081-205043      + |      cOR9K3
#>   cOR9S7P    chr25 50092315-50092786      + |     cOR9S7P
#>   -------
#>   seqinfo: 338 sequences from an unspecified genome; no seqlengths
transcripts(tx)
#> GRanges object with 82536 ranges and 2 metadata columns:
#>                 seqnames        ranges strand |     tx_id        tx_name
#>                    <Rle>     <IRanges>  <Rle> | <integer>    <character>
#>       [1]           chr1 478310-567728      + |         1 XM_022426688.1
#>       [2]           chr1 710211-715246      + |         2    XR_291183.3
#>       [3]           chr1 722223-735249      + |         3 XM_005615276.3
#>       [4]           chr1 722226-735253      + |         4 XM_022407962.1
#>       [5]           chr1 722237-735249      + |         5    XM_533363.6
#>       ...            ...           ...    ... .       ...            ...
#>   [82532] chrUn_JH374181       11-3061      + |     82532 XM_005642410.2
#>   [82533] chrUn_JH374182     4677-9534      + |     82533 XR_002624781.1
#>   [82534] chrUn_JH374187      808-1248      - |     82534 XM_014112191.1
#>   [82535] chrUn_JH374187    8775-10344      - |     82535 XM_005642415.1
#>   [82536] chrUn_JH374193     1505-2215      - |     82536 XM_005642419.3
#>   -------
#>   seqinfo: 338 sequences from an unspecified genome; no seqlengths
promoters(tx)
#> GRanges object with 82536 ranges and 2 metadata columns:
#>                        seqnames        ranges strand |     tx_id        tx_name
#>                           <Rle>     <IRanges>  <Rle> | <integer>    <character>
#>   XM_022426688.1           chr1 476310-478509      + |         1 XM_022426688.1
#>      XR_291183.3           chr1 708211-710410      + |         2    XR_291183.3
#>   XM_005615276.3           chr1 720223-722422      + |         3 XM_005615276.3
#>   XM_022407962.1           chr1 720226-722425      + |         4 XM_022407962.1
#>      XM_533363.6           chr1 720237-722436      + |         5    XM_533363.6
#>              ...            ...           ...    ... .       ...            ...
#>   XM_005642410.2 chrUn_JH374181     -1989-210      + |     82532 XM_005642410.2
#>   XR_002624781.1 chrUn_JH374182     2677-4876      + |     82533 XR_002624781.1
#>   XM_014112191.1 chrUn_JH374187     1049-3248      - |     82534 XM_014112191.1
#>   XM_005642415.1 chrUn_JH374187   10145-12344      - |     82535 XM_005642415.1
#>   XM_005642419.3 chrUn_JH374193     2016-4215      - |     82536 XM_005642419.3
#>   -------
#>   seqinfo: 338 sequences from an unspecified genome; no seqlengths
exons(tx)
#> GRanges object with 912155 ranges and 1 metadata column:
#>                  seqnames        ranges strand |   exon_id
#>                     <Rle>     <IRanges>  <Rle> | <integer>
#>        [1]           chr1 478310-478447      + |         1
#>        [2]           chr1 487584-487859      + |         2
#>        [3]           chr1 510537-510759      + |         3
#>        [4]           chr1 565073-567728      + |         4
#>        [5]           chr1 710211-712091      + |         5
#>        ...            ...           ...    ... .       ...
#>   [912151] chrUn_JH374187     1241-1248      - |    912151
#>   [912152] chrUn_JH374187     8775-9247      - |    912152
#>   [912153] chrUn_JH374187   10069-10344      - |    912153
#>   [912154] chrUn_JH374193     1505-1740      - |    912154
#>   [912155] chrUn_JH374193     2005-2215      - |    912155
#>   -------
#>   seqinfo: 338 sequences from an unspecified genome; no seqlengths
cds(tx)
#> GRanges object with 214107 ranges and 1 metadata column:
#>                  seqnames        ranges strand |    cds_id
#>                     <Rle>     <IRanges>  <Rle> | <integer>
#>        [1]           chr1 478310-478447      + |         1
#>        [2]           chr1 487584-487859      + |         2
#>        [3]           chr1 510537-510759      + |         3
#>        [4]           chr1 565073-565905      + |         4
#>        [5]           chr1 722725-722877      + |         5
#>        ...            ...           ...    ... .       ...
#>   [214103] chrUn_JH374187      808-1068      - |    214103
#>   [214104] chrUn_JH374187     8775-9247      - |    214104
#>   [214105] chrUn_JH374187   10069-10344      - |    214105
#>   [214106] chrUn_JH374193     1532-1740      - |    214106
#>   [214107] chrUn_JH374193     2005-2200      - |    214107
#>   -------
#>   seqinfo: 338 sequences from an unspecified genome; no seqlengths
```

## How it was made

``` r
library(GenomicFeatures)
myurl <- "http://hgdownload.soe.ucsc.edu/goldenPath/canFam3/bigZips/genes/canFam3.ncbiRefSeq.gtf.gz"
download.file(myurl, destfile="/tmp/canFam3.ncbiRefSeq.gtf.gz")
txdb <- makeTxDbFromGFF(file="/tmp/canFam3.ncbiRefSeq.gtf.gz",
                        dataSource="UCSC Genome Browser",
                        organism="Canis lupis familiaris", 
                        metadata = data.frame(name="Resource URL", value=myurl),
                        taxonomyId = 9615)
makeTxDbPackage(txdb, 
                version="1.0.0",
                author="Stephen Turner <no-reply@accounts.google.com>",
                maintainer="Stephen Turner <no-reply@accounts.google.com>",
                destDir="/tmp", 
                pkgname="TxDb.Cfamiliaris.UCSC.canFam3.ncbiRefSeq", 
                provider="UCSC Genome Browser", 
                providerVersion="canFam3")
```
