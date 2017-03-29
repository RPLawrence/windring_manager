json.extract! user_account, :id, :PrincipalID, :ScopeID, :FirstName, :LastName, :Email, :ServiceURLs, :Created, :UserLevel, :UserFlags, :UserTitle, :active, :created_at, :updated_at
json.url user_account_url(user_account, format: :json)
