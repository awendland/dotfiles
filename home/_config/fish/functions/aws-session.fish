function aws-session -d "Log into an AWS with MFA and export session credentials to the env"
  set --local AWS_ORG_ID 885924307449 # pinwheel's org
  read --prompt "echo 'AWS Username: '" -l username
  read --prompt "echo 'MFA Code: '" -l code

  set --local _authenticationOutput (aws sts get-session-token --serial-number arn:aws:iam::$AWS_ORG_ID:mfa/$username --token-code $code)

  set --export --global AWS_ACCESS_KEY_ID (echo $_authenticationOutput | jq -r '.Credentials.AccessKeyId')
  set --export --global AWS_SECRET_ACCESS_KEY (echo $_authenticationOutput | jq -r '.Credentials.SecretAccessKey')
  set --export --global AWS_SESSION_TOKEN (echo $_authenticationOutput | jq -r '.Credentials.SessionToken')
end
