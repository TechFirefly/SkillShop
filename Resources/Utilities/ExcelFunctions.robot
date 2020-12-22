*** Settings ***
Library  ExcelLibrary

*** Variables ***


*** Keywords ***
Open Excel File
    [Arguments]  ${ExcelFile}
    Open Excel Document  ${ExcelFile}  doc_id=docid

Close Excel Documents
    Close All Excel Documents

Read Excel Cell Value
    [Arguments]  ${Sheet}  ${Row}  ${Column}
    ${Value}=  Read Excel Cell  row_num=${Row}  col_num=${Column}  sheet_name=${Sheet}
    log to console  ${Value}
    [Return]  ${Value}

Update Excel Cell Value
    [Arguments]  ${Sheet}  ${Row}  ${Column}  ${Value}
    Write Excel Cell  row_num=${Row}  col_num=${Column}  value=${Value}  sheet_name=${Sheet}
    Save Excel Document

Read Sheet Names
    [Arguments]  ${ExcelFile}
    ${sheets}=  Get List Sheet Names
    [Return]  ${sheets}