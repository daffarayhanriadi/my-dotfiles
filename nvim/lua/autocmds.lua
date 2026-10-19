require "nvchad.autocmds"

-- Definisikan alias autocmd agar fungsi di bawahnya bisa berjalan tanpa error 
local autocmd = vim.api.nvim_create_autocmd

-- Fungsi untuk menyelesaikan masalah tombol Tab yang melompat di NvChad
-- Jalankan logika pembersih snippet saat keluar dari Insert Mode
autocmd("InsertLeave", {
  callback = function()
    -- Menggunakan pcall agar aman jika luasnip belum termuat (lazy-loaded)
    local status_ok, luasnip = pcall(require, "luasnip")

    -- Pastikan luasnip ada, session aktif, dan tidak sedang dalam proses melompat (jump_active)
    if status_ok and luasnip.session and luasnip.session.current_nodes[vim.api.nvim_get_current_buf()]
      and not luasnip.session.jump_active then
        luasnip.unlink_current() -- Paksa hapus memori lompatan snippet lama
      end
  end,
})
