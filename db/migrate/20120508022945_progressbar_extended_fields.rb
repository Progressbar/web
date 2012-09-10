class ProgressbarExtendedFields < ActiveRecord::Migration

  def self.up
    add_column :refinery_users, :progressbar_uid, :integer, :null => false, :default => 0
    add_column :refinery_users, :progressbar_screenname, :string
    add_column :refinery_users, :progressbar_openid, :string
    add_column :refinery_users, :progressbar_language, :string
    add_column :refinery_users, :progressbar_comment, :text
    add_column :refinery_users, :progressbar_firstname, :string
    add_column :refinery_users, :progressbar_lastname, :string
    add_column :refinery_users, :progressbar_midlename, :string
    add_column :refinery_users, :progressbar_job, :string
    add_column :refinery_users, :progressbar_active, :string
    add_column :refinery_users, :progressbar_digest, :string
    add_column :refinery_users, :progressbar_facebook, :string
    add_column :refinery_users, :progressbar_twitter, :string
    add_column :refinery_users, :progressbar_jabber, :string
    add_column :refinery_users, :progressbar_icq, :string
    add_column :refinery_users, :progressbar_mobile, :string
  end

  def self.down
    remove_column :refinery_users, :progressbar_uid
    remove_column :refinery_users, :progressbar_screenname
    remove_column :refinery_users, :progressbar_openid
    remove_column :refinery_users, :progressbar_language
    remove_column :refinery_users, :progressbar_comment
    remove_column :refinery_users, :progressbar_firstname
    remove_column :refinery_users, :progressbar_lastname
    remove_column :refinery_users, :progressbar_midlename
    remove_column :refinery_users, :progressbar_job
    remove_column :refinery_users, :progressbar_active
    remove_column :refinery_users, :progressbar_digest
    remove_column :refinery_users, :progressbar_facebook
    remove_column :refinery_users, :progressbar_twitter
    remove_column :refinery_users, :progressbar_jabber
    remove_column :refinery_users, :progressbar_icq
    remove_column :refinery_users, :progressbar_mobile
  end
end