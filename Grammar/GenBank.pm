grammar RakudoBio::Grammer::GenBank {
  token TOP {
    ^<header>
      ^^'FEATURES'\N+\n
      <feature>+
      ^^'ORIGIN'\N+\n
      <origin>
      ^^ \/\/ 
  }
  token header {
    ^^[<!before "FEATURES">.]+
  }

  regex feature {
    ^^"     "$<feature_type>=[\S+]\s+$<position>=[\S+'..'\S+]\n
      <annotation>+
  }
  token annotation {
    <annotation_head>
      <annotation_continued>*
  }
  token annotation_head {
    ^^'                     /'$<annotation_type>=[<!before \=>.]+'='$<text>=[\N+]\n
  }

  token annotation_continued {
    ^^'                     '$<text>=[[<!before \/>.]\N+]\n
  }
  token origin {
    [^^\s+\d+\s+$<seq>=[\N+]\n]+
  }
}

