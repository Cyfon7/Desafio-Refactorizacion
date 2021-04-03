 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/item_attributes", type: :request do
  
  # ItemAttribute. As you add validations to ItemAttribute, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      ItemAttribute.create! valid_attributes
      get item_attributes_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      item_attribute = ItemAttribute.create! valid_attributes
      get item_attribute_url(item_attribute)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_item_attribute_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      item_attribute = ItemAttribute.create! valid_attributes
      get edit_item_attribute_url(item_attribute)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new ItemAttribute" do
        expect {
          post item_attributes_url, params: { item_attribute: valid_attributes }
        }.to change(ItemAttribute, :count).by(1)
      end

      it "redirects to the created item_attribute" do
        post item_attributes_url, params: { item_attribute: valid_attributes }
        expect(response).to redirect_to(item_attribute_url(ItemAttribute.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new ItemAttribute" do
        expect {
          post item_attributes_url, params: { item_attribute: invalid_attributes }
        }.to change(ItemAttribute, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post item_attributes_url, params: { item_attribute: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested item_attribute" do
        item_attribute = ItemAttribute.create! valid_attributes
        patch item_attribute_url(item_attribute), params: { item_attribute: new_attributes }
        item_attribute.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the item_attribute" do
        item_attribute = ItemAttribute.create! valid_attributes
        patch item_attribute_url(item_attribute), params: { item_attribute: new_attributes }
        item_attribute.reload
        expect(response).to redirect_to(item_attribute_url(item_attribute))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        item_attribute = ItemAttribute.create! valid_attributes
        patch item_attribute_url(item_attribute), params: { item_attribute: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested item_attribute" do
      item_attribute = ItemAttribute.create! valid_attributes
      expect {
        delete item_attribute_url(item_attribute)
      }.to change(ItemAttribute, :count).by(-1)
    end

    it "redirects to the item_attributes list" do
      item_attribute = ItemAttribute.create! valid_attributes
      delete item_attribute_url(item_attribute)
      expect(response).to redirect_to(item_attributes_url)
    end
  end
end
