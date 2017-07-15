# Overtime app

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models:
- X Post -> date:datetime  rationale:text
- X User -> Devise
- X AdminUser -> STI
- X AuditLog

## Features:
- X Approval workflow
- X SMS Sending -> link to approval or overtime input - integrate wth heroku scheduler
- X Administrate admin dashboard
- X Email summary to managers for Approval
- X Needs to be documented if users did not log overtime
- X block non-Admin and guest users
- X customize admin search functionality
- X create audit log for each text message
- X update date_verified when verified/confirmed
- X update audit_log status when request is rejected
- X update buttons on employee homepage for mobile view
- X update buttons for employees to include full date range
- X update button sort order on employee homepage
- X remove unnecessary navbar buttons for managers
- X fix admin dashboard
- implement HoneyBager for error reporting
- implement NewRelic for keeping the site alive

## UI:
- X Bootstrap -> formatting
- X Icons from Bootstrap Glyphicons
- X Update the styles for forms


