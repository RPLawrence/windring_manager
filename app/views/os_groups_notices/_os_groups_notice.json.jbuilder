json.extract! os_groups_notice, :id, :GroupID, :TMStamp, :FromName, :Subject, :Message, :HasAttachment, :AttachmentType, :AttachmentName, :AttachmentItemID, :AttachmentOwnerID, :created_at, :updated_at
json.url os_groups_notice_url(os_groups_notice, format: :json)
