#
# Be sure to run `pod lib lint ZENUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZENUtils'
  s.version          = '0.0.4'
  s.summary          = 'ZENUtils contains various extension and helpers for iOS Development.'

  s.description      = <<-DESC
  Package contains extension and helpers for next areas:
    * Swift native types: Collections, Numbers, Bool, String
    * UI KIt types: UIViews and others
    * Date & Calendar helpers
    * More date formatters
                       DESC

  s.homepage         = 'https://stash.zmok.net/projects/ZENCOMP/repos/zenutils'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yan-zaitsev' => 'yan.zaitsev@zentity.com' }
  s.source           = { :git => 'https://stash.zmok.net/scm/zencomp/zenutils.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.swift_versions = '5.0'

  s.source_files = 'ZENUtils/Classes/**/*'

  s.test_spec 'Tests' do |test_spec|
    test_spec.requires_app_host = false
    test_spec.source_files = 'ZENUtils/Tests/**/*'
    test_spec.dependency 'Quick', '~> 2.2.0'
    test_spec.dependency 'Nimble', '~> 8.0.7'
  end
  
  # s.resource_bundles = {
  #   'ZENUtils' => ['ZENUtils/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'ZENLogger'
end
