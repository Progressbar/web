class ProgressbarImport < ActiveRecord::Migration

  def self.up
    add_column :users, :progressbar_uid, :integer
    add_column :users, :progressbar_screenname, :string
    add_column :users, :progressbar_openid, :string
    add_column :users, :progressbar_language, :string
    add_column :users, :progressbar_comment, :text
    add_column :users, :progressbar_firstname, :string
    add_column :users, :progressbar_lastname, :string
    add_column :users, :progressbar_midlename, :string
    add_column :users, :progressbar_job, :string
    add_column :users, :progressbar_active, :string
    add_column :users, :progressbar_digest, :string
    add_column :users, :progressbar_facebook, :string
    add_column :users, :progressbar_twitter, :string
    add_column :users, :progressbar_jabber, :string
    add_column :users, :progressbar_icq, :string
    add_column :users, :progressbar_mobile, :string
    
    add_column :events, :user_id, :integer
    add_column :events, :duration_hour, :integer
    add_column :events, :duration_minute, :integer
    add_column :events, :all_day, :boolean
    add_column :events, :repeating, :boolean
    add_column :events, :recurrence, :text
    
  end

  def self.down
    remove_column :users, :progressbar_uid
    remove_column :users, :progressbar_screenname
    remove_column :users, :progressbar_openid
    remove_column :users, :progressbar_language
    remove_column :users, :progressbar_comment
    remove_column :users, :progressbar_firstname
    remove_column :users, :progressbar_lastname
    remove_column :users, :progressbar_midlename
    remove_column :users, :progressbar_job
    remove_column :users, :progressbar_active
    remove_column :users, :progressbar_digest
    remove_column :users, :progressbar_facebook
    remove_column :users, :progressbar_twitter
    remove_column :users, :progressbar_jabber
    remove_column :users, :progressbar_icq
    remove_column :users, :progressbar_mobile
    
    remove_column :events, :user_id
    remove_column :events, :duration_hour
    remove_column :events, :duration_minute
    remove_column :events, :all_day
    remove_column :events, :repeating
    remove_column :events, :recurrence
  end
end