Pod::Spec.new do |s|
  s.name         = "ZENLogger"
  s.version      = "2.2.0"
  s.summary      = "Debug logging utility."

  s.description  = <<-DESC
  	Utility for logging debug messages safely, with possibility to display console logs in the app. Logs are printed and stored only if DEBUG flag is present. Otherwise, no output is stored or generated. Use this preferably over print and debugPrint functions. ZENLogger is required by multiple internal SDKs and components.                          
      DESC

  s.homepage     = "https://confluence.zentity.com/display/ZENCOMP/ZEN:Logger"
  s.license      = { :type => 'ZEN 1.0 License', :file => 'LICENSE'}
  s.author       = { "Lukas Petrik" => "lukas.petrik@zentity.com" }
  s.source       = { :git => "ssh://git@stash.zmok.net:7999/zencomp/zenlogger.git", :tag => s.version.to_s }
 
  s.platform     = :ios, '11.0'
  s.ios.deployment_target = '9.0'
  s.swift_versions = '4.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
  s.requires_arc = true

  s.source_files = 'ZENLogger/src/*.swift'

  s.dependency 'SwiftLint'

  s.test_spec 'Tests' do |test_spec|
    test_spec.requires_app_host = false
    test_spec.source_files = 'ZENLogger/Tests/**/*'
    test_spec.dependency 'Quick', '~> 3.1.2'
    test_spec.dependency 'Nimble', '~> 9.0.1'
  end

end
