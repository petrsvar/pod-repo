Pod::Spec.new do |s|
  s.name         = "ZENAuthNext"
  s.version      = "3.0.0"
  s.summary      = "Authentization and login SDK compatible with GW 2.0."

  s.description  = <<-DESC
      Front-end authentication SDK for Zentity Digital Server (ZDS) also known as GW 2.0. It enables application to activate and login user using ZDS security model. It supports several authentication methods and is easily extendable.
      DESC

  s.homepage     = "https://confluence.zentity.com/display/ZENCOMP/ZEN:Auth+Next"
  s.license      = { :type => 'ZEN 1.0 License', :file => 'LICENSE'}
  s.author       = { "Lukas Petrik" => "lukas.petrik@zentity.com" }
  s.source       = { :git => "ssh://git@stash.zmok.net:7999/zencomp/zenauthnext.git", :tag => s.version.to_s }

  s.swift_versions = '4.0'
  s.platform     = :ios, '11.0'
  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }

  s.source_files = 'ZENAuthNext/src/**/*'

  s.dependency 'ZNI', '~> 2.1'
  s.dependency 'ZENLogger', '~> 1.2'
  s.dependency 'ZENSec', '~> 1.3'

  s.test_spec 'Tests' do |test_spec|
    test_spec.requires_app_host = false
    test_spec.source_files = 'ZENAuthNext/Tests/**/*'
    test_spec.dependency 'Quick', '~> 3.1.2'
    test_spec.dependency 'Nimble', '~> 9.0.1'
  end
end
