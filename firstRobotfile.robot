*** Settings ***
Library    collections

*** Variables ***
${NUM1}    10
${NUM2}    20

*** Test Cases ***
Arithmetic Operations Example
    # --- Simple arithmetic using Evaluate ---
    ${sum}        Evaluate    ${NUM1} + ${NUM2}
    ${diff}       Evaluate    ${NUM1} - ${NUM2}
    ${product}    Evaluate    ${NUM1} * ${NUM2}
    ${quotient}   Evaluate    ${NUM1} / ${NUM2}
    ${modulus}    Evaluate    ${NUM1} % ${NUM2}
    ${power}      Evaluate    ${NUM1} ** ${NUM2}

    Log To Console    Sum: ${sum}
    Log To Console    Difference: ${diff}
    Log To Console    Product: ${product}
    Log To Console    Quotient: ${quotient}
    Log To Console    Modulus: ${modulus}
    Log To Console    Power: ${power}

    # --- Inline math without Evaluate (only for simple +, -, *, /) ---
    ${inline_sum}    Set Variable    ${${NUM1} + ${NUM2}}
    Log To Console    Inline Sum: ${inline_sum}