os.pullEvent = os.pullEventRaw
term.clear()
term.setCursorPos(1, 1)
if fs.exists("/.DOS") == true then
    print("Are you sure you want to reinstall MC-DOS? y/n ")
  local d = read()
  if d == "yes" or "y" then
    shell.run("set shell.allow_disk_startup false")
    shell.run("set shell.autocomplete false")
    shell.run("gitget FarlandsCo MC-DOS")
    Autorun.close()
    term.clear()
    term.setCursorPos(1, 1)
    write("Enter New Username: ")
    local username = read()
    term.clear()
    term.setCursorPos(1, 1)
    write("Enter New Password: ")
    local pass = read("*")
    user = fs.open(".DOS/Username.login", "w")
    user.writeLine(username)
    user.close()
    password = fs.open(".DOS/Password.login", "w")
    password.writeLine(pass)
    password.close()
    
  else
    print("OK, We will not install MC-DOS")
  end
else
  print("Are you sure you want to install MC-DOS? y/n ")
  local d = read()
  if d == "yes" or "y" then
    shell.run("set shell.allow_disk_startup false")
    shell.run("set shell.autocomplete false")
    shell.run("gitget FarlandsCo MC-DOS")
    term.clear()
    term.setCursorPos(1, 1)
    write("Enter New Username: ")
    local username = read()
    term.clear()
    term.setCursorPos(1, 1)
    write("Enter New Password: ")
    local pass = read("*")
    user = fs.open(".DOS/Username.login", "w")
    user.writeLine(username)
    user.close()
    password = fs.open(".DOS/Password.login", "w")
    password.writeLine(pass)
    password.close()
end
end
