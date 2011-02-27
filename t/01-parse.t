use v6;
BEGIN { @*INC.push('lib') };

use RakudoBio::Grammar::GenBank;
use Test;

my $gb = Q {
LOCUS       NC_000908             580076 bp    DNA     circular BCT 22-NOV-2010
   DEFINITION  Mycoplasma genitalium G37, complete genome.
ACCESSION   NC_000908
FEATURES             Location/Qualifiers
     source          1..580076
                     /organism="Mycoplasma genitalium G37"
                     /mol_type="genomic DNA"
                     /strain="G37"
                     /db_xref="taxon:243273"
     gene            686..1828
                     /gene="dnaN"
                     /locus_tag="MG_001"
                     /db_xref="GeneID:875454"
     CDS             686..1828
                     /gene="dnaN"
                     /locus_tag="MG_001"
                     /EC_number="2.7.7.7"
                     /note="identified by sequence similarity; putative"
                     /codon_start=1
                     /transl_table=4
                     /product="DNA polymerase III, beta subunit"
                     /protein_id="NP_072661.2"
                     /db_xref="GI:108885075"
                     /db_xref="GeneID:875454"
                     /translation="MKILINKSELNKILKKMNNVIISNNKIKPHHSYFLIEAKEKEIN
                     FYANNEYFSVKCNLNKNIDILEQGSLIVKGKIFNDLINGIKEEIITIQEKDQTLLVKT
                     KKTSINLNTINVNEFPRIRFNEKNDLSEFNQFKINYSLLVKGIKKIFHSVSNNREISS
                     KFNGVNFNGSNGKEIFLEASDTYKLSVFEIKQETEPFDFILESNLLSFINSFNPEEDK
                     SIVFYYRKDNKDSFSTEMLISMDNFMISYTSVNEKFPEVNYFFEFEPETKIVVQKNEL
                     KDALQRIQTLAQNERTFLCDMQINSSELKIRAIVNNIGNSLEEISCLKFEGYKLNISF
                     NPSSLLDHIESFESNEINFDFQGNSKYFLITSKSEPELKQILVPSR"
     gene            1828..2760
                     /locus_tag="MG_002"
                     /db_xref="GeneID:875221"
     CDS             1828..2760
                     /locus_tag="MG_002"
                     /note="identified by sequence similarity; putative"
                     /codon_start=1
                     /transl_table=4
                     /product="DnaJ domain-containing protein"
                     /protein_id="NP_072662.2"
                     /db_xref="GI:108885076"
                     /db_xref="GeneID:875221"
                     /translation="MNLYDLLELPTTASIKEIKIAYKRLAKRYHPDVNKLGSQTFVEI
                     NNAYSILSDPNQKEKYDSMLKVNDFQNRIKNLDISVRWHENFMEELELRKNWEFDFFS
                     SDEDFFYSPFTKNKYASFLDKDVSLAFFQLYSKGKIDHQLEKSLLKRRDVKEACQQNK
                     NFIEVIKEQYNYFGWIEAKRYFNINVELELTQREIRDRDVVNLPLKIKVINNDFPNQL
                     WYEIYKNYSFRLSWDIKNGEIAEFFNKGNRALGWKGDLIVRMKVVNKVNKRLRIFSSF
                     FENDKSKLWFLVPNDKQSNPNKGVFNYKTQHFID"
     gene            2845..4797
                     /gene="gyrB"
                     /locus_tag="MG_003"
                     /db_xref="GeneID:875545"
     CDS             2845..4797
                     /gene="gyrB"
                     /locus_tag="MG_003"
                     /EC_number="5.99.1.3"
                     /note="negatively supercoils closed circular
                     double-stranded DNA"
                     /codon_start=1
                     /transl_table=4
                     /product="DNA gyrase subunit B"
                     /protein_id="NP_072663.1"
                     /db_xref="GI:12044853"
                     /db_xref="GeneID:875545"
                     /translation="MEENNKANIYDSSSIKVLEGLEAVRKRPGMYIGSTGEEGLHHMI
                     WEIVDNSIDEAMGGFASFVKLTLEDNFVTRVEDDGRGIPVDIHPKTNRSTVETVFTVL
                     HAGGKFDNDSYKVSGGLHGVGASVVNALSSSFKVWVFRQNKKYFLSFSDGGKVIGDLV
                     QEGNSEKEHGTIVEFVPDFSVMEKSDYKQTVIVSRLQQLAFLNKGIRIDFVDNRKQNP
                     QSFSWKYDGGLVEYIHHLNNEKEPLFNEVIADEKTETVKAVNRDENYTVKVEVAFQYN
                     KTYNQSIFSFCNNINTTEGGTHVEGFRNALVKIINRFAVENKFLKDSDEKINRDDVCE
                     GLTAIISIKHPNPQYEGQTKKKLGNTEVRPLVNSVVSEIFERFMLENPQEANAIIRKT
                     LLAQEARRRSQEARELTRRKSPFDSGSLPGKLADCTTRDPSISELYIVEGDSAGGTAK
                     TGRDRYFQAILPLRGKILNVEKSNFEQIFNNAEISALVMAIGCGIKPDFELEKLRYSK
                     IVIMTDADVDGAHIRTLLLTFFFRFMYPLVEQGNIFIAQPPLYKVSYSHKDLYMHTDV
                     QLEQWKSQNPNVKFGLQRYKGLGEMDALQLWETTMDPKVRTLLKVTVEDASIADKAFS
                     LLMGDEVPPRREFIEKNARSVKNIDI"
     gene            4812..7322
                     /gene="gyrA"
                     /locus_tag="MG_004"
                     /db_xref="GeneID:875558"
     CDS             4812..7322
                     /gene="gyrA"
                     /locus_tag="MG_004"
                     /EC_number="5.99.1.3"
                     /note="negatively supercoils closed circular
                     double-stranded DNA"
                     /codon_start=1
                     /transl_table=4
                     /product="DNA gyrase subunit A"
                     /protein_id="NP_072664.1"
                     /db_xref="GI:12044854"
                     /db_xref="GeneID:875558"
                     /translation="MAKQQDQVDKIRENLDNSTVKSISLANELERSFMEYAMSVIVAR
                     ALPDARDGLKPVHRRVLYGAYIGGMHHDRPFKKSARIVGDVMSKFHPHGDMAIYDTMS
                     RMAQDFSLRYLLIDGHGNFGSIDGDRPAAQRYTEARLSKLAAELLKDIDKDTVDFIAN
                     YDGEEKEPTVLPAAFPNLLANGSSGIAVGMSTSIPSHNLSELIAGLIMLIDNPQCTFQ
                     ELLTVIKGPDFPTGANIIYTKGIESYFETGKGNVVIRSKVEIEQLQTRSALVVTEIPY
                     MVNKTTLIEKIVELVKAEEISGIADIRDESSREGIRLVIEVKRDTVPEVLLNQLFKST
                     RLQVRFPVNMLALVKGAPVLLNMKQALEVYLDHQIDVLVRKTKFVLNKQQERYHILSG
                     LLIAALNIDEVVAIIKKSANNQEAINTLNTKFKLDEIQAKAVLDMRLRSLSVLEVNKL
                     QTEQKELKDSIEFCKKVLADQKLQLKIIKEELQKINDQFGDERRSEILYDISEEIDDE
                     SLIKVENVVITMSTNGYLKRIGVDAYNLQHRGGVGVKGLTTYVDDSISQLLVCSTHSD
                     LLFFTDKGKVYRIRAHQIPYGFRTNKGIPAVNLIKIEKDERICSLLSVNNYDDGYFFF
                     CTKNGIVKRTSLNEFINILSNGKRAISFDDNDTLYSVIKTHGNDEIFIGSTNGFVVRF
                     HENQLRVLSRTARGVFGISLNKGEFVNGLSTSSNGSLLLSVGQNGIGKLTSIDKYRLT
                     KRNAKGVKTLRVTDRTGPVVTTTTVFGNEDLLMISSAGKIVRTSLQELSEQGKNTSGV
                     KLIRLKDNERLERVTIFKEELEDKEMQLEDVGSKQITQ"
ORIGIN      
        1 taagttatta tttagttaat acttttaaca atattattaa ggtatttaaa aaatactatt
       61 atagtattta acatagttaa ataccttcct taatactgtt aaattatatt caatcaatac
      121 atatataata ttattaaaat acttgataag tattatttag atattagaca aatactaatt
      181 ttatattgct ttaatactta ataaatacta cttatgtatt aagtaaatat tactgtaata
      241 ctaataacaa tattattaca atatgctaga ataatattgc tagtatcaat aattactaat
      301 atagtattag gaaaatacca taataatatt tctacataat actaagttaa tactatgtgt
      361 agaataataa ataatcagat taaaaaaatt ttatttatct gaaacatatt taatcaattg
      421 aactgattat tttcagcagt aataattaca tatgtacata gtacatatgt aaaatatcat
      481 taatttctgt tatatataat agtatctatt ttagagagta ttaattatta ctataattaa
      541 gcatttatgc ttaattataa gctttttatg aacaaaatta tagacatttt agttcttata
      601 ataaataata gatattaaag aaaataaaaa aatagaaata aatatcataa cccttgataa
      661 cccagaaatt aatacttaat caaaaatgaa aatattaatt aataaaagtg aattgaataa
      721 aattttgaaa aaaatgaata acgttattat ttccaataac aaaataaaac cacatcattc
      781 atatttttta atagaggcaa aagaaaaaga aataaacttt tatgctaaca atgaatactt
      841 ttctgtcaaa tgtaatttaa ataaaaatat tgatattctt gaacaaggct ccttaattgt
      901 taaaggaaaa atttttaacg atcttattaa tggcataaaa gaagagatta ttactattca
      961 agaaaaagat caaacacttt tggttaaaac aaaaaaaaca agtattaatt taaacacaat
     1021 taatgtgaat gaatttccaa gaataaggtt taatgaaaaa aacgatttaa gtgaatttaa
     1081 tcaattcaaa ataaattatt cacttttagt aaaaggcatt aaaaaaattt ttcactcagt
     1141 ttcaaataat cgtgaaatat cttctaaatt taatggagta aatttcaatg gatccaatgg
     1201 aaaagaaata tttttagaag cttctgacac ttataaacta tctgtttttg agataaagca
     1261 agaaacagaa ccatttgatt tcattttgga gagtaattta cttagtttca ttaattcttt
     1321 taatcctgaa gaagataaat ctattgtttt ttattacaga aaagataata aagatagctt
     1381 tagtacagaa atgttgattt caatggataa ctttatgatt agttacacat cggttaatga
     1441 aaaatttcca gaggtaaact acttttttga atttgaacct gaaactaaaa tagttgttca
     1501 aaaaaatgaa ttaaaagatg cacttcaaag aattcaaact ttggctcaaa atgaaagaac
     1561 ttttttatgc gatatgcaaa ttaacagttc tgaattaaaa ataagagcta ttgttaataa
     1621 tatcggaaat tctcttgagg aaatttcttg tcttaaattt gaaggttata aacttaatat
//};

plan 1;

my $parse;
try {
  RakudoBio::Grammar::GenBank.parse($gb);
  $parse = 1;
}
ok $parse, "GeBank file parsed";
