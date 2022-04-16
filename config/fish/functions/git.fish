function gf
    git fetch --all --prune --tags
end

function gs
    git status
end

function gc
    git commit $argv
end

function ga
    git add $argv
end

function gd
    git diff $argv
end

function gdt
    git difftool $argv
end

function gl
    git log $argv
end

function gp
    git pull $argv
end
