local command = {}

print"hello"
function command:open(args)
	print(string.format("%d %s", self, args))
end
-- 一个很贱的写法
command.open(1, "456")
