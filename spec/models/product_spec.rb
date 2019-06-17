require 'rails_helper'

RSpec.describe Product, type: :model do

  

  context "when all attributes are provided" do

  let(:name) {'Apple'}
  let(:price) {999}
  let(:quantity) {1}
  let(:category) {Category.new}
  let(:product) {Product.new(name: name, price: 999, quantity: 1, category: category)}

    it "should be valid" do
      product.valid?
      expect(product).to be_valid

    end
  end

  context "when name is not provided" do

  let(:name) {nil}
  let(:price) {999}
  let(:quantity) {1}
  let(:category) {Category.new}
  let(:product) {Product.new(name: name, price: 999, quantity: 1, category: category)}

    it "should not be valid" do
      expect(product).to_not be_valid
    end

    it "reports a validation error on the name" do
      product.valid?
      expect(product.errors.full_messages).to include("Name can't be blank")
    end
  end

  context "when price is not provided" do

  let(:name) {'Apple'}  
  let(:price) {nil}
  let(:quantity) {1}
  let(:category) {Category.new}
  let(:product) {Product.new(name: name, price: price, quantity: 1, category: category)}

    it "should not be valid" do
     
      expect(product).to_not be_valid
    end

    it "reports a validation error on the price" do
     
      product.valid?
      expect(product.errors.full_messages).to include("Price can't be blank")
    end
  end

  context "when price is not provided" do

    let(:name) {'Apple'}  
    let(:price) {999}
    let(:quantity) {nil}
    let(:category) {Category.new}
    let(:product) {Product.new(name: name, price: price, quantity: quantity, category: category)}
  
      it "should not be valid" do
       
        expect(product).to_not be_valid
      end
  
      it "reports a validation error on the quantity" do
       
        product.valid?
        expect(product.errors.full_messages).to include("Quantity can't be blank")
      end
    end

  context "when category is not provided" do

    let(:name) {'Apple'}  
    let(:price) {999}
    let(:quantity) {1}
    let(:category) {Category.create(name: "Product", )}
    let(:product) {Product.new(name: "Josh", price: 999, quantity: 1, category: category)}
  
      it "should not be valid" do
        product.category = nil
        expect(product).to_not be_valid
      end
  
      it "reports a validation error on the price" do
        product.category = nil
        product.valid?
        expect(product.errors.full_messages).to include("Category can't be blank")
      end
    end

end

