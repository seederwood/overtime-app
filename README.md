# Overtime app

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models:
- X Post -> date:datetime  rationale:text
- X User -> Devise
- X AdminUser -> STI

## Featres:
- Approval workflow
- SMS Sending -> link to approval or overtime input
- Administrate admin dashboard
- Email summary to managers for Approval
- Needs to be documented if users did not log overtime

## UI:
- X Bootstrap -> formatting
- Icons from Font Awesome
- Update the styles for forms


## Refactor TODOS:
- Refactor user association integration test in features/post_spec.rb
