*** Settings ***
Library  RequestsLibrary
Library  Collections

Suite Teardown  delete all sessions

*** Variables ***
${baseAPIUrl}=  http://localhost:51044/api

*** Keywords ***
Initialize Base URL
    [Arguments]  ${Url}
    ${baseAPIUrl}=  ${Url}

Get Method
    [Arguments]  ${Url}  ${ResponseCode}
    create session  session  ${baseAPIUrl}
    ${Response}=  get request  session  ${Url}
    should be equal  ${Response.status_code}  ${ResponseCode}
    [Return]  convert to string  ${Response.content}
    delete all sessions

Post Method
    [Arguments]  ${Url}  ${RequestHeaders}  ${RequestBody}  ${ResponseCode}
    create session  session  ${baseAPIUrl}
    ${Body}=  create dictionary  ${RequestBody}
    ${Headers}=  create dictionary  ${RequestHeaders}
    ${Response}=  post request  session  ${Url}  data=${Body}  headers=${Headers}
    should be equal  ${Response.status_code}  ${ResponseCode}
    [Return]  convert to string  ${Response.content}
    delete all sessions

PUT Method
    [Arguments]  ${Url}  ${RequestHeaders}  ${RequestBody}  ${ResponseCode}
    create session  session  ${baseAPIUrl}
    ${Body}=  create dictionary  ${RequestBody}
    ${Headers}=  create dictionary  ${RequestHeaders}
    ${Response}=  put request  session  ${Url}  data=${Body}  headers=${Headers}
    should be equal  ${Response.status_code}  ${ResponseCode}
    [Return]  convert to string  ${Response.content}
    delete all sessions

PATCH Method
    [Arguments]  ${Url}  ${RequestHeaders}  ${RequestBody}  ${ResponseCode}
    create session  session  ${baseAPIUrl}
    ${Body}=  create dictionary  ${RequestBody}
    ${Headers}=  create dictionary  ${RequestHeaders}
    ${Response}=  patch request  session  ${Url}  data=${Body}  headers=${Headers}
    should be equal  ${Response.status_code}  ${ResponseCode}
    [Return]  convert to string  ${Response.content}
    delete all sessions

DELETE Method
    [Arguments]  ${Url}  ${RequestHeaders}  ${RequestBody}  ${ResponseCode}
    create session  session  ${baseAPIUrl}
    ${Body}=  create dictionary  ${RequestBody}
    ${Headers}=  create dictionary  ${RequestHeaders}
    ${Response}=  delete request  session  ${Url}  data=${Body}  headers=${Headers}
    should be equal  ${Response.status_code}  ${ResponseCode}
    [Return]  convert to string  ${Response.content}
    delete all sessions