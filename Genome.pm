class RakudoBio::Genome;
use RakudoBio::Genome::Features;

has $.header is rw;
has $.seq is rw;
has RakudoBio::Genome::Feature @.features is rw;

method get_features ($type) {
  return $.features.grep: {$_.type eq $type};
}

