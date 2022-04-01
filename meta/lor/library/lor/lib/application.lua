---@meta

---@alias appsetting
---| '"view enable"' # true 开启模板功能，默认为关闭
---| '"view engine"' # "tmpl" 配置模板引擎，当前lor只支持lua-resty-template，所以这个值暂时固定为"tmpl"
---| '"view ext"' # "html" 开模板文件后缀，用户可自由配置
---| '"views"' # "./app/views" 模板文件所在路径
---| '"strict_route"' # true 是否开启严格路由模式，默认为true, 请参见文档路由模式
---| '"ignore_case"' # true 安全参数， 允许的合法uri的分段数
---| '"max_uri_segments"' # true 安全参数， 允许的合法uri的分段数
---| '"max_fallback_depth"' # true 安全参数， 允许的合法路由回溯匹配深度

---app对象即为由lor()方法生成的对象， 用它来配置各种参数和路由。
---@class lor.App
local App = {}

---@return lor.App
function App:new()
end

function App:init(options)
end

---启动lor项目，开始接受请求并处理
function App:run(final_handler)
end

---@param setting appsetting
---@param val any
function App:conf(setting, val)
end

---用于加载一个插件(middleware)
---
---针对同一个path可以使用过该API多次来挂载多个middleware
---@param path string 插件作用的路径，可以为空，也就是说app:use可以只有一个middleware参数，这时插件作用在所有路由上
---@param middleware fun(req:lor.Request,res:lor.Response,next:function) 插件，格式为function(req, res, next) end, 对请求做预处理或者善后处理
---@overload fun(self:lor.App, middleware:fun(req:lor.Request,res:lor.Response,next:function))
function App:use(path, middleware)
end

---用于加载一个错误处理插件(middleware)
---@param path string 插件作用的路径，可以为空，也就是说app:erroruse可以只有一个middleware参数，这时插件作用在所有path上
---@param middleware fun(err:string,req:lor.Request,res:lor.Response,next:function) 插件，格式为function(err, req, res, next) end, 注意与use api不同的是这个function有4个参数.
---@overload fun(self:lor.App, middleware:fun(err:string,req:lor.Request,res:lor.Response,next:function))
function App:erroruse(path, middleware)
end

---用于生成当前应用的路由树graph, 此方法应仅在开发时使用。
function App:gen_graph()
end

App.erruse = App.erroruse;

---@param path string
---@param fn fun(req:lor.Request,res:lor.Response,next:function)
function App:get(path, fn)
end

---@param path string
---@param fn fun(req:lor.Request,res:lor.Response,next:function)
function App:post(path, fn)
end

---@param path string
---@param fn fun(req:lor.Request,res:lor.Response,next:function)
function App:head(path, fn)
end

---@param path string
---@param fn fun(req:lor.Request,res:lor.Response,next:function)
function App:options(path, fn)
end

---@param path string
---@param fn fun(req:lor.Request,res:lor.Response,next:function)
function App:put(path, fn)
end

---@param path string
---@param fn fun(req:lor.Request,res:lor.Response,next:function)
function App:patch(path, fn)
end

---@param path string
---@param fn fun(req:lor.Request,res:lor.Response,next:function)
function App:delete(path, fn)
end

---@param path string
---@param fn fun(req:lor.Request,res:lor.Response,next:function)
function App:trace(path, fn)
end

return App;