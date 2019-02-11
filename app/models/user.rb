class User < ApplicationRecord
   # attr_accessor :full_name, :password, :email # Os métodos de acesso já foram herdados através da classe ApplicationRecord
   #https://stackoverflow.com/questions/14451800/why-do-i-get-unknown-validator-messagevalidator
   validates :full_name,
             :presence => {:message => "Name cannot be blank"},
             :length => {:maximum => 50, :message =>"Name cannot be longer than 50 characters"}

   validates :email, 
             :presence => {:message => "E-mail cannot be blank"},
             :format => {:with  => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/}
   
   validates :password,  
             :presence => {:message => "Password cannot be blank"},
             :confirmation => {:message => "Password must be confirmed"}
   
   # #validations
   # validates_presence_of :full_name, :password, :email
   # validates_confirmation_of :password
   # validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

   # validates :full_name, presence: true
   # validates :email, presence: true
   # validates :password, presence: true
   # validates :password, confirmation: true

   # validates :email, presence :true, 
                     # :format => {:with  => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/}

   # validates :password, presence :true#, 
                        # confirmation :true, uniqueness
                        # message: 'you must confirm the email'

end
