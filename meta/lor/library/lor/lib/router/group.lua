---@meta

---@class lor.GroupRouter
local GroupRouter = {}


---@param path string
---@param fn fun(req:lor.Request,res:lor.Response,next:function)
function GroupRouter:get(path, fn)
end

---@param path string
---@param fn fun(req:lor.Request,res:lor.Response,next:function)
function GroupRouter:post(path, fn)
end

---@param path string
---@param fn fun(req:lor.Request,res:lor.Response,next:function)
function GroupRouter:head(path, fn)
end

---@param path string
---@param fn fun(req:lor.Request,res:lor.Response,next:function)
function GroupRouter:options(path, fn)
end

---@param path string
---@param fn fun(req:lor.Request,res:lor.Response,next:function)
function GroupRouter:put(path, fn)
end

---@param path string
---@param fn fun(req:lor.Request,res:lor.Response,next:function)
function GroupRouter:patch(path, fn)
end

---@param path string
---@param fn fun(req:lor.Request,res:lor.Response,next:function)
function GroupRouter:delete(path, fn)
end

---@param path string
---@param fn fun(req:lor.Request,res:lor.Response,next:function)
function GroupRouter:trace(path, fn)
end

return GroupRouter;