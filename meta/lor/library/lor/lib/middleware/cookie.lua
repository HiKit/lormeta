---@meta

---@class cookieConfig
---@field key string qq
---@field value string 4==||==hello zhang==||==123456
---@field path string /
---@field domain string new.cn
---@field secure boolean 设置后浏览器只有访问https才会把cookie带过来,否则浏览器请求时不带cookie参数
---@field httponly boolean --设置后js 无法读取
---@field expires number  ngx.cookie_time(os.time() + 3600),
---@field max_age number 3600, --用秒来设置cookie的生存期。
---@field samesite string "Strict",  --或者 Lax 指a域名下收到的cookie 不能通过b域名的表单带过来
---@field extension string a4334aebaece

---@type fun(cookieConfig?:cookieConfig)
local cookie_middleware = function()
end

return cookie_middleware;