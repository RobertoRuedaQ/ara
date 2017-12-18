require "rails_helper"

RSpec.describe Promo, type: :model do

	describe "#create_promo" do
		it "validate if the promo was propertly created" do
	    promo = build(:promo, title: "promocion de pollo", imagen: , description: "2x1", category: 1)

	    expect(user.full_name).to eq("Roberto Rueda")
	  end
	end

end