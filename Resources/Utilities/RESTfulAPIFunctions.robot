*** Settings ***
Library  String
Library  REST    http://localhost:51044/api

*** Variables ***
${baseAPIUrl}  localhost:8273/

*** Keywords ***
Intialize API Parameters
    [Arguments]  ${APIUrl}
    ${baseAPIUrl}=  ${APIUrl}

Get Method
    [Arguments]  ${Url}  ${ResponseCode}
    GET  ${Url}
    Integer  response status  ${ResponseCode}

Get Method Invalid
    [Arguments]  ${Url}  ${ResponseCode}  ${ResponseMessage}
    GET  ${Url}
    Integer  response status  ${ResponseCode}
    String  response body error  ${ResponseMessage}

Post Method
    [Arguments]  ${Url}  ${RequestBody}  ${ResponseCode}
    POST  ${Url}  ${RequestBody}
    Integer  response status  ${ResponseCode}

Post Method Invalid
    [Arguments]  ${Url}  ${RequestBody}  ${ResponseCode}  ${ResponseMessage}
    POST  ${Url}  ${RequestBody}
    Integer  response status  ${ResponseCode}
    String  response body error  ${ResponseMessage}

PUT Method
    [Arguments]  ${Url}  ${RequestBody}  ${ResponseCode}
    PUT  ${Url}  ${RequestBody}
    Integer  response status  ${ResponseCode}

PUT Method Invalid
    [Arguments]  ${Url}  ${RequestBody}  ${ResponseCode}  ${ResponseMessage}
    PUT  ${Url}  ${RequestBody}
    Integer  response status  ${ResponseCode}
    String  response body error  ${ResponseMessage}

PATCH Method
    [Arguments]  ${Url}  ${RequestBody}  ${ResponseCode}
    PATCH  ${Url}  ${RequestBody}
    Integer  response status  ${ResponseCode}

PATCH Method Invalid
    [Arguments]  ${Url}  ${RequestBody}  ${ResponseCode}  ${ResponseMessage}
    PATCH  ${Url}  ${RequestBody}
    Integer  response status  ${ResponseCode}
    String  response body error  ${ResponseMessage}

DELETE Method
    [Arguments]  ${Url}  ${ResponseCode}
    DELETE  ${Url}
    Integer  response status  ${ResponseCode}