set background=light

"Font choice will depend on the OS
if has("win32")
  "Thankfully I'm not worried about this option right now.
else
  if has("unix")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
      set guifont="Monaco:h16"
    else
      set guifont="DejaVu Sans Mono:h15"
    endif
  endif

endif


set guioptions-=T
