Pod::Spec.new do |s|
  s.name         = "ZENRise"
  s.version      = "1.1.0"
  s.summary      = "Reporting component for automatic issue tracking."

  s.description  = <<-DESC
      Internal library facilitating debug data reporting and ability to provide quick feedback from users (report an error, send a suggestion, ask a question).
      DESC

  s.homepage     = "https://confluence.zentity.com/display/ZENCOMP/ZENRise"
  s.license      = { :type => 'ZEN 1.0 License', :file => 'LICENSE'}
  s.author       = { "Ondrej Vasicek" => "ondrej.vasicek@zentity.com" }
  s.source       = { :git => "ssh://git@stash.zmok.net:7999/zencomp/zenrise.git", :tag => s.version.to_s }

  s.swift_versions = '5.0'
  s.platform     = :ios, '12.0'
  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }

  s.source_files = 'ZENRise/src/**/*'

  s.test_spec 'Tests' do |test_spec|
    test_spec.requires_app_host = false
    test_spec.source_files = 'ZENRise/Tests/**/*'
    test_spec.dependency 'Quick', '~> 3.1.2'
    test_spec.dependency 'Nimble', '~> 9.0.1'
  end
end
