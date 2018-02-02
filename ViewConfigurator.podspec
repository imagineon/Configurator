Pod::Spec.new do |s|
 s.name = 'ViewConfigurator'
 s.version = '0.3.0'
 s.license = { :type => "MIT", :file => "LICENSE" }
 s.summary = 'The clean way to setup your views'
 s.homepage = 'http://www.imagineon.de'
 s.social_media_url = 'https://twitter.com/imagineoncgn'
 s.authors = { "ImagineOn GmbH" => "hi@imagineon.de" }
 s.source = { :git => "https://github.com/imagineon/ViewConfigurator.git", :tag => "v"+s.version.to_s }
 s.platforms     = { :ios => "8.0" }
 s.requires_arc = true

 s.default_subspec = "Core"
 s.subspec "Core" do |ss|
     ss.source_files  = "Sources/**/*.swift"
     ss.framework  = 'Foundation', 'UIKit', 'QuartzCore'
 end

end
