json.extract! os_groups_membership, :id, :GroupID, :PrincipalID, :SelectedRoleID, :Contribution, :ListInProfile, :AcceptNotices, :AccessToken, :created_at, :updated_at
json.url os_groups_membership_url(os_groups_membership, format: :json)
