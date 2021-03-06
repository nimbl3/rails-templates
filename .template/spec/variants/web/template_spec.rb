describe 'Web variant - template' do
  it 'creates the eslint configuration files' do
    expect(file('.eslintignore')).to exist
    expect(file('.eslintrc')).to exist
  end

  it 'creates sass lint configuration file' do
    expect(file('.scss-lint.yml')).to exist
  end

  it 'creates the .nvmrc file' do
    expect(file('.nvmrc'))
  end

  it 'creates the npm configuration file' do
    expect(file('.npmrc'))
  end

  it 'creates the TypeScript config file' do
    expect(file('tsconfig.json'))
  end

  context 'Turbolinks' do
    it 'removes data-turbolinks-track attribute from the layout' do
      expect(file('app/views/layouts/application.html.erb')).not_to contain('data-turbolinks-track')
    end

    it 'removes Turbolinks package dependency' do
      expect(file('app/javascript/packs/application.js')).not_to contain('turbolinks')
      expect(file('package.json')).not_to contain('turbolinks')
    end
  end
end
