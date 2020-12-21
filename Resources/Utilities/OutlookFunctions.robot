*** Settings ***
#Library  ImapLibrary
Library  RPA.Outlook.Application
#Library  RPA.Email.ImapSmtp

Suite Teardown  Close Mailbox

*** Variables ***


*** Keywords ***
Connect to Mailbox
    [Arguments]  ${host}  ${User}  ${Passwd}
    Open Mailbox  host=${host}  user=${User}  password=${Passwd}

Disconnect From Mailbox
    Close Mailbox

Email Verification
    [Arguments]  ${FromSender}
    Wait For Email  sender=${FromSender}  timeout=300
    Get Email Body  1

Authorize Account
    [Arguments]  ${Username}  ${Password}
    Authorize  account=${Username}  password=${Password}  smtp_server=smtp.gmail.com  smtp_port=587

Send Email Without Attachments
    [Arguments]  ${Sender}  ${Recipient}  ${Subject}  ${Emailbody}
    Authorize  account=${Username}  password=${Password}  smtp_server=smtp.gmail.com  smtp_port=587
    Send Message  sender=${Sender}
    ...  receipients=${Recipient}
    ...  subject=${Subject}
    ...  body=${Emailbody}

Send Email With Attachments
    [Arguments]  ${Sender}  ${Recipient}  ${Subject}  ${Emailbody}  ${Attachments}
    Send Message  sender=${Sender}
    ...  receipients=${Recipient}
    ...  subject=${Subject}
    ...  body=${Emailbody}
    ...  attachments=${Attachments}

Send Email
    [Arguments]  ${RECIPIENT}  ${Subject}  ${Emailbody}
    Open Application
    Send Message  recipients=${RECIPIENT}
    ...  subject=${Subject}
    ...  body=${Emailbody}