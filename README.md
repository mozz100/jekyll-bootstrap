## Jekyll
—the way I like to use it.

````
# Get started
fig build

# Starting and running a new, fresh app
export MOZZAPP=blah
fig run mozzjekyll jekyll new $MOZZAPP
fig up
# now browse port 4000 on docker host

# Alternatively, start from template_app which has plugins and bootstrap rigged up
export MOZZAPP=blah2
cp -r template_app $MOZZAPP
fig up

# Build a site for deploy
fig run mozzjekylll build.sh

# After modifying the Gemfile, run this to regen Gemfile.lock:
docker run --rm -v "$(pwd)":/usr/src/app -w /usr/src/app ruby:2.1 bundle install
fig build

````

Ideas:
* move docker stuff (everything except fig.yml?) into subdirectory so this can be like a submodule
