# Oh My Fish initialization
# $path is only defined for oh-my-fish. home-manager activates this plugin by
# adding the full path of functions/ to fish_function_path, and then sourcing
# init.fish, so let's skip sourcing _docker.init.fish before calling _docker.init.
set -l _docker_init_path "$path/functions/_docker.init.fish"
if [ -f "$_docker_init_path" ];
    source "$_docker_init_path"
end

__docker.init