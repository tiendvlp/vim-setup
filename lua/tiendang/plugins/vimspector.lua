local setup, vimspector = pcall(require, "vimspector")
if not setup then
	return
end

vimspector.setup()
