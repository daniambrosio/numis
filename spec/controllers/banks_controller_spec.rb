require 'rails_helper'
require 'support/devise.rb'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe BanksController, type: :controller do

  # Call the login method to be used for all methods
  login_user

  # This should return the minimal set of attributes required to create a valid
  # Bank. As you add validations to Bank, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {name: "Citibank"}
  }

  let(:invalid_attributes) {
    {name: ""}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BanksController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "authenticated_user" do
    it "should have a current_user" do
      expect(subject.current_user).not_to be_nil
    end
  end

  describe "GET #index" do
    it "assigns all banks as @banks" do
      bank = Bank.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:banks)).to eq([bank])
    end
  end

  describe "GET #show" do
    it "assigns the requested bank as @bank" do
      bank = Bank.create! valid_attributes
      get :show, {:id => bank.to_param}, valid_session
      expect(assigns(:bank)).to eq(bank)
    end
  end

  # describe "GET #new" do
  #   it "assigns a new bank as @bank" do
  #     get :new, {}, valid_session
  #     expect(assigns(:bank)).to be_a_new(Bank)
  #   end
  # end

  # describe "GET #edit" do
  #   it "assigns the requested bank as @bank" do
  #     bank = Bank.create! valid_attributes
  #     get :edit, {:id => bank.to_param}, valid_session
  #     expect(assigns(:bank)).to eq(bank)
  #   end
  # end

  # describe "POST #create" do
  #   context "with valid params" do
  #     it "creates a new Bank" do
  #       expect {
  #         post :create, {:bank => valid_attributes}, valid_session
  #       }.to change(Bank, :count).by(1)
  #     end

  #     it "assigns a newly created bank as @bank" do
  #       post :create, {:bank => valid_attributes}, valid_session
  #       expect(assigns(:bank)).to be_a(Bank)
  #       expect(assigns(:bank)).to be_persisted
  #     end

  #     it "redirects to the created bank" do
  #       post :create, {:bank => valid_attributes}, valid_session
  #       expect(response).to redirect_to(Bank.last)
  #     end
  #   end

  #   context "with invalid params" do
  #     it "assigns a newly created but unsaved bank as @bank" do
  #       post :create, {:bank => invalid_attributes}, valid_session
  #       expect(assigns(:bank)).to be_a_new(Bank)
  #     end

  #     it "re-renders the 'new' template" do
  #       post :create, {:bank => invalid_attributes}, valid_session
  #       expect(response).to render_template("new")
  #     end
  #   end
  # end

  # describe "PUT #update" do
  #   context "with valid params" do
  #     let(:new_attributes) {
  #       skip("Add a hash of attributes valid for your model")
  #     }

  #     it "updates the requested bank" do
  #       bank = Bank.create! valid_attributes
  #       put :update, {:id => bank.to_param, :bank => new_attributes}, valid_session
  #       bank.reload
  #       skip("Add assertions for updated state")
  #     end

  #     it "assigns the requested bank as @bank" do
  #       bank = Bank.create! valid_attributes
  #       put :update, {:id => bank.to_param, :bank => valid_attributes}, valid_session
  #       expect(assigns(:bank)).to eq(bank)
  #     end

  #     it "redirects to the bank" do
  #       bank = Bank.create! valid_attributes
  #       put :update, {:id => bank.to_param, :bank => valid_attributes}, valid_session
  #       expect(response).to redirect_to(bank)
  #     end
  #   end

  #   context "with invalid params" do
  #     it "assigns the bank as @bank" do
  #       bank = Bank.create! valid_attributes
  #       put :update, {:id => bank.to_param, :bank => invalid_attributes}, valid_session
  #       expect(assigns(:bank)).to eq(bank)
  #     end

  #     it "re-renders the 'edit' template" do
  #       bank = Bank.create! valid_attributes
  #       put :update, {:id => bank.to_param, :bank => invalid_attributes}, valid_session
  #       expect(response).to render_template("edit")
  #     end
  #   end
  # end

  # describe "DELETE #destroy" do
  #   it "destroys the requested bank" do
  #     bank = Bank.create! valid_attributes
  #     expect {
  #       delete :destroy, {:id => bank.to_param}, valid_session
  #     }.to change(Bank, :count).by(-1)
  #   end

  #   it "redirects to the banks list" do
  #     bank = Bank.create! valid_attributes
  #     delete :destroy, {:id => bank.to_param}, valid_session
  #     expect(response).to redirect_to(banks_url)
  #   end
  # end

end
