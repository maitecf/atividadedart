importar  "dart:io" ;
void  principal (){
  escolha ();
}

escolha (){
  imprima ( "*********************" );
  print ( "Escolha uma das atividades abaixo:" );
  print ( "1- Valores aceitos ou não aceitos" );
  print ( "2- Aluno aprovado ou não" );
  print ( "3- Tipos de Triângulo" );
  print ( "4- Par ou Ímpar" );
  int escolha =  int . parse (stdin. readLineSync () ! );
  if (escolha ==  1 ){
    valores aceitos ();
  } senão  se (escolha ==  2 ){
    alunos aprovados ();
  } senão  se (escolha ==  3 ){
    tiposTriângulos ();
  } senão  se (escolha ==  4 ){
    parOuÍmpar ();
  } senão {
    print ( "Escolha inválida, tente novamente... \n " );
    escolha ();
  }
}

escolhaMais uma vez (){
  imprima ( "*********************" );
  print ( "Deseja escolher outra atividade?" );
  print ( "S-sim/N-não" );
  Corda ? escolhaAgain = stdin. readLineSync (). toString (). para minúsculas ();
  if (escolhanovamente ==  "s" ){
    escolha ();
  }
  retorno ;
}

valores aceitos (){
  print ( "Me informe 4 numeros..." );
  print ( "Digite o primeiro numero:" );
  int numeroUm =  int . parse (stdin. readLineSync () ! );
  print ( "Digite o segundo numero:" );
  int númeroDois =  int . parse (stdin. readLineSync () ! );
  print ( "Digito o terceiro numero:" );
  int númeroTrês =  int . parse (stdin. readLineSync () ! );
  print ( "Digite o quarto numero:" );
  int numeroQuatro =  int . parse (stdin. readLineSync () ! );

  if (númeroDois > númeroTrês
  && númeroQuatro > númeroUm
  && numeroTrês + numeroQuatro > numeroUm + numeroDois
  && númeroTrês >  0
  && númeroQuatro >  0
  && numeroUm %  2  ==  0 ){
    print ( "Valores aceitos!" );
  } senão {
    print ( "Valores não aceitos." );
  }
  escolhaAgain ();
}

alunos aprovados (){
  print ( "Me informe as 4 notas do aluno..." );
  print ( "Digite a primeira nota:" );
  double gradeOne =  double . parse (stdin. readLineSync () ! );
  print ( "Digite a segunda nota:" );
  double gradeTwo =  double . parse (stdin. readLineSync () ! );
  print ( "Digite a terceira nota:" );
  nota duplaTrês =  dupla . parse (stdin. readLineSync () ! );
  print ( "Digite a quarta nota:" );
  nota duplaQuatro =  dupla . parse (stdin. readLineSync () ! );
  duplo alunoAverage = (notaUm + notaDois + notaTrês + notaQuatro) / 4 ;
  print ( "Média do aluno é ${ studentAverage . toStringAsFixed ( 1 )} " );

  if (studentAverage >=  7.0 ){
    print ( "Parabéns! \n Aluno aprovado!" );
  } else  if (studentAverage <  5.0 ){
    print ( "Que pena! \n Aluno reprovado!" );
  } senão {
    print ( "Aluno em exame... \n Digite a nota do exame:" );
    double recoveryNote =  double . parse (stdin. readLineSync () ! );
    print ( "Nota do exame: ${ recoveryNote . toStringAsFixed ( 1 )} " );
    double finalAverage = (studentAverage + recoveryNote) / 2 ;
    if (finalAverage >=  5.0 ){
      print ( "Parabéns! \n Aluno aprovado!" );
    } senão {
      print ( "Que pena! \n Aluno reprovado!" );
    }
    print ( "Média final: ${ finalAverage . toStringAsFixed ( 1 )} " );
  }
  escolhaAgain ();
}

tiposTriângulos (){
  print ( "Me informe os valores dos lados do triângulo..." );
  print ( "Primeiro lado:" );
  int primeiroLado =  int . parse (stdin. readLineSync () ! );
  print ( "Segundo lado:" );
  int segundoLado =  int . parse (stdin. readLineSync () ! );
  print ( "Terceiro lado:" );
  int terceiroLado =  int . parse (stdin. readLineSync () ! );

  if (primeiroLado >= segundoLado + terceiroLado){
    print ( "Não forma triângulo" );
    return  escolhaAgain ();
  } else  if (primeiroLado == segundoLado
    && segundoLado == terceiroLado){
    print ( "Triângulo Equilátero" );
  } else  if (primeiroLado == segundoLado
    || primeiroLado == terceiroLado
    || segundoLado == terceiroLado){
    print ( "Triângulo Isósceles" );
  }
  // primeiroLado² segundoLado² terceiroLado²
  primeiroLado *= primeiroLado; segundoLado *= segundoLado; terceiroLado *= terceiroLado;
  if (primeiroLado == segundoLado + terceiroLado){
    print ( "Triângulo Retângulo" );
  }
  if (primeiroLado > segundoLado + terceiroLado){
    print ( "Triângulo Obstusângulo" );
  } else  if (primeiroLado < segundoLado + terceiroLado){
    print ( "Triângulo Acutângulo" );
  }
  escolhaAgain ();
}

parOuÍmpar (){
  print ( "Par ou Ímpar..." );
  print ( "Primeiro jogador escreva par ou impar" );
  Corda ? escolha = stdin. readLineSync () ! . para minúsculas ();
  print ( "Primeiro jogador escolhido um número inteiro" );
  int escolhaNumeroPrimeiroJogador =  int . parse (stdin. readLineSync () ! );
  print ( "Segundo jogador escolhe um numero inteiro" );
  int escolhaNumberSecondPlayer =  int . parse (stdin. readLineSync () ! );
  int vencedor = (choiceNumberFirstPlayer + choiceNumberSecondPlayer) % 2 ;
  if (escolha ==  "par"
  && vencedor ==  0 ){
    print ( "Primeiro jogador ganhou!" );
  } else  if (escolha ==  "impar"
    && vencedor ==  1 ){
      print ( "Primeiro jogador ganhou!" );
  } senão {
    print ( "Segundo jogador ganhou!" );
  }
  escolhaAgain ();
}
