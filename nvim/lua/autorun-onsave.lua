-- As a first step, auto run only rust projects on save
-- This is not complete yet
local count = 0
vim.cmd('vsplit')
local win = vim.api.nvim_get_current_win()
local buf = vim.api.nvim_create_buf(true, true)
vim.api.nvim_win_set_buf(win, buf)

local path = vim.fn.expand('<cfile>')
print(path)

vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("Rust autorun on save", { clear = true }),
    pattern = "*.rust",
    callback = function ()
        vim.api.nvim_buf_set_lines(buf, 0, -1, false, {"output of: autorun "..count})
        count = count + 1
        vim.fn.jobstart({"cargo", "run"}, {
            stdout_buffered = true,
            on_stdout = function (_, data)
                if data then
                    vim.api.nvim_buf_set_lines(buf, -1, -1, false, data)
                end
            end
        })
    end
})


