do
-- Will leave the group if be added
local function run(msg, matches)
local bot_id = 166053947
    if matches[1] == 'sik' and is_admin(msg) then
       chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
    elseif msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(bot_id) and not is_sudo(msg) then
      send_large_msg("chat#id"..msg.to.id, 'this is not one of my groups fuck you (coming soon u Globall Banned and Blocked of this bot KOSE NANAT️).', ok_cb, false)
      chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
      block_user("user#id"..msg.from.id,ok_cb,false)
    end
end
 
return {
  patterns = {
    "^[!/](sik)$",
    "^!!tgservice (.+)$",
  },
  run = run
}
end
