## Jekyll
- the way I like to use it.

````
# Get started
fig build

# Run jekyll serve
fig up  # now browse port 4000 on docker host

# Build a site for deploy. Results end up in _site/
fig run mozzjekyll jekyll build

# After modifying the Gemfile, run this to regenerate Gemfile.lock:
docker run --rm -v "$(pwd)":/usr/src/app -w /usr/src/app ruby:2.1 bundle install
fig build


````
