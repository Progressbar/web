Refinery::Blog::Post.class_eval do

  def have_translation?
    self[:body].present?
  end

  def body
    body = self[:body]

    current_lang = ::Globalize.locale
    ::Refinery::I18n.frontend_locales.each do |lang|
      if lang != current_lang
        ::I18n.locale = lang
        ::Globalize.locale = lang
        if body.blank? and self[:body].present?
          url = ''
          url += %Q{/#{lang}} unless lang == ::Refinery::I18n.default_frontend_locale
          url += %Q{/blog/posts/#{self.slug}}
          body = %Q{<p><a href="#{url}">}
          body += ::I18n.t('blog_post_realeased_in_html', { 
            :in_lang => ::I18n.t("in_#{lang}"), 
            :url => url
          })
          body += '</a></p>'
        end
      end
    end unless body.present?

    ::I18n.locale = current_lang
    ::Globalize.locale = current_lang

    body.to_s
  end

  def title
    title = self[:title]

    current_lang = ::Globalize.locale
    ::Refinery::I18n.frontend_locales.each do |lang|
      if lang != current_lang
        ::I18n.locale = lang
        ::Globalize.locale = lang
        if title.blank? and self[:title].present?
          title = self[:title]
        end
      end
    end unless title.present?

    ::I18n.locale = current_lang
    ::Globalize.locale = current_lang

    title.to_s
  end
end