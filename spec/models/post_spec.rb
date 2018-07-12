require 'rails_helper'

RSpec.describe Post, type: :model do

  describe 'attributes' do
    it { expect(Post.new.attributes).to include('title', 'content', 'author_id')  }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:content) }
    it { should validate_length_of(:content).is_at_least(10) }
    it { should validate_length_of(:content).is_at_most(500) }
    it { should validate_uniqueness_of(:title) }
    it { should validate_length_of(:title).is_at_most(80) }
  end

  describe 'relations' do
    let(:post) { Post.create(title: 'validTitle1', content: 'validContent1') }
    it { should belong_to(:author) }
    it 'should post owner is nil' do
      expect(post.author_id).to eq(nil)
    end
  end

  describe 'scopes' do
    let(:post1) { Post.create(title: 'validTitle1', content: 'validContent1', created_at: DateTime.now - 50.minutes) }
    let(:post2) { Post.create(title: 'validTitle2', content: 'validContent2') }

    it 'should have old scope' do
      expect(Post.old).to include(post1)
      expect(Post.old).not_to include(post2)
    end
  end

end
