# More info at https://github.com/guard/guard#readme

# If you like to know which change triggered a rebuild...
watch(/^(?!_site_dev).*/) { |m| puts "#{m[0]} changed."}

# rebuild site for changed files that don't start with _site_dev
guard 'jekyll', config: ['_config.yml', '_development.yml'] do
  watch(/^(?!_site_dev).*/)
end

# livereload triggers for everything inside _site_dev
guard 'livereload' do
  watch(%r{_site_dev/.+})
end