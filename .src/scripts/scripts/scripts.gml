function pr(_string)
{
	show_debug_message(_string)
}

function range(_x,_r1,_r2)
{
    if _r1 > _r2
    {
        var rr1 = _r2
        var rr2 = _r1
    } 
    else
    {
        var rr1 = _r1
        var rr2 = _r2
    }
    if (_x > rr1) && (_x < rr2)
    {
        return true    
    }
    else
    {
        return false    
    }
}