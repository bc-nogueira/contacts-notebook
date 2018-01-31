class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    params[:contact][:birthdate] = Date.strptime(params[:contact][:birthdate], '%m/%d/%Y')
    @contact = Contact.new(contact_params)
    binding.pry
    @contact.save
    redirect_to @contact
    # Contact.create(params[:contact])
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :birthdate)
  end
end
