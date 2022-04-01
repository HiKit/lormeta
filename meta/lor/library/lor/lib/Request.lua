---@meta

--我们注意到有大量的地方出现了形如function(req, res, next) end的函数，
--这个函数其实就是lor框架的核心机制，也就是lor的常规插件。
---
--其中的req指的就是request对象，它包装了OpenResty收到的HTTP请求参数，
--并附带了一些方法来完成session、cookie数据交互，
--路由处理等其他后续操作。
---@class lor.Request
---@field path string 请求的uri，一般用作框架内部使用，如处理路由，解析参数，重定向请求等等，若用户不清楚修改该值会有什么影响，切勿随意更改此值。
---@field method string
---@field query table 这是一个table，指的是url解析后的query string
---@field params table 这是一个table，指的是url解析后的path variable
---@field body table 这是一个table，指的是form表单提交上来的数据
---@field body_raw string?
---@field url string
---@field origin_uri string
---@field uri string
---@field headers table<string, string|string[]> headers
---@field req_args string
---@field found boolean
local Request = {};

---用于判断uri是否被路由到，如果这个方法返回值最终为false，说明404了。
---@return boolean
function Request:is_found()
end

---@param found boolean
function Request:set_found(found)
end

return Request;