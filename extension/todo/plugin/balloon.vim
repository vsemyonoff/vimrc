if has("gui")
    function! MyBalloonExpr()
        return system("trans ". v:beval_text)
    endfunction

    set bexpr=MyBalloonExpr()
    set balloondelay=100
    set ballooneval
endif
