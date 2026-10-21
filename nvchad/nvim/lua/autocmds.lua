require "nvchad.autocmds"

-- Definisikan alias autocmd agar fungsi di bawahnya bisa berjalan tanpa error 
local autocmd = vim.api.nvim_create_autocmd

-- Fungsi untuk menyelesaikan masalah tombol Tab yang melompat di NvChad
autocmd('ModeChanged', {
  pattern = '*',
  callback = function()
    -- Melakukan pengecekan apakah LuaSnip sedang aktif saat ganti mode
    if ((vim.v.event.old_mode == 's' and vim.v.event.new_mode == 'n') or vim.v.event.old_mode == 'i')
        and require('luasnip').session.current_nodes[vim.api.nvim_get_current_buf()]
        and not require('luasnip').session.jump_active
    then
      -- Putus sesi snippet agar tombol Tab tidak melompat ke belakang
      require('luasnip').unlink_current()
    end
  end
})
