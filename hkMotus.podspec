Pod::Spec.new do |s|
  s.name             = 'hkMotus'
  s.version          = '1.0.0'
  s.summary          = 'Create a reload data effect on UITableView'
 
  s.description      = <<-DESC
It provides a roll effect on loading tableview
                       DESC
 
  s.homepage         = 'https://github.com/heuristisk/hkMotus.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Anderson Santos Gusmão' => 'heuristisking@gmail.com' }
  s.source           = { :git => 'https://github.com/heuristisk/hkMotus.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '8.0'
  s.source_files = 'hkMotus/*'
 
end
