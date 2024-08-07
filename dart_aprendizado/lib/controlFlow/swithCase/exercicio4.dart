// Implemente a função abaixo utilizando switch case de modo que ela
// retorne o preço de um ingresso de um show seguindo diagrama abaixo:
//
// Tipo de ingresso == Meia => Valor do ingresso: R$50,00
// Tipo de ingresso == Inteira => Valor do ingresso: R$100,00
// Tipo de ingresso == Solidário => Valor do ingresso: R$80,00
// Tipo de ingresso == Familia => Valor do ingresso: R$300,00
double ticket1(TicketType ticketType) {
  switch (ticketType) {
    case TicketType.meia:
      return 50.00;
    case TicketType.inteira:
      return 100.00;
    case TicketType.solidario:
      return 80.00;
    default:
      return 300.00;
  }
}

enum TicketType { meia, inteira, solidario, familia }

void main(List<String> args) {
  print(ticket1(TicketType.inteira));
}
