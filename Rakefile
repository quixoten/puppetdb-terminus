require "bundler/gem_tasks"
require "fileutils"
require "puppetdb-terminus"

desc "Synchronize lib/puppet with PuppetDB v#{PuppetDB::Terminus::UPSTREAM_VERSION} source"
task :sync_with_upstream do
  version = ::PuppetDB::Terminus::UPSTREAM_VERSION
  archive = "#{version}.tar.gz"
  url     = "https://github.com/puppetlabs/puppetdb/archive/#{archive}"

  `curl -sLO #{url}`
  FileUtils::rm_rf File.expand_path('../lib/puppet', __FILE__)
  `tar -zxf #{archive} puppetdb-#{version}/puppet/lib/ --strip-components=2`
end

task :build => :sync_with_upstream
