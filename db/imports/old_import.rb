module Refinery


  class OldImport < ActiveRecord::Base
    self.abstract_class = true
    establish_connection :old
  end

  class OldUsers < OldImport
    set_table_name 'users'

#    has_one  :contact,
#      :class_name => 'OldContact',
#      :primary_key => 'userId',
#      :foreign_key => 'userId',
#      :dependent => :destroy

  end

  class OldBlogPost < OldImport
    set_table_name 'blog_posts'
  end

  class OldBlogComments < OldImport
    set_table_name 'blog_comments'
  end

  class OldBlogCategories < OldImport
    set_table_name 'blog_categories'
  end

  class OldBlogCategoriesBlogPosts < OldImport
    set_table_name 'blog_categories_blog_posts'
  end


  class OldFees < OldImport
    set_table_name 'fees'
  end

  class OldImages < OldImport
    set_table_name 'images'
  end

  class OldMailingLists < OldImport
    set_table_name 'mailing_lists'
  end

  class OldRegistrations < OldImport
    set_table_name 'registrations'
  end

  class OldRolesUsers < OldImport
    set_table_name 'roles_users'
  end

end