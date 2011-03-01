class RakudoBio::Tools::WobbleBasePair;

has %!paring_scheme = (
    A => 'U',
    C => 'G',
    G => any('C','U'),
    U => any('A','G'),
    I => any('A','C','U'),
    );

multi method readable (Str $AA where {$AA.chars == 1}){
  return %!paring_scheme{$AA};
}

multi method readable (Str $AA where {$AA.chars == 3}){
  return %!paring_scheme{$AA.substr(2,1)};
}
