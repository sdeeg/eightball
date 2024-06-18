# Magic Eightball App

Mono-repo for the Magic Eightball demo app.  The app has a microservices structure
with a separate project to house a github based configuration scenario.

## Projects
- eightball-config
  - A configuration file.  Eightball-service should access it remotely from GitHub.
- eightball-platform
  - Configuration files for Spring Cloud Gateway and TAP (and others)
- eightball-ui
  - HTLM/JavaScript frontend with server side API.
- eightball-server
  - The "Microservice".  Runs as separate process.  End users shouldn't have access.

## Spring Cloud Gateway

Control access to the backend API.  External routes for API clients and 
internal routes for other apps (eg: eightball-ui).

fqdn: https://eightball-service.host_url/answer?answer-set=codex

local: http://eightball-service:8080/answer?answer-set=codex

scg-fqdn: https://scg-gateway.host_url/eightball-api/answer?answer-set=codex

scg-local: http://scg-gateway/eightball-api/answer?answer-set=codex
