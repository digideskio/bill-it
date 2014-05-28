require 'spec_helper'

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

describe CountsController do

  # This should return the minimal set of attributes required to create a valid
  # Count. As you add validations to Count, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "option" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CountsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all counts as @counts" do
      count = Count.create! valid_attributes
      get :index, {}, valid_session
      assigns(:counts).should eq([count])
    end
  end

  describe "GET show" do
    it "assigns the requested count as @count" do
      count = Count.create! valid_attributes
      get :show, {:id => count.to_param}, valid_session
      assigns(:count).should eq(count)
    end
  end

  describe "GET new" do
    it "assigns a new count as @count" do
      get :new, {}, valid_session
      assigns(:count).should be_a_new(Count)
    end
  end

  describe "GET edit" do
    it "assigns the requested count as @count" do
      count = Count.create! valid_attributes
      get :edit, {:id => count.to_param}, valid_session
      assigns(:count).should eq(count)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Count" do
        expect {
          post :create, {:count => valid_attributes}, valid_session
        }.to change(Count, :count).by(1)
      end

      it "assigns a newly created count as @count" do
        post :create, {:count => valid_attributes}, valid_session
        assigns(:count).should be_a(Count)
        assigns(:count).should be_persisted
      end

      it "redirects to the created count" do
        post :create, {:count => valid_attributes}, valid_session
        response.should redirect_to(Count.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved count as @count" do
        # Trigger the behavior that occurs when invalid params are submitted
        Count.any_instance.stub(:save).and_return(false)
        post :create, {:count => { "option" => "invalid value" }}, valid_session
        assigns(:count).should be_a_new(Count)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Count.any_instance.stub(:save).and_return(false)
        post :create, {:count => { "option" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested count" do
        count = Count.create! valid_attributes
        # Assuming there are no other counts in the database, this
        # specifies that the Count created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Count.any_instance.should_receive(:update_attributes).with({ "option" => "MyString" })
        put :update, {:id => count.to_param, :count => { "option" => "MyString" }}, valid_session
      end

      it "assigns the requested count as @count" do
        count = Count.create! valid_attributes
        put :update, {:id => count.to_param, :count => valid_attributes}, valid_session
        assigns(:count).should eq(count)
      end

      it "redirects to the count" do
        count = Count.create! valid_attributes
        put :update, {:id => count.to_param, :count => valid_attributes}, valid_session
        response.should redirect_to(count)
      end
    end

    describe "with invalid params" do
      it "assigns the count as @count" do
        count = Count.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Count.any_instance.stub(:save).and_return(false)
        put :update, {:id => count.to_param, :count => { "option" => "invalid value" }}, valid_session
        assigns(:count).should eq(count)
      end

      it "re-renders the 'edit' template" do
        count = Count.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Count.any_instance.stub(:save).and_return(false)
        put :update, {:id => count.to_param, :count => { "option" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested count" do
      count = Count.create! valid_attributes
      expect {
        delete :destroy, {:id => count.to_param}, valid_session
      }.to change(Count, :count).by(-1)
    end

    it "redirects to the counts list" do
      count = Count.create! valid_attributes
      delete :destroy, {:id => count.to_param}, valid_session
      response.should redirect_to(counts_url)
    end
  end

end
