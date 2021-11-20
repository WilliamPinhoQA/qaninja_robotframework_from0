**Settings***
Documentation       Switch for ContaLibrary Class

Library     app/ContaLibrary.py

**Test Cases***
ZERO BALANCE
    Abrir Conta

    ${saldo_final}      Obter Saldo   
    ${saldo_esperado}   Convert to Number                  0.0

    Should Be Equal     ${saldo_final}      ${saldo_esperado}

  #  Log                 $(saldo_final)


Deposit
    Abrir Conta

    ${valor_deposito}           Convert to Number           100
    Deposita                    ${valor_deposito}

    ${saldo_final}              Obter Saldo

    Should be Equal     ${saldo_final}  ${valor_deposito}

Withdrawl
    Abrir Conta

    ${valor_deposito}           Convert to Number           100
    Deposita                    ${valor_deposito}

    ${saldo_final}              Obter Saldo

    ${valor_saque}              Convert to Number   100
    Saca                        ${valor_saque}

    ${saldo_esperado}           Evaluate    ${saldo_final} - ${valor_saque} - 2
    ${saldo_final}              Obter Saldo

    Should be Equal             ${saldo_final}  ${saldo_esperado}


    



