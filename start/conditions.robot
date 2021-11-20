***Settings***
Documentation       Working with conditions


***Test Cases***

Driver License
    ${age}=             Set Variable        17


    IF                  ${age} >= 18
        Log To Console          Avaliable to Exam
    ELSE
        Log To Console          You're too young for Exam
    END


Navegador
    [tags]      browser 

    ${browser}=             Set Variable        Opera

    IF                  '${browser}' == 'Firefox'
        Log To Console          Calling '${browser}'
    ELSE IF              '${browser}' == 'Chorme'
        Log To Console          Calling '${browser}'
    ELSE IF              '${browser}' == 'Opera'
        Log To Console          Calling '${browser}'
    ELSE
        Fail          Wrong Browser
    END