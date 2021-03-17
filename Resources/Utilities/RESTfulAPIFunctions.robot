*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Variables ***
${baseAPIUrl}=  http://localhost:51045/api

*** Keywords ***
Initialize Base URL
    [Arguments]  ${Url}
    ${baseAPIUrl}=  Set Variable  ${Url}

Get Method
    [Arguments]  ${Url}  ${ResponseCode}
    create session  session  ${baseAPIUrl}
    ${Response}=  get on session  session  ${Url}
    ${strResponseCode}=  convert to string  ${Response.status_code}
    should be equal  ${strResponseCode}  ${ResponseCode}
    [Return]  convert to string  ${Response.content}
    delete all sessions

Post Method
    [Arguments]  ${Url}  ${RequestHeaders}  ${RequestBody}  ${ResponseCode}
    create session  session  ${baseAPIUrl}
    ${Body}=  create dictionary  ${RequestBody}
    ${Headers}=  create dictionary  ${RequestHeaders}
    ${Response}=  post on session  session  ${Url}  data=${Body}  headers=${Headers}
    ${strResponseCode}=  convert to string  ${Response.status_code}
    should be equal  ${strResponseCode}  ${ResponseCode}
    [Return]  convert to string  ${Response.content}
    delete all sessions

PUT Method
    [Arguments]  ${Url}  ${RequestHeaders}  ${RequestBody}  ${ResponseCode}
    create session  session  ${baseAPIUrl}
    ${Body}=  create dictionary  ${RequestBody}
    ${Headers}=  create dictionary  ${RequestHeaders}
    ${Response}=  put on session  session  ${Url}  data=${Body}  headers=${Headers}
    ${strResponseCode}=  convert to string  ${Response.status_code}
    should be equal  ${strResponseCode}  ${ResponseCode}
    [Return]  convert to string  ${Response.content}
    delete all sessions

PATCH Method
    [Arguments]  ${Url}  ${RequestHeaders}  ${RequestBody}  ${ResponseCode}
    create session  session  ${baseAPIUrl}
    ${Body}=  create dictionary  ${RequestBody}
    ${Headers}=  create dictionary  ${RequestHeaders}
    ${Response}=  patch on session  session  ${Url}  data=${Body}  headers=${Headers}
    ${strResponseCode}=  convert to string  ${Response.status_code}
    should be equal  ${strResponseCode}  ${ResponseCode}
    [Return]  convert to string  ${Response.content}
    delete all sessions

DELETE Method
    [Arguments]  ${Url}  ${RequestHeaders}  ${RequestBody}  ${ResponseCode}
    create session  session  ${baseAPIUrl}
    ${Body}=  create dictionary  ${RequestBody}
    ${Headers}=  create dictionary  ${RequestHeaders}
    ${Response}=  delete on session  session  ${Url}  data=${Body}  headers=${Headers}
    ${strResponseCode}=  convert to string  ${Response.status_code}
    should be equal  ${strResponseCode}  ${ResponseCode}
    [Return]  convert to string  ${Response.content}
    delete all sessions