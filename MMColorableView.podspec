Pod::Spec.new do |s|
s.name             = 'MMColorableView'
s.version          = '0.0.1'
s.summary          = 'By far the most fantastic view I have seen in my entire life. No joke.'

s.description      = <<-DESC
This Colorable view changes its color gradually makes your app look fantastic!
DESC

s.homepage         = 'https://github.com/Meseery/MMColorableView'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Meseery' => 'eng.m.elmeseery@gmail.com' }
s.source           = { :git => 'https://github.com/Meseery/MMColorableView.git', :tag => s.version.to_s }

s.ios.deployment_target = '11.4'
s.source_files = 'MMColorableView/*.swift'

end
