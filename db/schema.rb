# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "Avatars", primary_key: ["PrincipalID", "Name"], force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "PrincipalID", limit: 36,    null: false
    t.string "Name",        limit: 32,    null: false
    t.text   "Value",       limit: 65535
    t.index ["PrincipalID"], name: "PrincipalID", using: :btree
  end

  create_table "Friends", primary_key: ["PrincipalID", "Friend"], force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "PrincipalID",            default: "00000000-0000-0000-0000-000000000000", null: false
    t.string "Friend",                                                                  null: false
    t.string "Flags",       limit: 16, default: "0",                                    null: false
    t.string "Offered",     limit: 32, default: "0",                                    null: false
    t.index ["PrincipalID"], name: "PrincipalID", using: :btree
  end

  create_table "GridUser", primary_key: "UserID", id: :string, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "HomeRegionID", limit: 36, default: "00000000-0000-0000-0000-000000000000", null: false
    t.string "HomePosition", limit: 64, default: "<0,0,0>",                              null: false
    t.string "HomeLookAt",   limit: 64, default: "<0,0,0>",                              null: false
    t.string "LastRegionID", limit: 36, default: "00000000-0000-0000-0000-000000000000", null: false
    t.string "LastPosition", limit: 64, default: "<0,0,0>",                              null: false
    t.string "LastLookAt",   limit: 64, default: "<0,0,0>",                              null: false
    t.string "Online",       limit: 5,  default: "false",                                null: false
    t.string "Login",        limit: 16, default: "0",                                    null: false
    t.string "Logout",       limit: 16, default: "0",                                    null: false
  end

  create_table "Presence", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "UserID",                                                                      null: false
    t.string   "RegionID",        limit: 36, default: "00000000-0000-0000-0000-000000000000", null: false
    t.string   "SessionID",       limit: 36, default: "00000000-0000-0000-0000-000000000000", null: false
    t.string   "SecureSessionID", limit: 36, default: "00000000-0000-0000-0000-000000000000", null: false
    t.datetime "LastSeen",                   default: -> { "CURRENT_TIMESTAMP" },             null: false
    t.index ["RegionID"], name: "RegionID", using: :btree
    t.index ["SessionID"], name: "SessionID", unique: true, using: :btree
    t.index ["UserID"], name: "UserID", using: :btree
  end

  create_table "UserAccounts", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "PrincipalID", limit: 36,                 null: false
    t.string  "ScopeID",     limit: 36,                 null: false
    t.string  "FirstName",   limit: 64,                 null: false
    t.string  "LastName",    limit: 64,                 null: false
    t.string  "Email",       limit: 64
    t.text    "ServiceURLs", limit: 65535
    t.integer "Created"
    t.integer "UserLevel",                 default: 0,  null: false
    t.integer "UserFlags",                 default: 0,  null: false
    t.string  "UserTitle",   limit: 64,    default: "", null: false
    t.integer "active",                    default: 1,  null: false
    t.index ["Email"], name: "Email", using: :btree
    t.index ["FirstName", "LastName"], name: "Name", using: :btree
    t.index ["FirstName"], name: "FirstName", using: :btree
    t.index ["LastName"], name: "LastName", using: :btree
    t.index ["PrincipalID"], name: "PrincipalID", unique: true, using: :btree
  end

  create_table "assets", id: :string, limit: 36, default: "00000000-0000-0000-0000-000000000000", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "Rev. 1" do |t|
    t.string  "name",        limit: 64,                      null: false
    t.string  "description", limit: 64,                      null: false
    t.integer "assetType",   limit: 1,                       null: false
    t.boolean "local",                                       null: false
    t.boolean "temporary",                                   null: false
    t.binary  "data",        limit: 4294967295,              null: false
    t.integer "create_time",                    default: 0
    t.integer "access_time",                    default: 0
    t.integer "asset_flags",                    default: 0,  null: false
    t.string  "CreatorID",   limit: 128,        default: "", null: false
  end

  create_table "auth", primary_key: "UUID", id: :string, limit: 36, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "passwordHash", limit: 32, default: "",            null: false
    t.string "passwordSalt", limit: 32, default: "",            null: false
    t.string "webLoginKey",             default: "",            null: false
    t.string "accountType",  limit: 32, default: "UserAccount", null: false
  end

  create_table "bakedterrain", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "RegionUUID"
    t.integer "Revision"
    t.binary  "Heightfield", limit: 4294967295
  end

  create_table "classifieds", primary_key: "classifieduuid", id: :string, limit: 36, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string  "creatoruuid",     limit: 36,    null: false
    t.integer "creationdate",                  null: false
    t.integer "expirationdate",                null: false
    t.string  "category",        limit: 20,    null: false
    t.string  "name",                          null: false
    t.text    "description",     limit: 65535, null: false
    t.string  "parceluuid",      limit: 36,    null: false
    t.integer "parentestate",                  null: false
    t.string  "snapshotuuid",    limit: 36,    null: false
    t.string  "simname",                       null: false
    t.string  "posglobal",                     null: false
    t.string  "parcelname",                    null: false
    t.integer "classifiedflags",               null: false
    t.integer "priceforlisting",               null: false
  end

  create_table "estate_groups", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "EstateID",            null: false, unsigned: true
    t.string  "uuid",     limit: 36, null: false
    t.index ["EstateID"], name: "EstateID", using: :btree
  end

  create_table "estate_managers", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "EstateID",            null: false, unsigned: true
    t.string  "uuid",     limit: 36, null: false
    t.index ["EstateID"], name: "EstateID", using: :btree
  end

  create_table "estate_map", primary_key: "RegionID", id: :string, limit: 36, default: "00000000-0000-0000-0000-000000000000", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "EstateID", null: false
    t.index ["EstateID"], name: "EstateID", using: :btree
  end

  create_table "estate_settings", primary_key: "EstateID", unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string  "EstateName",              limit: 64
    t.integer "AbuseEmailToEstateOwner", limit: 1,              null: false
    t.integer "DenyAnonymous",           limit: 1,              null: false
    t.integer "ResetHomeOnTeleport",     limit: 1,              null: false
    t.integer "FixedSun",                limit: 1,              null: false
    t.integer "DenyTransacted",          limit: 1,              null: false
    t.integer "BlockDwell",              limit: 1,              null: false
    t.integer "DenyIdentified",          limit: 1,              null: false
    t.integer "AllowVoice",              limit: 1,              null: false
    t.integer "UseGlobalTime",           limit: 1,              null: false
    t.integer "PricePerMeter",                                  null: false
    t.integer "TaxFree",                 limit: 1,              null: false
    t.integer "AllowDirectTeleport",     limit: 1,              null: false
    t.integer "RedirectGridX",                                  null: false
    t.integer "RedirectGridY",                                  null: false
    t.integer "ParentEstateID",                                 null: false, unsigned: true
    t.float   "SunPosition",             limit: 53,             null: false
    t.integer "EstateSkipScripts",       limit: 1,              null: false
    t.float   "BillableFactor",          limit: 24,             null: false
    t.integer "PublicAccess",            limit: 1,              null: false
    t.string  "AbuseEmail",                                     null: false
    t.string  "EstateOwner",             limit: 36,             null: false
    t.integer "DenyMinors",              limit: 1,              null: false
    t.integer "AllowLandmark",           limit: 1,  default: 1, null: false
    t.integer "AllowParcelChanges",      limit: 1,  default: 1, null: false
    t.integer "AllowSetHome",            limit: 1,  default: 1, null: false
  end

  create_table "estate_users", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "EstateID",            null: false, unsigned: true
    t.string  "uuid",     limit: 36, null: false
    t.index ["EstateID"], name: "EstateID", using: :btree
  end

  create_table "estateban", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "EstateID",                    null: false, unsigned: true
    t.string  "bannedUUID",       limit: 36, null: false
    t.string  "bannedIp",         limit: 16, null: false
    t.string  "bannedIpHostMask", limit: 16, null: false
    t.string  "bannedNameMask",   limit: 64
    t.index ["EstateID"], name: "estateban_EstateID", using: :btree
  end

  create_table "hg_traveling_data", primary_key: "SessionID", id: :string, limit: 36, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "UserID",           limit: 36,                                      null: false
    t.string   "GridExternalName",            default: "",                         null: false
    t.string   "ServiceToken",                default: "",                         null: false
    t.string   "ClientIPAddress",  limit: 16, default: "",                         null: false
    t.string   "MyIPAddress",      limit: 16, default: "",                         null: false
    t.datetime "TMStamp",                     default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["UserID"], name: "UserID", using: :btree
  end

  create_table "im_offline", primary_key: "ID", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string   "PrincipalID", limit: 36,       default: "",                         null: false
    t.string   "FromID",      limit: 36,       default: "",                         null: false
    t.text     "Message",     limit: 16777215,                                      null: false
    t.datetime "TMStamp",                      default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["FromID"], name: "FromID", using: :btree
    t.index ["PrincipalID"], name: "PrincipalID", using: :btree
  end

  create_table "inventoryfolders", primary_key: "folderID", id: :string, limit: 36, default: "00000000-0000-0000-0000-000000000000", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "folderName",     limit: 64
    t.integer "type",           limit: 2,  default: 0, null: false
    t.integer "version",                   default: 0, null: false
    t.string  "agentID",        limit: 36
    t.string  "parentFolderID", limit: 36
    t.index ["agentID"], name: "inventoryfolders_agentid", using: :btree
    t.index ["parentFolderID"], name: "inventoryfolders_parentFolderid", using: :btree
  end

  create_table "inventoryitems", primary_key: "inventoryID", id: :string, limit: 36, default: "00000000-0000-0000-0000-000000000000", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "assetID",                      limit: 36
    t.integer "assetType"
    t.string  "inventoryName",                limit: 64
    t.string  "inventoryDescription",         limit: 128
    t.integer "inventoryNextPermissions",                                                                               unsigned: true
    t.integer "inventoryCurrentPermissions",                                                                            unsigned: true
    t.integer "invType"
    t.string  "creatorID",                                default: "00000000-0000-0000-0000-000000000000", null: false
    t.integer "inventoryBasePermissions",                 default: 0,                                      null: false, unsigned: true
    t.integer "inventoryEveryOnePermissions",             default: 0,                                      null: false, unsigned: true
    t.integer "salePrice",                                default: 0,                                      null: false
    t.integer "saleType",                     limit: 1,   default: 0,                                      null: false
    t.integer "creationDate",                             default: 0,                                      null: false
    t.string  "groupID",                      limit: 36,  default: "00000000-0000-0000-0000-000000000000", null: false
    t.integer "groupOwned",                   limit: 1,   default: 0,                                      null: false
    t.integer "flags",                                    default: 0,                                      null: false, unsigned: true
    t.integer "inventoryGroupPermissions",                default: 0,                                      null: false, unsigned: true
    t.string  "avatarID",                     limit: 36
    t.string  "parentFolderID",               limit: 36
    t.index ["avatarID"], name: "inventoryitems_avatarid", using: :btree
    t.index ["parentFolderID"], name: "inventoryitems_parentFolderid", using: :btree
  end

  create_table "land", primary_key: "UUID", id: :string, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string  "RegionUUID"
    t.integer "LocalLandID"
    t.binary  "Bitmap",           limit: 4294967295
    t.string  "Name"
    t.string  "Description"
    t.string  "OwnerUUID"
    t.integer "IsGroupOwned"
    t.integer "Area"
    t.integer "AuctionID"
    t.integer "Category"
    t.integer "ClaimDate"
    t.integer "ClaimPrice"
    t.string  "GroupUUID"
    t.integer "SalePrice"
    t.integer "LandStatus"
    t.integer "LandFlags",                                                                                         unsigned: true
    t.integer "LandingType"
    t.integer "MediaAutoScale"
    t.string  "MediaTextureUUID"
    t.string  "MediaURL"
    t.string  "MusicURL"
    t.float   "PassHours",        limit: 24
    t.integer "PassPrice"
    t.string  "SnapshotUUID"
    t.float   "UserLocationX",    limit: 24
    t.float   "UserLocationY",    limit: 24
    t.float   "UserLocationZ",    limit: 24
    t.float   "UserLookAtX",      limit: 24
    t.float   "UserLookAtY",      limit: 24
    t.float   "UserLookAtZ",      limit: 24
    t.string  "AuthbuyerID",      limit: 36,         default: "00000000-0000-0000-0000-000000000000", null: false
    t.integer "OtherCleanTime",                      default: 0,                                      null: false
    t.integer "Dwell",                               default: 0,                                      null: false
    t.string  "MediaType",        limit: 32,         default: "none/none",                            null: false
    t.string  "MediaDescription",                    default: "",                                     null: false
    t.string  "MediaSize",        limit: 16,         default: "0,0",                                  null: false
    t.boolean "MediaLoop",                           default: false,                                  null: false
    t.boolean "ObscureMusic",                        default: false,                                  null: false
    t.boolean "ObscureMedia",                        default: false,                                  null: false
    t.integer "SeeAVs",           limit: 1,          default: 1,                                      null: false
    t.integer "AnyAVSounds",      limit: 1,          default: 1,                                      null: false
    t.integer "GroupAVSounds",    limit: 1,          default: 1,                                      null: false
  end

  create_table "landaccesslist", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string  "LandUUID"
    t.string  "AccessUUID"
    t.integer "Flags"
    t.integer "Expires",    default: 0, null: false
  end

  create_table "migrations", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string  "name",    limit: 100
    t.integer "version"
  end

  create_table "os_groups_groups", primary_key: "GroupID", id: :string, limit: 36, default: "", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string  "Location",                     default: "", null: false
    t.string  "Name",                         default: "", null: false
    t.text    "Charter",        limit: 65535,              null: false
    t.string  "InsigniaID",     limit: 36,    default: "", null: false
    t.string  "FounderID",      limit: 36,    default: "", null: false
    t.integer "MembershipFee",                default: 0,  null: false
    t.string  "OpenEnrollment",               default: "", null: false
    t.integer "ShowInList",                   default: 0,  null: false
    t.integer "AllowPublish",                 default: 0,  null: false
    t.integer "MaturePublish",                default: 0,  null: false
    t.string  "OwnerRoleID",    limit: 36,    default: "", null: false
    t.index ["Name"], name: "Name", unique: true, using: :btree
    t.index ["Name"], name: "Name_2", type: :fulltext
  end

  create_table "os_groups_invites", primary_key: "InviteID", id: :string, limit: 36, default: "", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string   "GroupID",     limit: 36, default: "",                         null: false
    t.string   "RoleID",      limit: 36, default: "",                         null: false
    t.string   "PrincipalID",            default: "",                         null: false
    t.datetime "TMStamp",                default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["GroupID", "PrincipalID"], name: "PrincipalGroup", unique: true, using: :btree
  end

  create_table "os_groups_membership", primary_key: ["GroupID", "PrincipalID"], force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string  "GroupID",        limit: 36, default: "", null: false
    t.string  "PrincipalID",               default: "", null: false
    t.string  "SelectedRoleID", limit: 36, default: "", null: false
    t.integer "Contribution",              default: 0,  null: false
    t.integer "ListInProfile",             default: 1,  null: false
    t.integer "AcceptNotices",             default: 1,  null: false
    t.string  "AccessToken",    limit: 36, default: "", null: false
    t.index ["PrincipalID"], name: "PrincipalID", using: :btree
  end

  create_table "os_groups_notices", primary_key: "NoticeID", id: :string, limit: 36, default: "", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string  "GroupID",           limit: 36,    default: "", null: false
    t.integer "TMStamp",                         default: 0,  null: false, unsigned: true
    t.string  "FromName",                        default: "", null: false
    t.string  "Subject",                         default: "", null: false
    t.text    "Message",           limit: 65535,              null: false
    t.integer "HasAttachment",                   default: 0,  null: false
    t.integer "AttachmentType",                  default: 0,  null: false
    t.string  "AttachmentName",    limit: 128,   default: "", null: false
    t.string  "AttachmentItemID",  limit: 36,    default: "", null: false
    t.string  "AttachmentOwnerID",               default: "", null: false
    t.index ["GroupID"], name: "GroupID", using: :btree
    t.index ["TMStamp"], name: "TMStamp", using: :btree
  end

  create_table "os_groups_principals", primary_key: "PrincipalID", id: :string, default: "", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "ActiveGroupID", limit: 36, default: "", null: false
  end

  create_table "os_groups_rolemembership", primary_key: ["GroupID", "RoleID", "PrincipalID"], force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "GroupID",     limit: 36, default: "", null: false
    t.string "RoleID",      limit: 36, default: "", null: false
    t.string "PrincipalID",            default: "", null: false
    t.index ["PrincipalID"], name: "PrincipalID", using: :btree
  end

  create_table "os_groups_roles", primary_key: ["GroupID", "RoleID"], force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "GroupID",     limit: 36, default: "", null: false
    t.string "RoleID",      limit: 36, default: "", null: false
    t.string "Name",                   default: "", null: false
    t.string "Description",            default: "", null: false
    t.string "Title",                  default: "", null: false
    t.bigint "Powers",                 default: 0,  null: false, unsigned: true
    t.index ["GroupID"], name: "GroupID", using: :btree
  end

  create_table "primitems", primary_key: "itemID", id: :string, limit: 36, default: "", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "invType"
    t.integer "assetType"
    t.string  "name"
    t.string  "description"
    t.bigint  "creationDate"
    t.integer "nextPermissions"
    t.integer "currentPermissions"
    t.integer "basePermissions"
    t.integer "everyonePermissions"
    t.integer "groupPermissions"
    t.integer "flags",                          default: 0,  null: false
    t.string  "primID",              limit: 36
    t.string  "assetID",             limit: 36
    t.string  "parentFolderID",      limit: 36
    t.string  "CreatorID",                      default: "", null: false
    t.string  "ownerID",             limit: 36
    t.string  "groupID",             limit: 36
    t.string  "lastOwnerID",         limit: 36
    t.index ["primID"], name: "primitems_primid", using: :btree
  end

  create_table "prims", primary_key: "UUID", id: :string, limit: 36, default: "", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "CreationDate"
    t.string  "Name"
    t.string  "Text"
    t.string  "Description"
    t.string  "SitName"
    t.string  "TouchName"
    t.integer "ObjectFlags"
    t.integer "OwnerMask"
    t.integer "NextOwnerMask"
    t.integer "GroupMask"
    t.integer "EveryoneMask"
    t.integer "BaseMask"
    t.float   "PositionX",            limit: 53
    t.float   "PositionY",            limit: 53
    t.float   "PositionZ",            limit: 53
    t.float   "GroupPositionX",       limit: 53
    t.float   "GroupPositionY",       limit: 53
    t.float   "GroupPositionZ",       limit: 53
    t.float   "VelocityX",            limit: 53
    t.float   "VelocityY",            limit: 53
    t.float   "VelocityZ",            limit: 53
    t.float   "AngularVelocityX",     limit: 53
    t.float   "AngularVelocityY",     limit: 53
    t.float   "AngularVelocityZ",     limit: 53
    t.float   "AccelerationX",        limit: 53
    t.float   "AccelerationY",        limit: 53
    t.float   "AccelerationZ",        limit: 53
    t.float   "RotationX",            limit: 53
    t.float   "RotationY",            limit: 53
    t.float   "RotationZ",            limit: 53
    t.float   "RotationW",            limit: 53
    t.float   "SitTargetOffsetX",     limit: 53
    t.float   "SitTargetOffsetY",     limit: 53
    t.float   "SitTargetOffsetZ",     limit: 53
    t.float   "SitTargetOrientW",     limit: 53
    t.float   "SitTargetOrientX",     limit: 53
    t.float   "SitTargetOrientY",     limit: 53
    t.float   "SitTargetOrientZ",     limit: 53
    t.string  "RegionUUID",           limit: 36
    t.string  "CreatorID",                          default: "",                                     null: false
    t.string  "OwnerID",              limit: 36
    t.string  "GroupID",              limit: 36
    t.string  "LastOwnerID",          limit: 36
    t.string  "SceneGroupID",         limit: 36
    t.integer "PayPrice",                           default: 0,                                      null: false
    t.integer "PayButton1",                         default: 0,                                      null: false
    t.integer "PayButton2",                         default: 0,                                      null: false
    t.integer "PayButton3",                         default: 0,                                      null: false
    t.integer "PayButton4",                         default: 0,                                      null: false
    t.string  "LoopedSound",          limit: 36,    default: "00000000-0000-0000-0000-000000000000", null: false
    t.float   "LoopedSoundGain",      limit: 53,    default: 0.0,                                    null: false
    t.binary  "TextureAnimation",     limit: 65535
    t.float   "OmegaX",               limit: 53,    default: 0.0,                                    null: false
    t.float   "OmegaY",               limit: 53,    default: 0.0,                                    null: false
    t.float   "OmegaZ",               limit: 53,    default: 0.0,                                    null: false
    t.float   "CameraEyeOffsetX",     limit: 53,    default: 0.0,                                    null: false
    t.float   "CameraEyeOffsetY",     limit: 53,    default: 0.0,                                    null: false
    t.float   "CameraEyeOffsetZ",     limit: 53,    default: 0.0,                                    null: false
    t.float   "CameraAtOffsetX",      limit: 53,    default: 0.0,                                    null: false
    t.float   "CameraAtOffsetY",      limit: 53,    default: 0.0,                                    null: false
    t.float   "CameraAtOffsetZ",      limit: 53,    default: 0.0,                                    null: false
    t.integer "ForceMouselook",       limit: 1,     default: 0,                                      null: false
    t.integer "ScriptAccessPin",                    default: 0,                                      null: false
    t.integer "AllowedDrop",          limit: 1,     default: 0,                                      null: false
    t.integer "DieAtEdge",            limit: 1,     default: 0,                                      null: false
    t.integer "SalePrice",                          default: 10,                                     null: false
    t.integer "SaleType",             limit: 1,     default: 0,                                      null: false
    t.integer "ColorR",                             default: 0,                                      null: false
    t.integer "ColorG",                             default: 0,                                      null: false
    t.integer "ColorB",                             default: 0,                                      null: false
    t.integer "ColorA",                             default: 0,                                      null: false
    t.binary  "ParticleSystem",       limit: 65535
    t.integer "ClickAction",          limit: 1,     default: 0,                                      null: false
    t.integer "Material",             limit: 1,     default: 3,                                      null: false
    t.string  "CollisionSound",       limit: 36,    default: "00000000-0000-0000-0000-000000000000", null: false
    t.float   "CollisionSoundVolume", limit: 53,    default: 0.0,                                    null: false
    t.integer "LinkNumber",                         default: 0,                                      null: false
    t.integer "PassTouches",          limit: 1,     default: 0,                                      null: false
    t.string  "MediaURL"
    t.text    "DynAttrs",             limit: 65535
    t.integer "PhysicsShapeType",     limit: 1,     default: 0,                                      null: false
    t.float   "Density",              limit: 53,    default: 1000.0,                                 null: false
    t.float   "GravityModifier",      limit: 53,    default: 1.0,                                    null: false
    t.float   "Friction",             limit: 53,    default: 0.6,                                    null: false
    t.float   "Restitution",          limit: 53,    default: 0.5,                                    null: false
    t.binary  "KeyframeMotion",       limit: 65535
    t.float   "AttachedPosX",         limit: 53,    default: 0.0
    t.float   "AttachedPosY",         limit: 53,    default: 0.0
    t.float   "AttachedPosZ",         limit: 53,    default: 0.0
    t.integer "PassCollisions",       limit: 1,     default: 0,                                      null: false
    t.text    "Vehicle",              limit: 65535
    t.integer "RotationAxisLocks",    limit: 1,     default: 0,                                      null: false
    t.string  "RezzerID",             limit: 36
    t.index ["RegionUUID"], name: "prims_regionuuid", using: :btree
    t.index ["SceneGroupID"], name: "prims_scenegroupid", using: :btree
  end

  create_table "primshapes", primary_key: "UUID", id: :string, limit: 36, default: "", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "Shape"
    t.float   "ScaleX",           limit: 53,         default: 0.0, null: false
    t.float   "ScaleY",           limit: 53,         default: 0.0, null: false
    t.float   "ScaleZ",           limit: 53,         default: 0.0, null: false
    t.integer "PCode"
    t.integer "PathBegin"
    t.integer "PathEnd"
    t.integer "PathScaleX"
    t.integer "PathScaleY"
    t.integer "PathShearX"
    t.integer "PathShearY"
    t.integer "PathSkew"
    t.integer "PathCurve"
    t.integer "PathRadiusOffset"
    t.integer "PathRevolutions"
    t.integer "PathTaperX"
    t.integer "PathTaperY"
    t.integer "PathTwist"
    t.integer "PathTwistBegin"
    t.integer "ProfileBegin"
    t.integer "ProfileEnd"
    t.integer "ProfileCurve"
    t.integer "ProfileHollow"
    t.integer "State"
    t.binary  "Texture",          limit: 4294967295
    t.binary  "ExtraParams",      limit: 4294967295
    t.text    "Media",            limit: 65535
    t.integer "LastAttachPoint",                     default: 0,   null: false
  end

  create_table "profile", primary_key: "useruuid", id: :string, limit: 36, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string  "profilePartner",       limit: 36,    null: false
    t.binary  "profileAllowPublish",  limit: 1,     null: false
    t.binary  "profileMaturePublish", limit: 1,     null: false
    t.string  "profileURL",                         null: false
    t.integer "profileWantToMask",                  null: false
    t.text    "profileWantToText",    limit: 65535, null: false
    t.integer "profileSkillsMask",                  null: false
    t.text    "profileSkillsText",    limit: 65535, null: false
    t.text    "profileLanguages",     limit: 65535, null: false
    t.string  "profileImage",         limit: 36,    null: false
    t.text    "profileAboutText",     limit: 65535, null: false
    t.string  "profileFirstImage",    limit: 36,    null: false
    t.text    "profileFirstText",     limit: 65535, null: false
  end

  create_table "profile_classifieds", primary_key: "classifieduuid", id: :string, limit: 36, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string  "creatoruuid",     limit: 36,    null: false
    t.integer "creationdate",                  null: false
    t.integer "expirationdate",                null: false
    t.string  "category",        limit: 20,    null: false
    t.string  "name",                          null: false
    t.text    "description",     limit: 65535, null: false
    t.string  "parceluuid",      limit: 36,    null: false
    t.integer "parentestate",                  null: false
    t.string  "snapshotuuid",    limit: 36,    null: false
    t.string  "simname",                       null: false
    t.string  "posglobal",                     null: false
    t.string  "parcelname",                    null: false
    t.integer "classifiedflags",               null: false
    t.integer "priceforlisting",               null: false
  end

  create_table "profile_notes", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "useruuid",   limit: 36,    null: false
    t.string "targetuuid", limit: 36,    null: false
    t.text   "notes",      limit: 65535, null: false
    t.index ["useruuid", "targetuuid"], name: "useruuid", unique: true, using: :btree
  end

  create_table "profile_picks", primary_key: "pickuuid", id: :string, limit: 36, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string  "creatoruuid",  limit: 36,    null: false
    t.string  "toppick",      limit: 5,     null: false
    t.string  "parceluuid",   limit: 36,    null: false
    t.string  "name",                       null: false
    t.text    "description",  limit: 65535, null: false
    t.string  "snapshotuuid", limit: 36,    null: false
    t.string  "user",                       null: false
    t.string  "originalname",               null: false
    t.string  "simname",                    null: false
    t.string  "posglobal",                  null: false
    t.integer "sortorder",                  null: false
    t.string  "enabled",      limit: 5,     null: false
  end

  create_table "profile_settings", primary_key: "useruuid", id: :string, limit: 36, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "imviaemail", limit: 5,   null: false
    t.string "visible",    limit: 5,   null: false
    t.string "email",      limit: 254, null: false
  end

  create_table "regionban", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8", comment: "Rev. 1" do |t|
    t.string "regionUUID",       limit: 36, null: false
    t.string "bannedUUID",       limit: 36, null: false
    t.string "bannedIp",         limit: 16, null: false
    t.string "bannedIpHostMask", limit: 16, null: false
  end

  create_table "regionenvironment", primary_key: "region_id", id: :string, limit: 36, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "llsd_settings", limit: 65535, null: false
  end

  create_table "regionextra", primary_key: ["RegionID", "Name"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "RegionID", limit: 36,    null: false
    t.string "Name",     limit: 32,    null: false
    t.text   "value",    limit: 65535
  end

  create_table "regions", primary_key: "uuid", id: :string, limit: 36, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED", comment: "Rev. 3" do |t|
    t.bigint  "regionHandle",                                                                     null: false, unsigned: true
    t.string  "regionName",          limit: 128
    t.string  "regionRecvKey",       limit: 128
    t.string  "regionSendKey",       limit: 128
    t.string  "regionSecret",        limit: 128
    t.string  "regionDataURI"
    t.string  "serverIP",            limit: 64
    t.integer "serverPort",                                                                                    unsigned: true
    t.string  "serverURI"
    t.integer "locX",                                                                                          unsigned: true
    t.integer "locY",                                                                                          unsigned: true
    t.integer "locZ",                                                                                          unsigned: true
    t.bigint  "eastOverrideHandle",                                                                            unsigned: true
    t.bigint  "westOverrideHandle",                                                                            unsigned: true
    t.bigint  "southOverrideHandle",                                                                           unsigned: true
    t.bigint  "northOverrideHandle",                                                                           unsigned: true
    t.string  "regionAssetURI"
    t.string  "regionAssetRecvKey",  limit: 128
    t.string  "regionAssetSendKey",  limit: 128
    t.string  "regionUserURI"
    t.string  "regionUserRecvKey",   limit: 128
    t.string  "regionUserSendKey",   limit: 128
    t.string  "regionMapTexture",    limit: 36
    t.integer "serverHttpPort"
    t.integer "serverRemotingPort"
    t.string  "owner_uuid",          limit: 36,  default: "00000000-0000-0000-0000-000000000000", null: false
    t.string  "originUUID",          limit: 36
    t.integer "access",                          default: 1,                                                   unsigned: true
    t.string  "ScopeID",             limit: 36,  default: "00000000-0000-0000-0000-000000000000", null: false
    t.integer "sizeX",                           default: 0,                                      null: false
    t.integer "sizeY",                           default: 0,                                      null: false
    t.integer "flags",                           default: 0,                                      null: false
    t.integer "last_seen",                       default: 0,                                      null: false
    t.string  "PrincipalID",         limit: 36,  default: "00000000-0000-0000-0000-000000000000", null: false
    t.string  "Token",                                                                            null: false
    t.string  "parcelMapTexture",    limit: 36
    t.index ["ScopeID"], name: "ScopeID", using: :btree
    t.index ["eastOverrideHandle", "westOverrideHandle", "southOverrideHandle", "northOverrideHandle"], name: "overrideHandles", using: :btree
    t.index ["flags"], name: "flags", using: :btree
    t.index ["regionHandle"], name: "regionHandle", using: :btree
    t.index ["regionName"], name: "regionName", using: :btree
  end

  create_table "regionsettings", primary_key: "regionUUID", id: :string, limit: 36, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.integer "block_terraform",                                                                      null: false
    t.integer "block_fly",                                                                            null: false
    t.integer "allow_damage",                                                                         null: false
    t.integer "restrict_pushing",                                                                     null: false
    t.integer "allow_land_resell",                                                                    null: false
    t.integer "allow_land_join_divide",                                                               null: false
    t.integer "block_show_in_search",                                                                 null: false
    t.integer "agent_limit",                                                                          null: false
    t.float   "object_bonus",             limit: 53,                                                  null: false
    t.integer "maturity",                                                                             null: false
    t.integer "disable_scripts",                                                                      null: false
    t.integer "disable_collisions",                                                                   null: false
    t.integer "disable_physics",                                                                      null: false
    t.string  "terrain_texture_1",        limit: 36,                                                  null: false
    t.string  "terrain_texture_2",        limit: 36,                                                  null: false
    t.string  "terrain_texture_3",        limit: 36,                                                  null: false
    t.string  "terrain_texture_4",        limit: 36,                                                  null: false
    t.float   "elevation_1_nw",           limit: 53,                                                  null: false
    t.float   "elevation_2_nw",           limit: 53,                                                  null: false
    t.float   "elevation_1_ne",           limit: 53,                                                  null: false
    t.float   "elevation_2_ne",           limit: 53,                                                  null: false
    t.float   "elevation_1_se",           limit: 53,                                                  null: false
    t.float   "elevation_2_se",           limit: 53,                                                  null: false
    t.float   "elevation_1_sw",           limit: 53,                                                  null: false
    t.float   "elevation_2_sw",           limit: 53,                                                  null: false
    t.float   "water_height",             limit: 53,                                                  null: false
    t.float   "terrain_raise_limit",      limit: 53,                                                  null: false
    t.float   "terrain_lower_limit",      limit: 53,                                                  null: false
    t.integer "use_estate_sun",                                                                       null: false
    t.integer "fixed_sun",                                                                            null: false
    t.float   "sun_position",             limit: 53,                                                  null: false
    t.string  "covenant",                 limit: 36
    t.integer "Sandbox",                  limit: 1,                                                   null: false
    t.float   "sunvectorx",               limit: 53, default: 0.0,                                    null: false
    t.float   "sunvectory",               limit: 53, default: 0.0,                                    null: false
    t.float   "sunvectorz",               limit: 53, default: 0.0,                                    null: false
    t.string  "loaded_creation_id",       limit: 64
    t.integer "loaded_creation_datetime",            default: 0,                                      null: false, unsigned: true
    t.string  "map_tile_ID",              limit: 36, default: "00000000-0000-0000-0000-000000000000", null: false
    t.string  "TelehubObject",            limit: 36, default: "00000000-0000-0000-0000-000000000000", null: false
    t.string  "parcel_tile_ID",           limit: 36, default: "00000000-0000-0000-0000-000000000000", null: false
    t.integer "covenant_datetime",                   default: 0,                                      null: false, unsigned: true
    t.integer "block_search",             limit: 1,  default: 0,                                      null: false
    t.integer "casino",                   limit: 1,  default: 0,                                      null: false
  end

  create_table "regionwindlight", primary_key: "region_id", id: :string, limit: 36, default: "000000-0000-0000-0000-000000000000", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.float   "water_color_r",              limit: 24, default: 4.0,                                    null: false, unsigned: true
    t.float   "water_color_g",              limit: 24, default: 38.0,                                   null: false, unsigned: true
    t.float   "water_color_b",              limit: 24, default: 64.0,                                   null: false, unsigned: true
    t.float   "water_fog_density_exponent", limit: 24, default: 4.0,                                    null: false, unsigned: true
    t.float   "underwater_fog_modifier",    limit: 24, default: 0.25,                                   null: false, unsigned: true
    t.float   "reflection_wavelet_scale_1", limit: 24, default: 2.0,                                    null: false, unsigned: true
    t.float   "reflection_wavelet_scale_2", limit: 24, default: 2.0,                                    null: false, unsigned: true
    t.float   "reflection_wavelet_scale_3", limit: 24, default: 2.0,                                    null: false, unsigned: true
    t.float   "fresnel_scale",              limit: 24, default: 0.40000001,                             null: false, unsigned: true
    t.float   "fresnel_offset",             limit: 24, default: 0.5,                                    null: false, unsigned: true
    t.float   "refract_scale_above",        limit: 24, default: 0.03,                                   null: false, unsigned: true
    t.float   "refract_scale_below",        limit: 24, default: 0.2,                                    null: false, unsigned: true
    t.float   "blur_multiplier",            limit: 24, default: 0.04,                                   null: false, unsigned: true
    t.float   "big_wave_direction_x",       limit: 24, default: 1.04999995,                             null: false
    t.float   "big_wave_direction_y",       limit: 24, default: -0.41999999,                            null: false
    t.float   "little_wave_direction_x",    limit: 24, default: 1.11000001,                             null: false
    t.float   "little_wave_direction_y",    limit: 24, default: -1.15999997,                            null: false
    t.string  "normal_map_texture",         limit: 36, default: "822ded49-9a6c-f61c-cb89-6df54f42cdf4", null: false
    t.float   "horizon_r",                  limit: 24, default: 0.25,                                   null: false, unsigned: true
    t.float   "horizon_g",                  limit: 24, default: 0.25,                                   null: false, unsigned: true
    t.float   "horizon_b",                  limit: 24, default: 0.31999999,                             null: false, unsigned: true
    t.float   "horizon_i",                  limit: 24, default: 0.31999999,                             null: false, unsigned: true
    t.float   "haze_horizon",               limit: 24, default: 0.19,                                   null: false, unsigned: true
    t.float   "blue_density_r",             limit: 24, default: 0.12,                                   null: false, unsigned: true
    t.float   "blue_density_g",             limit: 24, default: 0.22,                                   null: false, unsigned: true
    t.float   "blue_density_b",             limit: 24, default: 0.38,                                   null: false, unsigned: true
    t.float   "blue_density_i",             limit: 24, default: 0.38,                                   null: false, unsigned: true
    t.float   "haze_density",               limit: 24, default: 0.69999999,                             null: false, unsigned: true
    t.float   "density_multiplier",         limit: 24, default: 0.18000001,                             null: false, unsigned: true
    t.float   "distance_multiplier",        limit: 24, default: 0.8,                                    null: false, unsigned: true
    t.integer "max_altitude",                          default: 1605,                                   null: false, unsigned: true
    t.float   "sun_moon_color_r",           limit: 24, default: 0.23999999,                             null: false, unsigned: true
    t.float   "sun_moon_color_g",           limit: 24, default: 0.25999999,                             null: false, unsigned: true
    t.float   "sun_moon_color_b",           limit: 24, default: 0.30000001,                             null: false, unsigned: true
    t.float   "sun_moon_color_i",           limit: 24, default: 0.30000001,                             null: false, unsigned: true
    t.float   "sun_moon_position",          limit: 24, default: 0.317,                                  null: false, unsigned: true
    t.float   "ambient_r",                  limit: 24, default: 0.34999999,                             null: false, unsigned: true
    t.float   "ambient_g",                  limit: 24, default: 0.34999999,                             null: false, unsigned: true
    t.float   "ambient_b",                  limit: 24, default: 0.34999999,                             null: false, unsigned: true
    t.float   "ambient_i",                  limit: 24, default: 0.34999999,                             null: false, unsigned: true
    t.float   "east_angle",                 limit: 24, default: 0.0,                                    null: false, unsigned: true
    t.float   "sun_glow_focus",             limit: 24, default: 0.1,                                    null: false, unsigned: true
    t.float   "sun_glow_size",              limit: 24, default: 1.75,                                   null: false, unsigned: true
    t.float   "scene_gamma",                limit: 24, default: 1.0,                                    null: false, unsigned: true
    t.float   "star_brightness",            limit: 24, default: 0.0,                                    null: false, unsigned: true
    t.float   "cloud_color_r",              limit: 24, default: 0.41,                                   null: false, unsigned: true
    t.float   "cloud_color_g",              limit: 24, default: 0.41,                                   null: false, unsigned: true
    t.float   "cloud_color_b",              limit: 24, default: 0.41,                                   null: false, unsigned: true
    t.float   "cloud_color_i",              limit: 24, default: 0.41,                                   null: false, unsigned: true
    t.float   "cloud_x",                    limit: 24, default: 1.0,                                    null: false, unsigned: true
    t.float   "cloud_y",                    limit: 24, default: 0.52999997,                             null: false, unsigned: true
    t.float   "cloud_density",              limit: 24, default: 1.0,                                    null: false, unsigned: true
    t.float   "cloud_coverage",             limit: 24, default: 0.27000001,                             null: false, unsigned: true
    t.float   "cloud_scale",                limit: 24, default: 0.41999999,                             null: false, unsigned: true
    t.float   "cloud_detail_x",             limit: 24, default: 1.0,                                    null: false, unsigned: true
    t.float   "cloud_detail_y",             limit: 24, default: 0.52999997,                             null: false, unsigned: true
    t.float   "cloud_detail_density",       limit: 24, default: 0.12,                                   null: false, unsigned: true
    t.float   "cloud_scroll_x",             limit: 24, default: 0.2,                                    null: false
    t.boolean "cloud_scroll_x_lock",                   default: false,                                  null: false, unsigned: true
    t.float   "cloud_scroll_y",             limit: 24, default: 0.01,                                   null: false
    t.boolean "cloud_scroll_y_lock",                   default: false,                                  null: false, unsigned: true
    t.boolean "draw_classic_clouds",                   default: true,                                   null: false, unsigned: true
  end

  create_table "spawn_points", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "RegionID", limit: 36, null: false, collation: "utf8_unicode_ci"
    t.float  "Yaw",      limit: 24, null: false
    t.float  "Pitch",    limit: 24, null: false
    t.float  "Distance", limit: 24, null: false
    t.index ["RegionID"], name: "RegionID", using: :btree
  end

  create_table "terrain", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string  "RegionUUID"
    t.integer "Revision"
    t.binary  "Heightfield", limit: 4294967295
  end

  create_table "tokens", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "UUID",     limit: 36, null: false
    t.string   "token",               null: false
    t.datetime "validity",            null: false
    t.index ["UUID", "token"], name: "uuid_token", unique: true, using: :btree
    t.index ["UUID"], name: "UUID", using: :btree
    t.index ["token"], name: "token", using: :btree
    t.index ["validity"], name: "validity", using: :btree
  end

  create_table "userdata", primary_key: ["UserId", "TagId"], force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "UserId",  limit: 36, null: false
    t.string "TagId",   limit: 64, null: false
    t.string "DataKey"
    t.string "DataVal"
  end

  create_table "usernotes", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "useruuid",   limit: 36,    null: false
    t.string "targetuuid", limit: 36,    null: false
    t.text   "notes",      limit: 65535, null: false
    t.index ["useruuid", "targetuuid"], name: "useruuid", unique: true, using: :btree
  end

  create_table "userpicks", primary_key: "pickuuid", id: :string, limit: 36, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string  "creatoruuid",  limit: 36,    null: false
    t.string  "toppick",      limit: 5,     null: false
    t.string  "parceluuid",   limit: 36,    null: false
    t.string  "name",                       null: false
    t.text    "description",  limit: 65535, null: false
    t.string  "snapshotuuid", limit: 36,    null: false
    t.string  "user",                       null: false
    t.string  "originalname",               null: false
    t.string  "simname",                    null: false
    t.string  "posglobal",                  null: false
    t.integer "sortorder",                  null: false
    t.string  "enabled",      limit: 5,     null: false
    t.string  "gatekeeper"
  end

  create_table "userprofile", primary_key: "useruuid", id: :string, limit: 36, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string  "profilePartner",       limit: 36,    null: false
    t.binary  "profileAllowPublish",  limit: 1,     null: false
    t.binary  "profileMaturePublish", limit: 1,     null: false
    t.string  "profileURL",                         null: false
    t.integer "profileWantToMask",                  null: false
    t.text    "profileWantToText",    limit: 65535, null: false
    t.integer "profileSkillsMask",                  null: false
    t.text    "profileSkillsText",    limit: 65535, null: false
    t.text    "profileLanguages",     limit: 65535, null: false
    t.string  "profileImage",         limit: 36,    null: false
    t.text    "profileAboutText",     limit: 65535, null: false
    t.string  "profileFirstImage",    limit: 36,    null: false
    t.text    "profileFirstText",     limit: 65535, null: false
  end

  create_table "usersettings", primary_key: "useruuid", id: :string, limit: 36, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "imviaemail", limit: 5,   null: false
    t.string "visible",    limit: 5,   null: false
    t.string "email",      limit: 254, null: false
  end

  create_table "wi_offline_msgs", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "uuid",    limit: 36,    null: false
    t.text   "message", limit: 65535, null: false
    t.index ["uuid"], name: "uuid", using: :btree
  end

end
