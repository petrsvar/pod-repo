#
# Be sure to run `pod lib lint ZENUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZENUtils'
  s.version          = '0.1.0'
  s.summary          = 'ZENUtils contains various extension and helpers for iOS Development.'

  s.description      = <<-DESC
  Package contains extension and helpers for next areas:
    * Swift native types: Collections, Numbers, Bool, String
    * UI Kit types: UIColor, UIViews and others
    * Date & Calendar helpers
    * More date formatters
    * Validation engine
    * Input helpers
    * Crypto functions
                       DESC

  s.homepage         = 'https://stash.zmok.net/projects/ZENCOMP/repos/zenutils'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Zentity a.s.' => 'https://zentity.com/contact/' }
  s.source           = { :git => 'https://stash.zmok.net/scm/zencomp/zenutils.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.swift_versions = '5.0'

  s.source_files = 'ZENUtils/Classes/**/*'

  s.test_spec 'Tests' do |test_spec|
    test_spec.requires_app_host = false
    test_spec.source_files = 'ZENUtils/Tests/**/*'
    test_spec.scheme = { :code_coverage => true }
  end

  s.subspec 'Shared' do |sp|
      sp.source_files  = 'ZENUtils/Classes/Shared/*.swift'
  end

end
