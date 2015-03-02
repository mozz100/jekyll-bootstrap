## Jekyll
—the way I like to use it.

### What this is
An opinionated, works-for-me starter template for a basic web site with a few pages.
Based on Jekyll and Twitter Bootstrap, with the ability to customise the latter using less.

It's basically Jekyll with a couple of extra gems thrown in and Twitter Bootstrap
"vendored", with all the bits joined up.

### Prerequisites
* docker
* fig (python)

Downloading the container images and installing gems can take a while at the beginning of the process.

### Use as the starting point for a web site
Follow steps below

````
# Clone the code, naming this (origin) repo something other than 'origin'
export APPNAME=blah
git clone -o jekyll-bootstrap https://github.com/mozz100/jekyll-bootstrap.git $APPNAME
cd $APPNAME

# Add your own 'origin' remote. It should be an empty repo.
git remote add origin <your_git_url>
git push -u origin master

# Get started (takes a little while to download and install ruby containers etc)
fig build

# Run jekyll serve
fig up  # now browse port 8080 on docker host

# Develop site. Remember that inotify doesn't work in a docker container
# so have to rely on polling the file system, which is a bit annoying (slow).

# Build a site for deploy. Results end up in _site/
fig run mozzjekyll jekyll build

# After modifying the Gemfile, run this to regenerate Gemfile.lock:
docker run --rm -v "$(pwd)":/usr/src/app -w /usr/src/app ruby:2.1 bundle install
fig build

````
