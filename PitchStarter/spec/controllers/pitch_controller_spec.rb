require 'rails_helper'

describe PitchController do

  describe 'GET #index' do
      xit "renders index template" do
        get :index
        expect(response).to render_template :index
      end
   end


end
