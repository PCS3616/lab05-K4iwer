    GD /000     ; AC =Scanf 1° digito
    SB V3030     ; AC = AC - 3030 // adequar por causa de asc
    MM Valor1    ; Mem[Valor1] = Scanf
    GD /000     ; AC = Scanf pra jogar fora espaço
    GD /000     ; AC = Scanf 2° digito
    SB V3030    ; AC = AC - 3030 // adequar por causa de asc
    AD Valor1    ; AC = AC + Valor1
    MM Resultado ; Mem[Resultado] = AC + Valor1
    ML V1000     ; Shifta valor 3 vezes
    SB VA000     ; AC = AC - A000
    JN Res       ; Se for negativo, menor digito < A
    LD Resultado ; digito > A000
    SB V000A     ; AC = AC - 000A
    AD V0100     ; Vai um
    JP Con       ; Vai para fim
Res LD Resultado ; Recupera resultado
Con AD V3030     ; AC = AC + 3030
    PD /100     ; Manda pro monitor
    HM /0000     ; finaliza programa







          @ /0050 
Valor1    K /0000
Resultado K /0000
V3030     K /3030
V1000     K /1000
VA000     K /A000
V000A     K /000A
V0100     K /0100