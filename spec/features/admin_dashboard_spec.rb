require 'rails_helper'

describe 'admin dashboard' do
  it 'can be reached successfully' do
    visit admin_root_path
    expect(page.status_code).to eq(200)
  end

  it 'can does not users to access without being signed in' do
    visit admin_root_path
    expect(current_path).to eq(new_user_session_path)
  end

  it 'cannot be reached by non admin user' do
    user = FactoryGirl.create(:user)
    login_as(user, scope: :user)

    visit admin_root_path

    expect(current_path).to eq(root_path)
  end

  it 'can be reached by an admin user' do
    user = FactoryGirl.create(:admin_user)
    login_as(user, scope: :user)

    visit admin_root_path

    expect(current_path).to eq(admin_root_path)
  end
end
