class RakudoBio::Genome;
use RakudoBio::Feature;

has $.header is rw;
has $.seq is rw;
has RakudoBio::Feature @.features is rw;

method get_features ($type) {
  return $.features.grep: {$_.type eq $type};
}

