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

Trying to access the FQDN for a back end service should be blocked

fqdn: https://eightball-service.host_url/answer?answer-set=codex

For app to app communication (East/West or container to container) use K8s networking

local: http://eightball-service:8080/answer?answer-set=codex

SCG provides a front door to expose an API for external clients

scg-fqdn: https://scg-gateway.host_url/eightball-api/answer?answer-set=codex

Inernal clients can also use the name of the SCG object

scg-local: http://scg-gateway/eightball-api/answer?answer-set=codex

## git clone flag

To get all the submodlues with the clone of the main module make sure to pass: 
--recurse-submodules
