# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120824210646) do

  create_table "refinery_blog_categories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "slug"
  end

  add_index "refinery_blog_categories", ["id"], :name => "index_refinery_blog_categories_on_id"
  add_index "refinery_blog_categories", ["slug"], :name => "index_refinery_blog_categories_on_slug"

  create_table "refinery_blog_categories_blog_posts", :force => true do |t|
    t.integer "blog_category_id"
    t.integer "blog_post_id"
  end

  add_index "refinery_blog_categories_blog_posts", ["blog_category_id", "blog_post_id"], :name => "index_blog_categories_blog_posts_on_bc_and_bp"

  create_table "refinery_blog_category_translations", :force => true do |t|
    t.integer  "refinery_blog_category_id"
    t.string   "locale"
    t.string   "title"
    t.string   "slug"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "refinery_blog_category_translations", ["locale"], :name => "index_refinery_blog_category_translations_on_locale"
  add_index "refinery_blog_category_translations", ["refinery_blog_category_id"], :name => "index_a0315945e6213bbe0610724da0ee2de681b77c31"

  create_table "refinery_blog_comments", :force => true do |t|
    t.integer  "blog_post_id"
    t.boolean  "spam"
    t.string   "name"
    t.string   "email"
    t.text     "body"
    t.string   "state"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "refinery_blog_comments", ["id"], :name => "index_refinery_blog_comments_on_id"

  create_table "refinery_blog_post_translations", :force => true do |t|
    t.integer  "refinery_blog_post_id"
    t.string   "locale"
    t.text     "body"
    t.text     "custom_teaser"
    t.string   "custom_url"
    t.string   "slug"
    t.string   "title"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "refinery_blog_post_translations", ["locale"], :name => "index_refinery_blog_post_translations_on_locale"
  add_index "refinery_blog_post_translations", ["refinery_blog_post_id"], :name => "index_b64251f261a86197a796efc47e3e73a02cc69284"

  create_table "refinery_blog_posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.boolean  "draft"
    t.datetime "published_at"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "user_id"
    t.string   "custom_url"
    t.text     "custom_teaser"
    t.string   "source_url"
    t.string   "source_url_title"
    t.integer  "access_count",     :default => 0
    t.string   "slug"
  end

  add_index "refinery_blog_posts", ["access_count"], :name => "index_refinery_blog_posts_on_access_count"
  add_index "refinery_blog_posts", ["id"], :name => "index_refinery_blog_posts_on_id"
  add_index "refinery_blog_posts", ["slug"], :name => "index_refinery_blog_posts_on_slug"

  create_table "refinery_calendar_categories", :force => true do |t|
    t.string   "title",      :null => false
    t.string   "slug",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "refinery_calendar_categories", ["slug"], :name => "index_refinery_calendar_categories_on_slug", :unique => true

  create_table "refinery_calendar_categories_calendar_events", :force => true do |t|
    t.integer "calendar_category_id", :null => false
    t.integer "calendar_event_id",    :null => false
  end

  create_table "refinery_calendar_events", :force => true do |t|
    t.string   "name",                                                               :null => false
    t.text     "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "slug",                                                               :null => false
    t.boolean  "featured",                                        :default => false, :null => false
    t.decimal  "ticket_price",      :precision => 8, :scale => 2
    t.string   "ticket_link"
    t.string   "registration_link"
    t.integer  "location_id"
    t.integer  "image_id"
    t.integer  "user_id",                                                            :null => false
    t.datetime "published_at",                                                       :null => false
    t.boolean  "draft",                                           :default => false, :null => false
    t.datetime "created_at",                                                         :null => false
    t.datetime "updated_at",                                                         :null => false
  end

  add_index "refinery_calendar_events", ["name"], :name => "index_refinery_calendar_events_on_name"
  add_index "refinery_calendar_events", ["published_at"], :name => "index_refinery_calendar_events_on_published_at"
  add_index "refinery_calendar_events", ["slug"], :name => "index_refinery_calendar_events_on_slug", :unique => true
  add_index "refinery_calendar_events", ["start_date"], :name => "index_refinery_calendar_events_on_start_date"

  create_table "refinery_calendar_places", :force => true do |t|
    t.string   "name",             :null => false
    t.string   "slug"
    t.text     "description"
    t.string   "url"
    t.integer  "image_id"
    t.string   "phone"
    t.string   "email"
    t.string   "address_country"
    t.string   "address_locality"
    t.string   "address_region"
    t.string   "postal_code"
    t.string   "street_address"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "refinery_calendar_places", ["name"], :name => "index_refinery_calendar_places_on_name"
  add_index "refinery_calendar_places", ["slug"], :name => "index_refinery_calendar_places_on_slug", :unique => true

  create_table "refinery_door_statuses", :force => true do |t|
    t.boolean  "is_open",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "refinery_fees", :force => true do |t|
    t.integer  "user_id",                                                         :null => false
    t.integer  "transaction_id",                                                  :null => false
    t.decimal  "amount",         :precision => 8, :scale => 2, :default => 20.0,  :null => false
    t.string   "currency",                                     :default => "eur", :null => false
    t.integer  "month",                                                           :null => false
    t.integer  "year",                                                            :null => false
    t.string   "stamp",                                                           :null => false
    t.text     "message"
    t.datetime "created_at",                                                      :null => false
    t.datetime "updated_at",                                                      :null => false
  end

  add_index "refinery_fees", ["stamp"], :name => "index_refinery_fees_on_stamp", :unique => true

  create_table "refinery_images", :force => true do |t|
    t.string   "image_mime_type"
    t.string   "image_name"
    t.integer  "image_size"
    t.integer  "image_width"
    t.integer  "image_height"
    t.string   "image_uid"
    t.string   "image_ext"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "refinery_inquiries_inquiries", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "message"
    t.boolean  "spam",       :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "refinery_inquiries_inquiries", ["id"], :name => "index_refinery_inquiries_inquiries_on_id"

  create_table "refinery_mailinglists_subscribers", :force => true do |t|
    t.string   "email"
    t.boolean  "general",    :default => false
    t.boolean  "events",     :default => true
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "refinery_mailinglists_subscribers", ["email"], :name => "index_refinery_mailinglists_subscribers_on_email", :unique => true
  add_index "refinery_mailinglists_subscribers", ["id"], :name => "index_refinery_mailinglists_subscribers_on_id"

  create_table "refinery_page_part_translations", :force => true do |t|
    t.integer  "refinery_page_part_id"
    t.string   "locale"
    t.text     "body"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "refinery_page_part_translations", ["locale"], :name => "index_refinery_page_part_translations_on_locale"
  add_index "refinery_page_part_translations", ["refinery_page_part_id"], :name => "index_f9716c4215584edbca2557e32706a5ae084a15ef"

  create_table "refinery_page_parts", :force => true do |t|
    t.integer  "refinery_page_id"
    t.string   "title"
    t.text     "body"
    t.integer  "position"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "refinery_page_parts", ["id"], :name => "index_refinery_page_parts_on_id"
  add_index "refinery_page_parts", ["refinery_page_id"], :name => "index_refinery_page_parts_on_refinery_page_id"

  create_table "refinery_page_translations", :force => true do |t|
    t.integer  "refinery_page_id"
    t.string   "locale"
    t.string   "title"
    t.string   "custom_slug"
    t.string   "menu_title"
    t.string   "slug"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "refinery_page_translations", ["locale"], :name => "index_refinery_page_translations_on_locale"
  add_index "refinery_page_translations", ["refinery_page_id"], :name => "index_d079468f88bff1c6ea81573a0d019ba8bf5c2902"

  create_table "refinery_pages", :force => true do |t|
    t.integer  "parent_id"
    t.string   "path"
    t.string   "slug"
    t.boolean  "show_in_menu",        :default => true
    t.string   "link_url"
    t.string   "menu_match"
    t.boolean  "deletable",           :default => true
    t.boolean  "draft",               :default => false
    t.boolean  "skip_to_first_child", :default => false
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.string   "view_template"
    t.string   "layout_template"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "refinery_pages", ["depth"], :name => "index_refinery_pages_on_depth"
  add_index "refinery_pages", ["id"], :name => "index_refinery_pages_on_id"
  add_index "refinery_pages", ["lft"], :name => "index_refinery_pages_on_lft"
  add_index "refinery_pages", ["parent_id"], :name => "index_refinery_pages_on_parent_id"
  add_index "refinery_pages", ["rgt"], :name => "index_refinery_pages_on_rgt"

  create_table "refinery_registrations", :force => true do |t|
    t.string   "username",                              :null => false
    t.string   "email",                                 :null => false
    t.text     "message",                               :null => false
    t.string   "state",      :default => "unmoderated", :null => false
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  add_index "refinery_registrations", ["id"], :name => "index_refinery_registrations_on_id"

  create_table "refinery_resources", :force => true do |t|
    t.string   "file_mime_type"
    t.string   "file_name"
    t.integer  "file_size"
    t.string   "file_uid"
    t.string   "file_ext"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "refinery_roles", :force => true do |t|
    t.string "title"
  end

  create_table "refinery_roles_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "refinery_roles_users", ["role_id", "user_id"], :name => "index_refinery_roles_users_on_role_id_and_user_id"
  add_index "refinery_roles_users", ["user_id", "role_id"], :name => "index_refinery_roles_users_on_user_id_and_role_id"

  create_table "refinery_settings", :force => true do |t|
    t.string   "name"
    t.text     "value"
    t.boolean  "destroyable",     :default => true
    t.string   "scoping"
    t.boolean  "restricted",      :default => false
    t.string   "form_value_type"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "refinery_settings", ["name"], :name => "index_refinery_settings_on_name"

  create_table "refinery_transactions", :force => true do |t|
    t.string   "primary_type",                                                  :null => false
    t.string   "from_account"
    t.string   "to_account"
    t.decimal  "amount",       :precision => 8, :scale => 2,                    :null => false
    t.string   "currency",                                   :default => "eur", :null => false
    t.integer  "vs"
    t.string   "custom_type"
    t.datetime "realized_at",                                                   :null => false
    t.text     "message"
    t.text     "raw"
    t.string   "stamp"
    t.datetime "created_at",                                                    :null => false
    t.datetime "updated_at",                                                    :null => false
  end

  create_table "refinery_user_plugins", :force => true do |t|
    t.integer "user_id"
    t.string  "name"
    t.integer "position"
  end

  add_index "refinery_user_plugins", ["name"], :name => "index_refinery_user_plugins_on_name"
  add_index "refinery_user_plugins", ["user_id", "name"], :name => "index_refinery_user_plugins_on_user_id_and_name", :unique => true

  create_table "refinery_users", :force => true do |t|
    t.string   "username",                              :null => false
    t.string   "email",                                 :null => false
    t.string   "encrypted_password",                    :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "sign_in_count"
    t.datetime "remember_created_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.integer  "progressbar_uid",        :default => 0, :null => false
    t.string   "progressbar_screenname"
    t.string   "progressbar_openid"
    t.string   "progressbar_language"
    t.text     "progressbar_comment"
    t.string   "progressbar_firstname"
    t.string   "progressbar_lastname"
    t.string   "progressbar_midlename"
    t.string   "progressbar_job"
    t.string   "progressbar_active"
    t.string   "progressbar_digest"
    t.string   "progressbar_facebook"
    t.string   "progressbar_twitter"
    t.string   "progressbar_jabber"
    t.string   "progressbar_icq"
    t.string   "progressbar_mobile"
  end

  add_index "refinery_users", ["id"], :name => "index_refinery_users_on_id"
  add_index "refinery_users", ["progressbar_uid"], :name => "index_refinery_users_on_progressbar_uid", :unique => true

  create_table "seo_meta", :force => true do |t|
    t.integer  "seo_meta_id"
    t.string   "seo_meta_type"
    t.string   "browser_title"
    t.string   "meta_keywords"
    t.text     "meta_description"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "seo_meta", ["id"], :name => "index_seo_meta_on_id"
  add_index "seo_meta", ["seo_meta_id", "seo_meta_type"], :name => "index_seo_meta_on_seo_meta_id_and_seo_meta_type"

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

end
