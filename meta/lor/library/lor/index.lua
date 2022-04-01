---@meta

---lor框架暴露出来的最重要对象， 通过调用该对象的方法和属性即可使用绝大部分lor框架提供的功能。
---@class lor
---@field version string
---@type fun():lor.App
local lor = {}

---生成一个group router对象，group router对象指一个路由组，用来在业务上聚合一组相关的路由，
---
---它具有get、post、delete、put等等HTTP方法，这些API与下文介绍的app上的get、post、delete、put等方法使用方式一致。
---@return lor.GroupRouter
function lor:Router()
end

---@return lor.Request
function lor:Request()
end

---@return lor.Response
function lor:Response()
end
return lor;