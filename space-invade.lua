function Image(img)
	if img.classes:find('space-invade',1)then
		local f = io.open("Mycontribution/" .. img.src, 'r')
		local doc = pandoc.read(f:read('*a'))
		f:close()
		local caption = pandoc.utils.stringify(doc.meta.caption)
		local name = pandoc.utils.stringify(doc.meta.name)
		local am = pandoc.utils.stringify(doc.meta.id)
		local content = "> " .. caption .. " \n>>" .. "Student Fullname:" .. name .. "\nStudent Identification Number:" ..am
		return pandoc.RawInline('markdown',content)
	end
end
