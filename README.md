# Overtime app

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models:
- X Post -> date:datetime  rationale:text
- X User -> Devise
- X AdminUser -> STI

## Features:
- Approval workflow
- SMS Sending -> link to approval or overtime input
- Administrate admin dashboard
- Email summary to managers for Approval
- Needs to be documented if users did not log overtime
- block non-Admin and guest users
- customize admin searches

## UI:
- X Bootstrap -> formatting
- Icons from Font Awesome
- X Update the styles for forms


## Refactor TODOS:
- Refactor user association integration test in features/post_spec.rb
