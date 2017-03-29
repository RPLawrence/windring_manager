json.extract! userprofile, :id, :profilePartner, :profileAllowPublish, :profileMaturePublish, :profileURL, :profileWantToMask, :profileWantToText, :profileSkillsMask, :profileSkillsText, :profileLanguages, :profileImage, :profileAboutText, :profileFirstImage, :profileFirstText, :created_at, :updated_at
json.url userprofile_url(userprofile, format: :json)
