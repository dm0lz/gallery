require 'spec_helper'

describe PicturesController do

  render_views

  login_user

  #let(:user) {FactoryGirl.create(:user)}
  let(:album_1) {FactoryGirl.create(:album, :user_id => @user.id)}
  let(:picture_1) {FactoryGirl.create(:picture, :album_id => album_1.id, :user_id => @user.id)}
  let(:attributes) {FactoryGirl.attributes_for(:picture, :album_id => album_1.id)}


  describe "GET 'show'" do

    it "returns http success" do
      #binding.pry
      get 'show', :album_id => album_1.id, :id => picture_1.id
      response.should be_success
      #binding.pry
    end

  end

  describe "POST 'create'" do

    it "should create a new picture inside an album" do
      expect{
        (post :create, :picture => attributes, :album_id => album_1.id)
      }.to change(Picture, :count).by(1)
      #binding.pry
    end

    it "should assign a newly created picture as @picture" do
      post :create, :picture => attributes, :album_id => album_1.id
      assigns(:picture).should be_a(Picture)
      assigns(:picture).should be_persisted
      #binding.pry
    end

    it "should redirect to the newly created picture show page" do
      post :create, :picture => attributes, :album_id => album_1.id
      album_picture_path :id => assigns(:picture).id
      #binding.pry
    end

  end

  describe "GET 'destroy'" do

    it "should destroy the picture" do
      picture = Picture.create!(attributes) 
      expect{
        (delete :destroy, :id => picture.id, :album_id => picture.album_id)
      }.to change(Picture, :count).by(-1)
      #binding.pry
    end

  end

end



