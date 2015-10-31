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

namespace :setup do
  task :build do
    sh "docker build -t #{image_name}:lts-3.11-warp -f Dockerfile_WithWarp ."
  end

  task push: :build do
    sh "docker push #{image_name}:lts-3.11-warp"
  end
end
