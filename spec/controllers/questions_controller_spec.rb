require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do

  let (:my_question){
    Question.create!(id: 1, title: RandomData.random_sentence, body: RandomData.random_paragraph, resolved: false)}

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns [my_question] to @question" do
      get :index
      expect(assigns(:questions)).to eq([my_question])
    end
  end

  describe "GET show" do
    it "returns http success" do
      get :show, params: { id: my_question.id }
      expect(response).to have_http_status(:success)
    end

    it "renders the #show view" do
      get :show, params: { id: my_question.id }
      expect(response).to render_template :question
    end

    it "assigns my_question to @question" do
      expect(assigns(:question)).to eq(my_question)
    end
  end
end
