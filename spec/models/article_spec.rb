require 'rails_helper'

RSpec.describe Article, :type => :model do

  describe 'article' do
    it 'min length 3' do
      a = Article.new title: 'Ed', description: 'are flying'
      expect a.title == 'Ed'
    end

    it 'min length 1' do
      a = Article.new title: '', description: 'are flying'
      expect a.title == '1'
    end
  end

end
