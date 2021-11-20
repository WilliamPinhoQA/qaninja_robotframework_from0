***Settings***
Documentation           Variables Examples
Library                 app/name.py
Library                 app/name.py


***Variables***
${NICKNAME}         DROGBA

***Test Cases***

Example 01
    ${name}    Test
    Set Suite Variable              ${name}


    Log To Console                  ${name}



Example 02

    Log To Console                  ${NICKNAME}