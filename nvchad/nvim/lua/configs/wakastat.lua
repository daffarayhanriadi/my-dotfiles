require("wakastat").setup {
  args = { "--today" }, -- atau "--week", "--month"
  format = "  %s ", -- %s otomatis diganti dengan durasi waktu
  update_interval = 300, -- interval pembaruan dalam detik (5 menit)
  enable_timer = true, -- mengaktifkan timer di latar belakang
}
