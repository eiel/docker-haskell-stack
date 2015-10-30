image_name = "eiel/haskell-stack"

task :build do
  sh "docker build -t #{image_name} ."
end

task shell: :build do
  sh "docker run --rm -it #{image_name} bash"
end

task push: :build do
  sh "docker push #{image_name}"
end
