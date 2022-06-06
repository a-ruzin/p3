типовой контейнер с Python 3.10.4 для экспериментов, включает набор наиболее часто используемых пакетов

# run (fish)

    p3

или

    # p3 [docker-options]
    p3 -p 8080:80

# fish setup p3 command

    vi  ~/.config/fish/functions/p3.fish
    function p3
        docker run -it --rm $argv p3
    end

# build

    docker build -t p3 .



