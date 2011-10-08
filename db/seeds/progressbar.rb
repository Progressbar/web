u = User.create(:username => 'ProgressBarSk', :email => 'info@progressbar.sk',:password => 'nbusr123', :password_confirmation => 'nbusr123')
u.add_role(:member)
u.add_role(:refinery)
u.add_role(:superuser)

RefinerySetting.set(:site_name, {:value => 'Progressbar Hackerspace', :restricted => true})
RefinerySetting.set(:i18n_translation_enabled, {:value => true, :restricted => true, :scoping => 'refinery'})
RefinerySetting.set(:i18n_translation_default_frontend_locale, {:value => :sk, :restricted => true, :scoping => 'refinery'})
RefinerySetting.set(:i18n_translation_default_locale, {:value => :en, :restricted => true, :scoping => 'refinery'})
RefinerySetting.set(:i18n_translation_frontend_locales, {:value => [:sk, :en], :restricted => true, :scoping => 'refinery'})
RefinerySetting.set(:use_marketable_urls, {:value => true, :restricted => true, :scoping => 'pages'})
RefinerySetting.set(:approximate_ascii, {:value => true, :restricted => true, :scoping => 'pages'})
RefinerySetting.set(:strip_non_ascii, {:value => true, :restricted => true, :scoping => 'pages'})
RefinerySetting.set(:approximate_ascii, {:value => true, :restricted => true, :scoping => 'blog'})
RefinerySetting.set(:strip_non_ascii, {:value => true, :restricted => true, :scoping => 'blog'})

RefinerySetting.set(:use_resource_caching, {:value => true, :restricted => true})
RefinerySetting.set(:cache_pages_backend, {:value => true, :restricted => true})
RefinerySetting.set(:frontend_refinery_stylesheets_enabled, {:value => false, :restricted => true})

#<RefinerySetting id: 16, name: "cache_pages_backend",
#value: "false",
#destroyable: true, created_at: "2011-07-29 10:26:23",
#updated_at: "2011-07-29 10:26:23",
#scoping: nil, restricted: false, callback_proc_as_string: nil, form_value_type: "text_area">, #<RefinerySetting id: 17, name: "i18n_translation_frontend_locales",
#value: [:en], destroyable: true, created_at: "2011-07-29 10:26:23",
#updated_at: "2011-07-29 10:26:23",
#scoping: "refinery",
#restricted: false, callback_proc_as_string: nil, form_value_type: "text_area">, #<RefinerySetting id: 18, name: "authenticity_token_on_frontend",
#value: "true",
#destroyable: true, created_at: "2011-07-29 10:26:33",
#updated_at: "2011-07-29 10:26:33",
#scoping: nil, restricted: false, callback_proc_as_string: nil, form_value_type: "text_area">, #<RefinerySetting id: 19, name: "frontend_refinery_stylesheets_enabled",
#value: "true",
#destroyable: true, created_at: "2011-07-29 10:26:33",
#updated_at: "2011-07-29 10:26:33",
#scoping: nil, restricted: false, callback_proc_as_string: nil, form_value_type: "text_area">, #<RefinerySetting id: 20, name: "menu_hide_children",
#value: "false",
#destroyable: true, created_at: "2011-07-29 10:26:33",
#updated_at: "2011-07-29 10:26:33",
#scoping: nil, restricted: false, callback_proc_as_string: nil, form_value_type: "text_area">, #<RefinerySetting id: 21, name: "site_twitter",
#value: "http://twitter.com/progressbarsk",
#destroyable: true, created_at: "2011-07-29 10:26:33",
#updated_at: "2011-07-29 10:26:33",
#scoping: nil, restricted: false, callback_proc_as_string: nil, form_value_type: "text_area">, #<RefinerySetting id: 22, name: "site_facebook",
#value: "http://www.facebook.com/progressbar",
#destroyable: true, created_at: "2011-07-29 10:26:33",
#updated_at: "2011-07-29 10:26:33",
#scoping: nil, restricted: false, callback_proc_as_string: nil, form_value_type: "text_area">, #<RefinerySetting id: 23, name: "site_foursquare_id",
#value: "7713190",
#destroyable: true, created_at: "2011-07-29 10:26:33",
#updated_at: "2011-07-29 10:26:33",
#scoping: nil, restricted: false, callback_proc_as_string: nil, form_value_type: "text_area">, #<RefinerySetting id: 24, name: "site_github",
#value: "https://github.com/Progressbar",
#destroyable: true, created_at: "2011-07-29 10:26:33",
#updated_at: "2011-07-29 10:26:33",
#scoping: nil, restricted: false, callback_proc_as_string: nil, form_value_type: "text_area">, #<RefinerySetting id: 25, name: "site_webmaster_email",
#value: "webmaster@progressbar.sk",
#destroyable: true, created_at: "2011-07-29 10:26:34",
#updated_at: "2011-07-29 10:26:34",
#scoping: nil, restricted: false, callback_proc_as_string: nil, form_value_type: "text_area">, #<RefinerySetting id: 26, name: "site_contact_email",
#value: "info@progressbar.sk",
#destroyable: true, created_at: "2011-07-29 10:26:34",
#updated_at: "2011-07-29 10:26:34",
#scoping: nil, restricted: false, callback_proc_as_string: nil, form_value_type: "text_area">] 