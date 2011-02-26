use v6;

class Genome {
  has $.header is rw;
  has $.seq is rw;
  has Genome::Feature @.features is rw;

  method get_features ($type) {
    return $.features.grep: {$_.type eq $type};
  }
}
