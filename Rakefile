task :default => [:build]

BUILD_DEPS = []

def bin_subdir(name)
  path = "bin/#{name}"
  directory path
  BUILD_DEPS << path
end

def bin_name(src)
  File.basename(src, File.extname(src))
end

def bin_path(subdir, src)
  File.join('bin', subdir, src)
end

def create_build_tasks(glob, subdir, &block)
  bin_subdir subdir
  Dir.glob(glob) do |src|
    bin = bin_path(subdir, bin_name(src))
    file bin => [src] do
      block.call(src, bin)
    end
    BUILD_DEPS << bin
  end
end

create_build_tasks '**/*.c', 'c' do |src, bin|
  sh "gcc #{src} -o #{bin}"
end

create_build_tasks '**/*.hs', 'haskell' do |src, bin|
  sh "ghc #{src} -o #{bin}"
end

create_build_tasks '**/*.go', 'go' do |src, bin|
  obj_file = "#{src}.6"
  sh "6g -o #{obj_file} #{src}"
  sh "6l -o #{bin} #{obj_file}"
  rm obj_file
end

bin_subdir 'javascript'
Dir.glob('**/*.coffee') do |src|
  bin = bin_path('javascript', bin_name(src)) + '.js'
  file bin => [src] do
    sh "coffee -c -b -o bin/javascript #{src}"
  end
  BUILD_DEPS << bin
end

task :build => BUILD_DEPS