require 'spec_helper'

describe CarsController do
  describe 'showing entries on index page' do
    it 'should render the index template' do
      get :index
      expect{response}.to render_template('index')
    end
  end
end
