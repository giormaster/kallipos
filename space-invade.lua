function Image(img)
	if img.classes:find('space-invade',1)then
		local f = io.open("Mycontribution/" .. img.src, 'r')
		local doc = pandoc.read(f:read('*a'))
		f:close()
		local name = pandoc.utils.stringify(doc.meta.name)
		local am = pandoc.utils.stringify(doc.meta.id)
		local caption = pandoc.utils.stringify(doc.meta.caption)
		local content = " | -> Student Fullname:" .. name .. "\n | -> Student Identification Number:" .. am .. " | \n" .. caption 
		return pandoc.RawInline('markdown',content)
	end
end
