require "rails_helper"

RSpec.describe SubCategoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sub_categories").to route_to("sub_categories#index")
    end

    it "routes to #new" do
      expect(:get => "/sub_categories/new").to route_to("sub_categories#new")
    end

    it "routes to #show" do
      expect(:get => "/sub_categories/1").to route_to("sub_categories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sub_categories/1/edit").to route_to("sub_categories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sub_categories").to route_to("sub_categories#create")
    end

    it "routes to #update" do
      expect(:put => "/sub_categories/1").to route_to("sub_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sub_categories/1").to route_to("sub_categories#destroy", :id => "1")
    end

  end
end
