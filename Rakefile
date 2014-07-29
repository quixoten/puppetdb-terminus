require "bundler/gem_tasks"
require "fileutils"
require "puppetdb-terminus"

desc "Download source from PuppetDB #{PuppetDB::Terminus::VERSION}"
task :download_source do
  version = ::PuppetDB::Terminus::VERSION
  archive = "#{version}.tar.gz"
  url     = "https://github.com/puppetlabs/puppetdb/archive/#{archive}"

  `curl -sLO #{url}`
  FileUtils::rm_rf File.expand_path('../lib/puppet', __FILE__)
  `tar axf #{archive} puppetdb-#{version}/puppet/lib/ --strip-components=2`
end

task :build => :download_source

