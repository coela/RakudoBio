class RakudoBio::Tools::WobbleBasePair;

has %!paring_scheme = (
    A => 'U',
    C => 'G',
    G => any('C','U'),
    U => any('A','G'),
    I => any('A','C','U'),
    );

multi method readable (Str $nuc where {$nuc.chars == 1}){
  return %!paring_scheme{$nuc};
}

multi method readable (Str $nuc where {$nuc.chars == 3}){
  return %!paring_scheme{$nuc.substr(2,1)};
}
