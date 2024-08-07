// Exercicio 4
// 
// Esta string tem dois sinalizadores que parecem iguais. Mas eles não são! Um de
// eles é a bandeira do Chade e o outro é a bandeira da Romênia.
//
// ```
// const twoCountries = '🇹🇩🇷🇴';
// ```
//
// Qual e qual?
//
// **Dica**: a sequência de indicadores regionais da Romênia é `RO` e `R` é
// `127479` em decimal. Chad, que é _Tishād_ em árabe e _Tchad_ em
// Francês, tem uma sequência de indicadores regionais de `TD` . Letra de sequência 'T'
// é `127481` em decimal.

void main() {
  const twoCountries = '🇹🇩🇷🇴';

  String chade = twoCountries.substring(0, 2);
  String romenia = twoCountries.substring(2, 4);

  // Imprimindo os valores Unicode das bandeiras
  print('Bandeira do Chade: ${chade.runes}');
  print('Bandeira da Romênia: ${romenia.runes}');
}