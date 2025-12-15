local abbrMap = {
  cosnt = "const",
  mian = "main",
  hlw = "hello, world.",
}

for k, v in pairs(abbrMap) do
  vim.cmd("iabbrev " .. k .. " " .. v)
end
