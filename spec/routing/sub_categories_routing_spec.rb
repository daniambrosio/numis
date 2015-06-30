require "rails_helper"

RSpec.describe SubCategoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/categories/1/sub_categories").to route_to(
        :controller => "sub_categories",
        :action => "index",
        :category_id => "1"
      )
    end

    it "routes to #new" do
      expect(:get => "/categories/1/sub_categories/new").to route_to(
        :controller => "sub_categories",
        :action => "new",
        :category_id => "1"
      )
    end

    it "routes to #show" do
      expect(:get => "/categories/1/sub_categories/1").to route_to(
        :controller => "sub_categories",
        :action => "show",
        :category_id => "1",
        :id => "1"
      )
    end

    it "routes to #edit" do
      expect(:get => "/categories/1/sub_categories/1/edit").to route_to(
        :controller => "sub_categories",
        :action => "edit",
        :category_id => "1",
        :id => "1"
      )
    end

    it "routes to #create" do
      expect(:post => "/categories/1/sub_categories").to route_to(
        :controller => "sub_categories",
        :action => "create",
        :category_id => "1"
      )
    end

    it "routes to #update" do
      expect(:put => "/categories/1/sub_categories/1").to route_to(
        :controller => "sub_categories",
        :action => "update",
        :category_id => "1",
        :id => "1"
      )
    end

    it "routes to #destroy" do
      expect(:delete => "/categories/1/sub_categories/1").to route_to(
        :controller => "sub_categories",
        :action => "destroy",
        :category_id => "1",
        :id => "1"
      )
    end

  end
end
