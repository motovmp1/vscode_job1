*** Settings ***




*** Test Case ***

#forloop
#    : FOR   ${i}   IN RANGE     1    11
#    \   Log To Console   ${i}
#foorloop2
# if all number no tab is the same line, if tab one by one
#   : FOR   ${i}  IN      1     2   3   4   5   6   7   8
#  \   log to Console      ${i}
#forloop3withlist

#    @{items}        Create List         1   2   3   4   5
#    : FOR   ${i}    IN      @{items}
#    \   Log To Console  ${i}     
#foorloop4
#    @{name}     Create List     jhon  david   smith   ciba 
#    :FOR  ${i}  IN    @{name}
#   \   Log To Console  ${i[0:]}
 

For-Loop-Exiting
    @{ITEMS}    Create List     Good Element 1  ciba    Good Element 2
    :FOR    ${ELEMENT}    IN    @{ITEMS}
    \    Log    ${ELEMENT}
    \    Log To Console  ${ELEMENT}
    \    Run Keyword If     '${ELEMENT}' == 'ciba'   Exit For Loop
    \    Log    Do more actions here ...