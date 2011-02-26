class RakudoBio::Grammar::Actions::GenBank {

  method TOP($/) {
    make Genome.new(
        features => $<feature>>>.ast,
        seq => $<origin>.ast,
        header => ~$<header>,
        );
  }

  method feature($/) {
    my %annotation;
    for $<annotation>.flat {
      %annotation{$_<annotation_head><annotation_type>} = $_<annotation_head><text>;
      %annotation{$_<annotation_head><annotation_type>} ~= $_<annotation_continued>.map: {$_<text>};
    } 
    
    make Genome::Feature.new(
        type => ~$<feature_type>,
        position => ~$<position>,
        annotation => %annotation,
        );
  }

  method origin($/){
    my $seq_copied = ~$<seq>;
    $seq_copied ~~ s:g/\s//; 
      make $seq_copied;
  }
}

