class LiferayImport < ActiveRecord::Base
  self.abstract_class = true
  establish_connection :liferay
end

class LiferayUser < LiferayImport
  set_table_name 'User_'
  
  has_one  :contact,
           :class_name => 'LiferayContact',
           :primary_key => 'userId',
           :foreign_key => 'userId',
           :dependent => :destroy

end

class LiferayContact < LiferayImport
  set_table_name 'Contact_'
  
end

class LiferayBlog < LiferayImport
  set_table_name 'BlogsEntry'
  
end


class LiferayEvent < LiferayImport
  set_table_name 'CalEvent'
  
end

