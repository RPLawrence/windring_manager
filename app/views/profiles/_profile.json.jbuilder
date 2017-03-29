json.extract! profile, :id, :profilePartner, :profileAllowPublish, :profileMaturePublish, :profileURL, :profileWantToMask, :profileWantToText, :profileSkillsMask, :profileSkillsText, :profileLanguages, :profileImage, :profileAboutText, :profileFirstImage, :profileFirstText, :created_at, :updated_at
json.url profile_url(profile, format: :json)
