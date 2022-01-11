Pod::Spec.new do |s|
  s.name         = "ZENDatePicker"
  s.version      = "1.1.0"
  s.summary      = "A control used for the inputting of date and time values."

  s.description  = <<-DESC
  	Control with customizable style (e.g. font, colors ...), that behaves just like native NSDatePicker.
      DESC

  s.homepage     = "https://confluence.zentity.com/display/ZENCOMP/ZEN:DatePicker"
  s.license      = { :type => 'ZEN 1.0 License', :file => 'LICENSE'}
  s.author       = { "Robert Vavrusa" => "robert.vavrusa@zentity.com" }
  s.source       = { :git => "ssh://git@stash.zmok.net:7999/zencomp/zendatepicker.git", :tag => s.version.to_s }
 
  s.platform     = :ios, '11.0'
  s.ios.deployment_target = '9.0'
  s.requires_arc = true
  s.swift_versions = '5.0'

  s.source_files = 'ZENDatePicker/src/**/*.{h,m}'

  s.dependency 'SwiftLint'
  s.frameworks = 'UIKit'

  s.test_spec 'Tests' do |test_spec|
    test_spec.requires_app_host = false
    test_spec.source_files = 'ZENDatePicker/Tests/**/*'
    test_spec.dependency 'Quick', '~> 3.1.2'
    test_spec.dependency 'Nimble', '~> 9.0.1'
  end

end
