function _docker.abbrs -d "Initialize Docker abbreviations"
    abbr -a -g d          docker

    # Image
    abbr -a -g dib        docker image build
    abbr -a -g dii        docker image inspect
    abbr -a -g dils       docker image ls
    abbr -a -g dis        docker images
    abbr -a -g dipu       docker image push
    abbr -a -g dirm       docker image rm
    abbr -a -g ddrmi      'docker rmi (docker images --filter "dangling=true" -q --no-trunc)' # remove all unused images
    abbr -a -g dit        docker image tag

    # Container
    abbr -a -g dcin       docker container inspect
    abbr -a -g dcls       docker container ls
    abbr -a -g dclsa      docker container ls -a
    abbr -a -g dps        docker ps
    abbr -a -g dpsa       docker ps -a
    abbr -a -g dlo        docker container logs
    abbr -a -g dpo        docker container port
    abbr -a -g dr         docker container run
    abbr -a -g drit       docker container run -it
    abbr -a -g drm        docker container rm
    abbr -a -g drm!       docker container rm -f
    abbr -a -g dst        docker container start
    abbr -a -g drs        docker container restart
    abbr -a -g dstp       docker container stop
    abbr -a -g dxc        docker container exec
    abbr -a -g dxcit      docker container exec -it

    # Network
    abbr -a -g dnc        docker network create
    abbr -a -g dncn       docker network connect
    abbr -a -g dndcn      docker network disconnect
    abbr -a -g dni        docker network inspect
    abbr -a -g dnls       docker network ls
    abbr -a -g dnrm       docker network rm

    # Volume
    abbr -a -g dvi        docker volume inspect
    abbr -a -g dvls       docker volume ls
    abbr -a -g dvprune    docker volume prune

    # Misc
    abbr -a -g dbl        docker build
    abbr -a -g dpl        docker pull
    abbr -a -g dstart     docker start
    abbr -a -g dstop      docker stop
    abbr -a -g dstopa     "docker stop (docker ps -q)" # stop all running containers
    abbr -a -g dtop       docker top
end
