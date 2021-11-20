***Settings***
Documentation   Lists
Library         Collections


***Variables***
@{MEDUKA}                   Madoka      Homura      Mami        Kyoko       Sayaka
@{HIGURASHI}                Shion       Mion        Keiichi     Rena        Satoko

***Test Cases***

My List

    ${index}                Get Index From List     ${MEDUKA}       Madoka
    Log To Console          ${MEDUKA} 

    Set List Value          ${MEDUKA}       ${index}       Madokami

    ${index}                Get Index From List     ${MEDUKA}       Mami

    Remove From List        ${MEDUKA}       ${index}

    Log To Console          ${MEDUKA}

    ${crossover}            Combine Lists               ${MEDUKA}       ${HIGURASHI}

    Log to Console          ${crossover[8]}
