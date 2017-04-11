serpent = (loadfile "serpent.lua")()
tdcli = dofile('tdcli.lua')
redis = (loadfile "redis.lua")()
tabchi_id = "TABCHI-ID"

function vardump(value)
  return serpent.block(value,{comment=false})
end

function reload()
  tabchi = dofile("tabchi.lua")
end

function dl_cb (arg, data)
end

reload()

function tdcli_update_callback(data)
  tabchi.update(data, tabchi_id)
  if data.message_ and data.message_.content_.text_ and data.message_.content_.text_ == "به روز رسانی" and data.message_.sender_user_id_ == tonumber(redis:get("tabchi:" .. tabchi_id ..":fullsudo")) then
    reload()
    tdcli.sendMessage(data.message_.chat_id_, 0, 1, "🔹ربات به روز رسانی شد", 1, "md")
  elseif data.message_ and data.message_.content_.text_ and data.message_.content_.text_ == "آپدیت گیت" and data.message_.sender_user_id_ == tonumber(redis:get("tabchi:" .. tabchi_id ..":fullsudo")) then
    io.popen("git fetch --all && git reset --hard origin/master && git pull origin master"):read("*all")
    reload()
    tdcli.sendMessage(data.message_.chat_id_, 0, 1, "🔹تمامی فایل ها از گیت هاب دریافت و به روز رسانی شد\nبرای انجام تغییر به روز رسانی کنید", 1, "md")
  end
end
