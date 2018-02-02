require 'rails_helper'

RSpec.describe Advertisement, type: :model do
<<<<<<< HEAD
  let(:advertisement) { Advertisement.create!(title: "New Advertisement Title", body: "New Advertisement Body") }


  describe "attributes" do
    it "has title and body attributes" do
      expect(advertisement).to have_attributes(title: "New Advertisement Title", body: "New Advertisement Body")
=======
  let (:advertisement) { Advertisement.create! }

  describe "attributes" do
    it "should respond to title" do
      expect(advertisement).to respond_to(:title)
    end

    it "should respond to copy" do
      expect(advertisement).to respond_to(:copy)
    end

    it "should respond to price" do
      expect(advertisement).to respond_to(:price)
>>>>>>> checkpoint-18-assignment-redo
    end
  end
end
