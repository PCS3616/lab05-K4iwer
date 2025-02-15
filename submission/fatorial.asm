    LD /0100
    SC /0010
    HM /0000

    @  /0010
    K  /0000
    JZ /0030
    ML /0106
    MM /0106
    LD N
    SB /0108
    MM N
    JZ /0022
    JP /0014
    LD /0106
    MM RES
    RS /0010

    @  /0030
    LD /0108
    MM RES
    JP /0022

    @  /0100
N   K  /0005
RES K  /0000

    @  /0106
    K  /0001
    K  /0001
