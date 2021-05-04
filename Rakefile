sass_dir = '_sass/vendor'
assets_dir = 'assets/vendor'

task default: %w[copy]

task :clean do
  puts FileUtils.rm_rf(sass_dir)
  puts FileUtils.rm_rf(assets_dir)
end

task :copy do
  ['bootstrap', 'popper.js'].each do |gem|
    path = %x{ #{"bundle info %s --path" % gem} }.strip()

    if Dir.exists?(path + '/assets') then
      path = path + '/assets'
    elsif Dir.exists?(path + '/vendor/assets') then
      path = path + '/vendor/assets'
    else
      path = nil
    end

    if path then
      resource_paths = Dir.glob(path + '/*')

      sass_paths = resource_paths.select{ |file_path| file_path.end_with?('/stylesheets')}
      if not sass_paths.empty? then
        sass_target_dir = [ sass_dir, gem ].join('/')
        unless Dir.exists?(sass_target_dir) then
          FileUtils.mkdir_p(sass_target_dir)
        end
        FileUtils.cp_r(sass_paths, sass_target_dir)
      end

      assets_paths = resource_paths.reject{ |file_path| file_path.end_with?('/stylesheets')}
      if not assets_paths.empty? then
        assets_target_dir = [ assets_dir, gem ].join('/')
        unless Dir.exists?(assets_target_dir) then
          FileUtils.mkdir_p(assets_target_dir)
        end
        FileUtils.cp_r(assets_paths, assets_target_dir)
      end
    end
  end
end
