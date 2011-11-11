require "spec_helper"

describe ChunksController do
  describe "routing" do

    it "routes to #index" do
      get("/chunks").should route_to("chunks#index")
    end

    it "routes to #new" do
      get("/chunks/new").should route_to("chunks#new")
    end

    it "routes to #show" do
      get("/chunks/1").should route_to("chunks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/chunks/1/edit").should route_to("chunks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/chunks").should route_to("chunks#create")
    end

    it "routes to #update" do
      put("/chunks/1").should route_to("chunks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/chunks/1").should route_to("chunks#destroy", :id => "1")
    end

  end
end
