vim.cmd [[
    command! SBuild lua BuildSaveshare()
    command! SRun lua SServer()
    command! SError lua SError()
]]

function BuildSaveshare()
    local cli = 'dotnet build ~/projects/saveshare/src/client/saveshare.csproj'
    local clioutput = vim.fn.system(cli)
    vim.notify(clioutput)

    local ser = 'dotnet build ~/projects/saveshare/src/server/server.csproj'
    local seroutput = vim.fn.system(ser)
    vim.notify(seroutput)
end

function SServer()
    BuildSaveshare()
    local sessionname = "SSERVER"
    local windowExists = CheckTmuxWindowExists(sessionname)

    if windowExists then
        vim.notify("Window already exists")
        return
    end

    os.execute("tmux new-window -n " .. sessionname)
    os.execute("tmux send-keys -t " .. sessionname .. " 'clear; cd ~/projects/saveshare/src/server' Enter")
    os.execute("tmux send-keys -t " .. sessionname .. " 'clear; dotnet run' Enter")
    vim.notify("Started Server!")
end


function CheckTmuxWindowExists(windowName)
    local cmd = 'tmux list-windows -F "#W" | grep -q "^' .. windowName .. '$"'
    local success, _ = os.execute(cmd)
    return success == 0
end


function SError()
    local path = "/home/juleswhite/.config/StardewValley/ErrorLogs/SMAPI-latest.txt"
    local buf = vim.api.nvim_create_buf(false, true)

    local lines = {}

    for line in io.lines(path) do
        table.insert(lines, line)
    end
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)

    vim.api.nvim_buf_set_name(buf, path)

    vim.api.nvim_set_current_buf(buf)
end
