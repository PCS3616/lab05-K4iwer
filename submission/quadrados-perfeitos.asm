INICIO    LD i         ; AC = i
          ML V2        ; AC = i*2
          AD V1        ; AC = i*2 + 1
          AD SOMATORIA ; AC = (i*2 + 1) + valores anteriores
          MM SOMATORIA ; AUX = AC
ENDERECO  MM /0102     ; Mem[endereços armazenar] = AC
          LD ENDERECO  ; AC = ENDERECO
          AD V2        ; AC = ENDERECO + 2
          MM ENDERECO  ; Mem[ENDERECO] = AC
          LD N         ; AC = N
          SB i         ; AC = N - i
          JZ FIM       ; i = N => FIM
          LD i         ; AC = i
          AD V1        ; AC = i + 1
          MM i         ; i = i + 1
          JP INICIO    ; LOOP
FIM       HM /0000     ; Termina

          @  /0050
N         K  /003E ; N
i         K  /0000 ; i
V2        K  /0002 ; 2
V1        K  /0001 ; 1
SOMATORIA K  /0000 ; SOMATORIA

    @  /0100 ; endereços armazenar
    K  /0000 ; Primeiro endereço
    K  /0000 ; Onde realmente começa

