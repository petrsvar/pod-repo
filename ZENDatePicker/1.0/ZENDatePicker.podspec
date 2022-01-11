Pod::Spec.new do |s|
s.name = "ZENDatePicker"
s.version = "1.0"
s.summary = "A control used for the inputting of date and time values."
s.description = "Control with customizable style (e.g. font, colors ...), that behaves just like native NSDatePicker."
s.homepage = "https://confluence.zmok.net/display/ZENCOMP/ZEN%3ADatePicker"
s.license = { :type => 'ZEN 1.0 License', :file => 'LICENSE'}
s.author = { "Robert Vavrusa" => "robert.vavrusa@zentity.com" }
s.source = { :git => "ssh://git@stash.zmok.net:7999/zencomp/zendatepicker.git", :tag => "1.0" }
s.platform = :ios, '9.0'
s.requires_arc = true
s.source_files = 'ZENDatePickerFramework/ZENDatePickerFramework/**/*.{h,m}'
s.exclude_files = 'ZENDatePickerFramework/ZENDatePickerFramework/**/ZENDatePickerFramework.h'
s.frameworks = 'UIKit'
end
