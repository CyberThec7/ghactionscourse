# Manual Treggering: 

## 1- workflow_dispatch: from a- GUI in github or: 

## b- using cli:
### how to use github CLI
- first go  to github cli in google
- install it for your os
- setup it
- run the following in git bash/ cmd/ ...:

### gh auth login
### choose: Github.com, if you use something els then choose it
### ssh
### use the public key: c:\......
### choose log in with browser
### move to your workflow directory
### gh workflow run manual.yml / or the name of the workflow
### if i want choose enviroment: gh workflow run manual.yml -f environment=production




## 2- repository_dispatch: api call Tregger:
### create token from github
### write this in cmd: export GITHUB_PAT=ghp_6Y3gXeoodfgdfgf5RoBy9wSDJGJSDFyhmEL2tbOdZ


### curl -X POST \ 
  ### -H "Authorization: token $GITHUB_PAT" \
  ### -H "Accept: application/vnd.github.v3+json" \
  ### https://api.github.com/repos/CyberThec7/ghactionscourse/dispatches \
  ### -d '{"event_type": "incident_report"}'

if not work the command then add this after curl :
# --ssl-no-revoke 