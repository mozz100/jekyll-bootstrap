## Jekyll
- the way I like to use it.

````
# Get started
fig build

# Set name of app to work on
export MOZZAPP=blah

# Run jekyll serve
fig up  # now browse port 4000 on docker host

# Starting and running a new, fresh app
mkdir -p apps
fig run mozzjekyll ./action.sh new

# Alternatively, start from template_app which has plugins and bootstrap rigged up
mkdir -p apps
cp -r template_app apps/$MOZZAPP

# Build a site for deploy
fig run mozzjekylll ./action.sh build

# After modifying the Gemfile, run this to regen Gemfile.lock:
docker run --rm -v "$(pwd)":/usr/src/app -w /usr/src/app ruby:2.1 bundle install
fig build


````
