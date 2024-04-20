vim.cmd [[
    command! Wallpaper lua Wallpaper()
    command! Waifu lua WallpaperDefault()
    command! Ghibles lua Ghibiles()
]]

function Wallpaper()
    local path = vim.fn.system("python3 /home/juleswhite/projects/wallpaperChanger/wallpaper.py")
    local file = io.open("/home/juleswhite/.wallpaper.txt", "w")

    if file then
        file:write(path)
        file:close()

        vim.fn.system("bash -i -c 'source /home/juleswhite/.bashrc'")
    end
end

function WallpaperDefault()
    local path = "/home/juleswhite/images/wallpapers/ign-waifu.png"

    local file = io.open("/home/juleswhite/.wallpaper.txt", "w")

    if file then
        file:write(path)
        file:close()

        vim.fn.system("bash -i -c 'source /home/juleswhite/.bashrc'")
    end
end


function Ghibiles()
    local path = "/home/juleswhite/images/anime/ghibles.png"
    local file = io.open("/home/juleswhite/.wallpaper.txt", "w")
    if file then
        file:write(path)
        file:close()
        vim.fn.system("bash -i -c 'source /home/juleswhite.bashrc'")
    end
end
