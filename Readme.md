# p3
Typical Python 3.10.4 for experiments. Should be used instead running python on host computer to not mess with temporary packages.

### Usage (fishshell)

    p3

or

    # p3 [docker-options]
    p3 -p 8080:80
    # p3 [docker-options] -- [docker-args]
    p3 -p 8080:80 -- ipython
    p3 -- ipython

### fishshell setup p3 command

    vi  ~/.config/fish/functions/p3.fish
    function p3
        set index (contains -i -- -- $argv)
        if [ $index ]
            set last_option (math $index - 1)
            set first_arg (math $index + 1)
            docker run -it --rm $argv[1..$last_option] p3 $argv[$first_arg..]
        else
            docker run -it --rm $argv p3
        end
    end

### build

    docker build -t p3 .
