Scanner = {}
Scanner.__index = Scanner

function Scanner:new()
    local obj = { buffer = {} }
    setmetatable(obj, self)
    return obj
end

-- Internal function to refill the buffer
function Scanner:refill()
    while #self.buffer == 0 do
        local line = io.read("*l")
        if line == nil then
            error("EOF reached")
        end
        for token in line:gmatch("%S+") do
            table.insert(self.buffer, token)
        end
    end
end

-- Public methods
function Scanner:nextInt()
    self:refill()
    local val = tonumber(table.remove(self.buffer, 1))
    if val == nil then error("Invalid integer token") end
    return math.floor(val)
end

function Scanner:nextDouble()
    self:refill()
    local val = tonumber(table.remove(self.buffer, 1))
    if val == nil then error("Invalid double token") end
    return val
end

function Scanner:nextLong()
    return self:nextInt()
end

function Scanner:nextWord()
    self:refill()
    local val = table.remove(self.buffer, 1)
    if val == nil then error("No word available") end
    return val
end

function Scanner:nextString()
    self:refill()
    local line = table.concat(self.buffer, " ")
    self.buffer = {}
    return line
end

function Scanner:nextIntArray(sorted)
    self:refill()
    local arr = {}
    for i = 1, #self.buffer do
        arr[i] = tonumber(self.buffer[i])
        if arr[i] == nil then error("Invalid integer in array") end
        arr[i] = math.floor(arr[i])
    end
    self.buffer = {}
    if sorted then table.sort(arr) end
    return arr
end

function Scanner:nextLongArray(sorted)
    return self:nextIntArray(sorted)
end
