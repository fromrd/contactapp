class ContactsController < ApplicationController
  def index
  end
  
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(params.require(:contact).permit(:name, :email, :content))
    if @contact.save
      redirect_to new_contact_path, notice:"お問い合わせが完了しました！"
    else
      render 'new'
    end
  end
end
