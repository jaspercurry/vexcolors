require 'rails_helper'

describe 'Flags Api' do
  before(:each) do
    @red = Color.create(name: "red")
    @blue = Color.create(name: "blue")
    @white = Color.create(name: "white")

    @usa = Flag.create({
      country: "USA",
      description: "Thirteen horizontal stripes alternating red and white; in the canton, 50 white stars of alternating numbers of six and five per row on a blue field.",
      num_of_colors: 3,
      img_url: "https://upload.wikimedia.org/wikipedia/en/a/a4/Flag_of_the_United_States.svg")
    }

    @japan = Flag.create({
      country: "Japan",
      description: "The Rising Sun Flag as used by the JMSDF; White with a red disc slightly to the hoist with 16 rays extending from the disc to the edges of the flag.",
      num_of_colors: 2,
      img_url: "https://upload.wikimedia.org/wikipedia/en/9/9e/Flag_of_Japan.svg")
    }

    @usa.colors << [@red, @white, @blue]
    @japan.colors << [@red, @white]

    @bad_flag = Flag.create({
      country: "",
      description: "Invisible flag",
      num_of_colors: 0,
      img_url: "https://www.google.com")
    }
  end

  describe 'get /flags' do
    context 'is valid' do
      it 'returns a json collection of all the flags' do
        get '/api/v1/flags'
        response_body = JSON.parse(response.body)
        expect(response).to be_sucess
        expect(response_body.length).to eq(2)
        expect(response_body.first["colors"]).to eq([])
      end
    end

    context 'is invalid' do
    end



  end

  describe 'get /flags/:id' do
  end

  describe 'post /flags/:id' do
  end

  describe 'patch /flags/:id'
  end

  describe 'destroy /flags/:id'
  end
end