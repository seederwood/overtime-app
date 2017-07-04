# Overtime app

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models:
- X Post -> date:datetime  rationale:text
- X User -> Devise
- X AdminUser -> STI
- AuditLog

## Features:
- Approval workflow
- SMS Sending -> link to approval or overtime input
- X Administrate admin dashboard
- Email summary to managers for Approval
- Needs to be documented if users did not log overtime
- X block non-Admin and guest users
- X customize admin search functionality

## UI:
- X Bootstrap -> formatting
- X Icons from Bootstrap Glyphicons
- X Update the styles for forms


## Refactor TODOS:
- refactor posts/form for AdminUser status
