*** Settings ***
Library  DatabaseLibrary

*** Variables ***
${dbName}  customers
${dbUser}  root
${dbPassword}  admin
${dbHost}  localhost
${dbPort}  3306
@{queryResults}

*** Keywords ***
Initialize Database
    [Arguments]  ${dbname}   ${dbhost}   ${dbport}   ${dbuser}   ${dbpassword}
    set global variable  ${dbName}  ${dbname}
    set global variable  ${dbHost}  ${dbhost}
    set global variable  ${dbPort}  ${dbport}
    set global variable  ${dbUser}  ${dbuser}
    set global variable  ${dbPassword}  ${dbpassword}
    connect to database  pymysql  ${dbName}  ${dbUser}  ${dbPassword}  ${dbHost}  ${dbPort}

Execute Database Query
    [Arguments]  ${query}
    check if exists in database  ${query}
    @{queryResults}  query  ${query}
    [Return]  @{queryResults}