# #
# # To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# # Run `pod lib lint SystemStatus.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'system_status_macos'
  s.version          = '1.0.4'
  s.summary          = 'An MacOS implementation of the system_status plugin.'
  s.description      = <<-DESC
  The system_status Plugin is a powerful and user-friendly tool designed to provide real-time statistics on RAM, battery, storage, and CPU usage for MacOS computers.
	   DESC
  s.homepage         = 'https://github.com/mrasityilmaz/system_status_plugin'
	s.license          = {:file => '../LICENSE', :type => 'MIT' }
	s.author           = { 'Muhammed Raşit Yılmaz' => 'yilmazrasitt@gmail.com' }
	s.source           = { :git => 'https://github.com/mrasityilmaz/system_status_plugin.git',
	                       :tag => s.version.to_s }
		   s.source_files     = 'Classes/**/*'
		   s.dependency 'FlutterMacOS'
	     
		   s.platform = :osx, '10.14'
		   s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
		   s.swift_version = '5.0'
  # Framework linking is handled by Flutter tooling, not CocoaPods.
  # Add a placeholder to satisfy `s.dependency 'SystemStatus'` plugin podspecs.
  s.vendored_frameworks = 'path/to/nothing'
end


