---@meta

--reponse对象指的是function(req, res, next) end函数中的res
---
--它包装了OpenResty处理HTTP响应的一些API，
--并附带了一些方法来完成诸如模板渲染、重定向、json返回、session/cookie处理等其他后续操作。
---@class lor.Response
---@field http_status any
---@field headers table
---@field locals table
---@field body string
---@field view any
local Response = {}

---渲染html页面，响应头Content-Type值为text/html; charset=UTF-8
---@param view_file string 模板文件路径，比如app:conf("views", "./app/views")设置了模板路径为./app/views，那么想使用模板文件./app/views/user/index.html时，这个值应为"user/index"
---@param data table 指得是模板文件渲染时需要的数据
function Response:render(view_file, data)
end

---返回内容为"content"的html，响应头Content-Type值为text/html; charset=UTF-8
---@param content string
function Response:html(content)
end

---返回内容为json格式，响应头Content-Type值为application/json; charset=utf-8
---@param data table
---@param empty_table_as_object any?
function Response:json(data, empty_table_as_object)
end

---返回内容为text，响应头Content-Type值为text/plain; charset=UTF-8
---
---text应为字符串、数字或是array等类型
---@param text string|number
function Response:send(text)
end

---@param status number
---@return lor.Response
function Response:status(status)
end

---设置响应头，即调用ngx.header[key] = value
---@param key string
---@param value any
function Response:set_header(key, value)
end

---重定向，即调用ngx.redirect(url)
---@param url string
function Response:redirect(url)
end

return Response;